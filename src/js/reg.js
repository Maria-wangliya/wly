document.addEventListener('DOMContentLoaded',function(){
    var username = document.querySelector('#username');
    var hint = document.querySelector('.hint');
    var password = document.querySelector('#password');
    var certain_password = document.querySelector('#certain_password');
    var onBtn = document.querySelector('.onBtn');
    
    // 失去焦点时把用户名传给后台
    username.onblur = function(){
        var _username = username.value;
        // 1.创建一个异步请求对象
        var xhr = new XMLHttpRequest();
        // 4.处理返回数据
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                console.log(xhr.responseText);
                if(xhr.responseText == 'ok'){
                    hint.className = 'hint';
                    hint.innerText = `恭喜你，${_username}可以注册`;
                }else if(xhr.responseText == 'fail'){
                    hint.className = 'change';
                    hint.innerText = `${_username}太受欢迎啦，请换一个`;
                }
            }
        }
        xhr.open('get','../api/reg.php?username='+_username,true);
        // 3.发送请求
        xhr.send();
    }
    var check = document.querySelector('.check').firstElementChild;
    onBtn.onclick = function(){
        var _username = username.value;
        var _password = password.value;
        var _certain_password = certain_password.value;
        //验证非空
        if(_username == '' || _password == '' || _certain_password == ''){
            alert('请完整填入信息');
            return;
        }
        console.log(_password);
        // 1.创建一个异步请求对象
        var xhr = new XMLHttpRequest();//readyState=0
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                if(xhr.responseText == 'ok'){
                    console.log('ok');
                }else if(xhr.responseText == 'fail'){
                    console.log('fail');
                }
            }
        }
        // 4.处理返回数据
        xhr.open('get','../api/reg2.php?username='+_username+'&password='+_password+'&certain_password='+_certain_password,true);
        // 3.发送请求
        xhr.send();
        
        //验证用户密码
        if(!check.checked){
            alert('您并不同意条款，抱歉无法注册');
            return;
        }
        if(_certain_password == _password){
            alert('注册成功');
            location.reload();
            return;
        }else{
            alert('密码有误或两次输入不一致');
            return;
        }
        
    }
})