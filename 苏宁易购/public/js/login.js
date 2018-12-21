$(function(){
	$("#uname").blur(function(){
		if($(this).val()==""){
			$(".unameMiss").addClass("show").html("用户名不能为空！")
		}else{
			$(".unameMiss").removeClass("show")
			reg=/^[0-9A-Za-z]{6,18}$/;	
			var str=$(this).val()
			if(!reg.test(str)){
				$(".unameMiss").addClass("show").html("格式错误，请重新输入！")
			}else{
				$(".unameMiss").removeClass("show")	
			}
		}
	})
	
	$("#upwd").blur(function(){
		if($(this).val()==""){
			$(".upwdMiss").addClass("show").html("密码不能为空！")
		}else{
			$(".upwdMiss").removeClass("show")
			reg=/^[1-9a-zA-Z]{6,18}$/
			var str=$(this).val()
			if(!reg.test(str)){
				$(".upwdMiss").addClass("show").html("格式错误，请重新输入")
			}else{
				$(".upwdMiss").removeClass("show")	
			}
		}
	})
	
	var btn=$(".login>div:nth-child(2)>form>a")
	btn.click(function(e){
		e.preventDefault();
		var uname=$("#uname").val()
		var upwd=$("#upwd").val()
		$.ajax({
			url:"http://127.0.0.1:3000/login/signin",
			type:"post",
			data:{uname,upwd},
			dataType:"JSON",
			success:function(obj){
				if(obj.code==1){
					alert("登录成功")
					if(location.search.startsWith("?back=")){
						var url=location.search.slice(6)
					}else{
						var url="index.html"	
					}
					location.href=url
				}else{
					alert("用户名或密码错误")	
				}
			}
		})
	})
})