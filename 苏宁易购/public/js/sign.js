$(function(){
	var $phone=$(".box>div:nth-child(2)>input")
	var $num=$(".box>div:nth-child(4)>input")
	var $pwd=$(".box>div:nth-child(6)>input")
	var $cap=$(".box>div:nth-child(4)>a")
	var $btn=$(".box>a")
	var cap=0
	var phone_code=0
	var num_code=0
	var pwd_code=0
	$phone.blur(function(){
		console.log($(this).val())
		var reg_phone=/^1[34578]\d{9}$/
		if(!(reg_phone.test($(this).val()))){
			$("#phone_err").css("display","block")
			phone_code=0
			console.log(phone_code)
		}else{
			var phone=$phone.val()
			$.ajax({
				url:"http://127.0.0.1:3000/sign/hasphone",
				type:"post",
				data:{phone},
				dataType:"JSON",
				success:function(obj){
					if(obj.code==0){
						alert(obj.msg)
						phone_code=0
						console.log(phone_code)
					}else{
						phone_code=1
						console.log(phone_code)
					}
				}
			})
		}
	})

	$phone.focus(function(){
		$("#phone_err").css("display","none")
	})
	$cap.click(function(e){
		e.preventDefault()
		cap=Math.floor(Math.random()*1000000)
		//console.log(num)
		alert(cap)
		console.log("1"+cap)
	})

	$num.blur(function(event){
		console.log(cap)
		if($(this).val()!=cap){
			$("#num_err").css("display","block")
			num_code=0
			console.log(num_code)
		}else{
			$("#num_err").css("display","none")
			num_code=1
			console.log(num_code)
		}
	})
	$num.focus(function(){
		$("#num_err").css("display","none")
	})

	$pwd.blur(function(){
		var reg_pwd=/^[a-zA-Z0-9]{6,18}$/
		if($(this).val()==""){
			$("#pwd_err").css("display","none")
			$("#pwd_sug").css("display","none")
			pwd_code=0
		}else if(!(reg_pwd.test($(this).val()))){
			$("#pwd_err").css("display","block")
			$("#pwd_sug").css("display","none")
			pwd_code=0
			console.log(pwd_code)
		}else{
			$("#pwd_err").css("display","none")
			$("#pwd_sug").css("display","none")
			pwd_code=1
			console.log(pwd_code)
		}
	})
	$pwd.focus(function(){
		$("#pwd_err").css("display","none")
		$("#pwd_sug").css("display","block")
	})
	$btn.click(function(e){
		e.preventDefault()
		var phone=$phone.val()
		var pwd=$pwd.val()
		if(phone_code && num_code && pwd_code){
			$.ajax({
				url:"http://127.0.0.1:3000/sign/register",
				type:"post",
				data:{phone,pwd},
				dataType:"JSON",
				success:function(obj){
					if(obj.code==0){
						alert(obj.msg)
					}else{
						alert(obj.msg)
						setTimeout(function(){location.href="login.html"},1500)
					}
				}
			})
		}else{
			alert("错误")
		}
	})
})