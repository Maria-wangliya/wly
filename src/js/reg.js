document.addEventListener('DOMContentLoaded',function(){
    var username = document.querySelector('#username');
    var hint = document.querySelector('.hint');
    var password = document.querySelector('#password');

    // 失去焦点时把用户名传给后台
    username.onblur = function(){
        var _username = username.value;

        // 1.创建一个异步请求对象
        var xhr = new XMLHttpRequest();//readyState=0

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
    //验证密码是否合法
    
})