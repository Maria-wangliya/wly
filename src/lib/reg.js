document.addEventListener('DOMContentLoaded',function(){
    var username = document.querySelector('#username');
    var tips = username.nextElementSibling;
    var password = document.querySelector('#password');

    // 失去焦点时把用户名传给后台
    username.onblur = function(){
        var _username = username.value;

        // 1.创建一个异步请求对象
        var xhr = new XMLHttpRequest();//readyState=0

        // 4.处理返回数据
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                if(xhr.responseText === 'yes'){
                    tips.className = 'success';
                    tips.innerHTML = `恭喜你，${_username}可以注册`;
                }else if(xhr.responseText === 'no'){
                    tips.className = 'error';
                    tips.innerHTML = `${_username}太受欢迎，请换一个`;
                }
            }
            
        }

        // 2.配置参数，建立与服务器的连接
        // 数据请求地址（api）
        // xhr.open('get','http://localhost:1705/api/reg.php?username='+_username,true);//readyState=1
        xhr.open('get','../api/reg.php?username='+_username,true);
        // 3.发送请求
        xhr.send();//readyState=2

    }
})