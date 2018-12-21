const express=require("express")
const router=express.Router()
const pool=require("../pool.js")

router.post("/signin",(req,res)=>{
	var uname=req.body.uname
	var upwd=req.body.upwd
	var sql="select uid from sn_user where (uname=? or phone=?) and upwd=?"
	pool.query(sql,[uname,uname,upwd],(err,result)=>{
		if(err) throw err
		if(result.length>0){
			req.session.uid=result[0].uid
			var obj={code:1,msg:"登录成功"}
		}else{
			var obj={code:-1,msg:"用户名或密码错误"}
		}
		res.writeHead(200,{
	    "Content-Type":"application/json;charset=utf-8",
	    "Access-Control-Allow-Origin":"*"
		})
		res.write(JSON.stringify(obj));
		res.end();
	})
})

router.get("/islogin",(req,res)=>{
	if(req.session.uid===undefined){
		obj={ok:0}
		res.writeHead(200,{
			"Content-Type":"application/json;charset=utf-8",
			"Access-Control-Allow-Origin":"*"
		})
		res.write(JSON.stringify(obj));
		res.end();
	}else{
		var uid=req.session.uid
		var sql="select uname from sn_user where uid=?"
		pool.query(sql,[uid],(err,result)=>{
			if(err) throw err
			var uname=result[0].uname
			obj={ok:1,uname}
			res.writeHead(200,{
				"Content-Type":"application/json;charset-utf-8",
				"Access-Control-Allow-Origin":"*"
			})
			res.write(JSON.stringify(obj))
			res.end();
		})
	}
})

router.get("/signout",(req,res)=>{
	req.session.uid=undefined
	res.send()
})

module.exports=router