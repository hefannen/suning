const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/",(req,res)=>{
	kwords=req.query.kwords
	//console.log(kwords)
	var arr=kwords.split(" ")
	for(var i=0;i<arr.length;i++){
		arr[i]=`title like '%${arr[i]}%'`
	}
	var where=" where "+arr.join(" and ")
	var output={pageSize:20}
	output.pno=req.query.pno
	var sql="select * from sn_products "
	pool.query(sql+where,(err,result)=>{
		if(err) throw err
		output.count=result.length
		output.pageCount=Math.ceil(output.count/output.pageSize)
		output.products=result.slice(output.pno*20,output.pno*20+20)
		//console.log(output.products)
		res.writeHead(200,{
			"Content-Type":"application/json;charset=utf-8",
			"Access-Control-Allow-Origin":"*"
		})
		res.write(JSON.stringify(output));
		res.end();
	})
})

module.exports=router;