/*---------轮播--------------*/
function task(){
	var $show=$(".show");
	$show.removeClass("show");
	if($show.next().length==0){
		var next=$show.parent().children("img:first-child");
		var index=0;
	}else{
		var next=$show.next();
		var index=$show.index()+1;
	}
	next.addClass("show");
	$("ul.circle").children(":eq("+index+")").addClass("active").siblings().removeClass("active");
}
var timer=setInterval(task,2000);
var lunbotu=$(".lunbotu");
lunbotu.mouseover(function(){
	clearInterval(timer);
	timer=null;
})
lunbotu.mouseout(function(){
	timer=setInterval(task,2000);
})

var aLeft=$(".left"),aRight=$(".right");
aLeft.click(function(){
	task();
})
aRight.click(function(){
	var $show=$(".show");
	$show.removeClass("show");
	if($show.prev().length==0)
	{
		var prev=$show.parent().children("img:last-child");
		var index=$("#slider>img").length-1;
	}else{
		var prev=$show.prev();
		var index=$show.index()-1;
		console.log($show.index());
	}
	prev.addClass("show");
	$("ul.circle").children(":eq("+index+")").addClass("active").siblings().removeClass("active");
})
var $ul=$("ul.circle")
var $img=$(".slider")
$ul.on("click","li",function(){
	var i=$(this).index()
	$img.children(":eq("+i+")").addClass("show").siblings().removeClass("show")
	$ul.children(":eq("+i+")").addClass("active").siblings().removeClass("active")
}) 

/*---------楼层滚动-------------*/
var $navbar=$(".navbar")
var $floor=$(".floor")
$(window).scroll(function(){
	var gunTop=$(window).scrollTop()
	if(gunTop>=138){
		$navbar.show()
		$floor.each(function(i,f){
			var $f=$(f)
			var offsetTop=$f.offset().top
			if(offsetTop<=gunTop+innerHeight/2){
				$navbar.children(".item:eq("+i+")").addClass("hover").siblings().removeClass("hover")
			}
		})
	}else{
		$navbar.hide()	
	}
})

$navbar.on("click",".item",function(e){
	e.preventDefault()
	var i=$(this).index();
	var offsetTop=$($floor[i]).offset().top-200;
	$("html").stop(true).animate({scrollTop:offsetTop},200)
})


$(function(){
	$.ajax({
		url:"http://127.0.0.1:3000/index/lunbo",
		type:"get",
		dataType:"JSON",
		success:function(res){
			var html=""
			var {add}=res[0]
			html+=`<img src="${add}" class="show">`
			for(p of res.slice(-3)){
				var {add}=p
				html+=`<img src="${add}">`
			}
			var slider=$(".slider")
			slider.html(html)
		}
	})

	$.ajax({
		url:"http://127.0.0.1:3000/index/indexfirst",
		type:"get",
		dataType:"JSON",
		success:function(res){
			var html=""
			var {title,manjian,img}=res[0]
			html+=`<td rowspan=2 class="lc_td1">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[1]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:first-child>table>tbody>tr")
			tr.html(html)

			var html=""
			var {title,manjian,img}=res[2]
			html=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
								<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:first-child>table>tbody>tr:nth-child(2)")
			tr.html(html)
			
			var html=""
			var {title,manjian,img}=res[3]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[4]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:first-child>table>tbody>tr:nth-child(3)")
			tr.html(html)
			
			var html=""
			var {title,manjian,img}=res[5]
			html+=`<td rowspan=2 class="lc_td1">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[6]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(2)>table>tbody>tr:first-child")
			tr.html(html)

			var html=""
			var {title,manjian,img}=res[7]
			html=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
								<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(2)>table>tbody>tr:nth-child(2)")
			tr.html(html)
			
			var html=""
			var {title,manjian,img}=res[8]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[9]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(2)>table>tbody>tr:nth-child(3)")
			tr.html(html)

			var html=""
			var {title,manjian,img}=res[10]
			html+=`<td rowspan=2 class="lc_td1">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[11]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(3)>table>tbody>tr:first-child")
			tr.html(html)

			var html=""
			var {title,manjian,img}=res[12]
			html=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
								<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(3)>table>tbody>tr:nth-child(2)")
			tr.html(html)
			
			var html=""
			var {title,manjian,img}=res[13]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var {title,manjian,img}=res[14]
			html+=`<td class="lc_td2">
								<a href="#">
									<p>${title}</p>
									<p>${manjian}</p>
									<img src="${img}" alt="#">
								</a>
							</td>`
			var tr=$(".lc_first>ul>li:nth-child(3)>table>tbody>tr:nth-child(3)")
			tr.html(html)

			var html=""
			for(p of res.slice(-3)){
				var {title,manjian,img}=p
				html+=`<li>
					<a href="#">
						<div>
							<p></p>
							<h2>${title}</h2>
							<p></p>
							<p>${manjian}</p>
							<img src="${img}" alt="#">
						</div>
					</a>
				</li>`
			}
			var ul=$(".lc_second>ul")
			ul.html(html)
		}
	})
	
})