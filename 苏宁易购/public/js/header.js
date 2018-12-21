$(function(){
	$("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
	$.ajax({
		url:"http://127.0.0.1:3000/header.html",
		type:"get",
		success:function(res){
			$("#header").replaceWith(res);
			//1查找触发事件元素
			var input=$(".ssk>input")
			var btn=input.next()
			//2绑定事件
			btn.click(function(){
				var kw=input.val().trim()
				if(kw!="")
				location.href=`products.html?kwords=${kw}`
			})
			input.keyup(function(e){
				if(e.keyCode==13)
					{btn.click()}			
			})
			
			if(location.search.indexOf("kwords")!=-1){
				var kwords=decodeURI(location.search.split("=")[1])
			}
			input.val(kwords)



			var login=$("div.login>a:first-child")
			login.click(function(){
				location.href="login.html?back="+location.href
			})

			$.ajax({
				url:"http://127.0.0.1:3000/login/islogin",
				type:"get",
				dataType:"json",
				success:function(obj){
					var login=$(".plogin"),sign=$(".sign"),welcome=$(".welcome"),signout=$(".signout")
					if(obj.ok!=0){
						login.hide()
						sign.hide()
						welcome.removeClass("none").html(`欢迎${obj.uname}`)
						signout.removeClass("none")
					}
				}
			})

			$(".signout").click(function(e){
				e.preventDefault();
				$.ajax({
					url:"http://127.0.0.1:3000/login/signout",
					type:"get",
					success:function(){
						location.reload()
					}
				})
			})
		}
	})	
})