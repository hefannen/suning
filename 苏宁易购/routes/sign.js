const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.post("/hasphone",(req,res)=>{
    var phone=req.body.phone
    var sql="select * from sn_user where phone=?"
    pool.query(sql,[phone],(err,result)=>{
        if(err) throw err
        if(result.length>0){
            var obj={code:0,msg:"该手机已注册"}
        }else{
            var obj={code:1,msg:"该手机可以注册"}
        }
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(obj));
	    res.end();
    })
})


router.post("/register",(req,res)=>{
    var phone=req.body.phone
    var pwd=req.body.pwd
    var sql="insert into sn_user (phone,upwd) values (?,?)"
    pool.query(sql,[phone,pwd],(err,result)=>{
        if(result.affectedRows==1){
            var obj={code:1,msg:"注册成功"}
        }else{
            var obj={code:0,msg:"注册失败"}
        }
        res.writeHead(200,{
        "Content-Type":"application/json;charset=utf-8",
        "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(obj));
        res.end();  
    })    
})

module.exports=router