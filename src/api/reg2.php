<?php
    include 'connect.php';
    $username = isset($_GET['username']) ? $_GET['username'] : '';
    $password = isset($_GET['password']) ? $_GET['password'] : '123456';
    $certain_password = isset($_GET['certain_password']) ? $_GET['certain_password'] : '123456';
    //查看用户名是否已经存在
    $sql = "select username from register where username='$username'";
    $result = $conn->query($sql);
    if($result->num_rows>0){
        echo "fail";
    }else{
        // 密码md5加密
        // $password = md5($password);
        // $certain_password = md5($certain_password);

        $sql = "insert into register(username,password,certain_password) 
        values('$username','$password','$certain_password')";

        // 获取查询结果
        $result = $conn->query($sql);

        if($result){
            echo "ok";
        }else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    //关闭连接
    $conn->close();
?>