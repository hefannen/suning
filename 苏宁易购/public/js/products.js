$(function(){
	if(location.search.indexOf("kwords=")!=-1){
		var kwords=decodeURI(location.search.split("=")[1])
		var pno=0
		function loadPage(no=0){
			pno=no
			$.ajax({
				url:"http://127.0.0.1:3000/products",
				type:"get",
				data:{kwords,pno},
				dataType:"JSON",
				success:function(output){
					console.log(output)
					var {products,pageCount}=output
					var html=""
					for(var p of products){
						var {title,price,href}=p
						html+=`<li>
							<div>
								<img src="${href}" alt="">
								<p><span>¥</span>${price}<span>.00</span></p>
								<p><a href="#">${title}</a></p>
								<div>
									<a href="#">对比</a>
									<a href="#">收藏</a>
									<a href="#">加入购物车</a>
								</div>
							</div>
						</li>`
					}
					ul.html(html)
					
					var html="";
					for(var i=1;i<=pageCount;i++)
						html+=`<li class="${i==pno+1?'active':''}"><a href="">${i}</a></li>`
					$ul.children(":not(:first-child):not(:last-child)").remove()
					$ul.children().first().after(html)
					if(pno==0){
						$ul.children().first().addClass("disabled")
					}else{
						$ul.children().first().removeClass("disabled")		
					}
					if(pno==pageCount-1){
						$ul.children().last().addClass("disabled")
					}else{
						$ul.children().last().removeClass("disabled")	
					}
			
				}
			})
		}
		loadPage()
		var ul=$(".products ul:nth-child(2)")
		var $ul=ul.next().children("ul")

		$ul.on("click","a",function(e){
			e.preventDefault()
			var $a=$(this)
			if(!$a.parent().is(".disabled,.active")){
				if($a.parent().is(":first-child")){
					var no=pno-1
				}else if($a.parent().is(":last-child")){
					var no=pno+1
				}else{
					var no=$a.html()-1	
				}
				loadPage(no)
			}
		})

	}
})

