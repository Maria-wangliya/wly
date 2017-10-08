document.addEventListener('DOMContentLoaded',function(){
    var username = document.querySelector('#username');
    var password = document.querySelector('#password');
    var onBtn = document.querySelector('#onBtn');
    var code = document.querySelector('#code');
    var code_num = document.querySelector('.code_num');
    //验证码
    function yanzhengma(num){
    if(num === undefined){
        num = 4;
    }
    var arr = 'abcdefghijklmnopqrstuvwxyz0123456789'.split('');
    // 循环获取验证码
    var res = '';
    for(var i=0;i<num;i++){
        var idx = parseInt(Math.random()*arr.length);
        res += arr[idx];
    }
    return res;
    }
    var res = yanzhengma();
    code_num.value = res;
    onBtn.onclick = function(){
        var _username = username.value;
        var _password = password.value;
        if(_username == ''){
            alert('请您填写用户名');
            return;
        }else if(_password == ''){
            alert('请您输入密码');
            return;
        }else if(code.value == ''){
            alert('请输入验证码');
            return;
        }else if(code.value !== res){
            alert('验证码错误');
            return;
        }
        // 1.创建一个异步请求对象
        var xhr = new XMLHttpRequest();//readyState=0
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                console.log(xhr.responseText);
                if(xhr.responseText == 'ok'){
                    alert('登录成功');
                    location.reload();
                }else if(xhr.responseText == 'fail'){
                    alert('您还未注册');
                }
            }
        }
        // 4.处理返回数据
        xhr.open('get','../api/login.php?username='+_username+'&password='+_password,true);
        // 3.发送请求
        xhr.send();
    }
        
})