const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/lunbo",(req,res)=>{
	var sql="select * from sn_lunbo_pic where lpid>0"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.writeHead(200,{
			"Content-Type":"application/json;charset=utf-8",
			"Access-Control-Allow-Origin":"*"
		})
		res.write(JSON.stringify(result));
		res.end();
	})
})

router.get("/indexfirst",(req,res)=>{
	var sql="select * from sn_index_product where pid>0"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.writeHead(200,{
			"Content-Type":"application/json;charset=utf-8",
			"Access-Control-Allow-Origin":"*"
		})
		res.write(JSON.stringify(result));
		res.end();
	})
})


module.exports=router;