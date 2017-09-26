<?php
    // 引入其他文件
    include 'connect.php';
    $pageNo = isset($_REQUEST['pageNo']) ? $_REQUEST['pageNo'] : 1;
    $qty = isset($_REQUEST['qty']) ? $_REQUEST['qty'] : 4; 

    // 编写查询sql语句
    $sql = 'select * from fruits';

    // 利用sql语句查询数据库
    // 查询结果集
    $result = $conn->query($sql);
    // 使用查询结果集
    $row = $result->fetch_all(MYSQLI_ASSOC);

    $content = json_encode($row,JSON_UNESCAPED_UNICODE);
    $arr = json_decode($content);
    $res = array(
        'data' => array_slice($arr, ($pageNo-1)*$qty,$qty), 
        'total' => count($arr),
        'pageNo' => $pageNo,
        'qty' => $qty
    );
    // 把相应的数据传给前端
    echo json_encode($res,JSON_UNESCAPED_UNICODE);
?>