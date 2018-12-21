const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.post("/signin",(req,res)=>{
	var uname=req.query.uname
	var upwd=req.query.upwd
	var sql="select * from sn_user where uname=? and upwd=?"
	pool.query(sql,[uname,upwd],(err,res)=>{
		if(err) throw err
		if(result.length>0){
			res.writeHead(200)
			req.session.uid=user.uid
			res.write(JSON.stringity({ok:1}))
		}else{
			res.write(JSON.stringity({ok:0,msg:"用户名或密码错误！"}))	
		}
		res.end()
	})
})

module.exports=router;