<?php
     // 引入其他文件
    include 'connect.php';
    $pageNo = isset($_REQUEST['pageNo']) ? $_REQUEST['pageNo'] : 1;
    $qty = isset($_REQUEST['qty']) ? $_REQUEST['qty'] : 4; 

    // 编写查询sql语句
    $sql = 'select * from TV_Show';

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
    // post请求
    // $pageNo = isset($_REQUEST['pageNo']) ? $_REQUEST['pageNo'] : 1;
    // $qty = isset($_REQUEST['qty']) ? $_REQUEST['qty'] : 4; 

    // $file_path = 'TV_Show.json';

    // $file = fopen($file_path, 'r');

    // $content = fread($file, filesize($file_path));

    // // 把json字符串转成数组
    // $arr = json_decode($content);


    // // 设置返回数据信息
    // // * 总数total
    // // * 数据data
    // // * 分页page
    // // * 每页数量qty
    // $res = array(
    //     'data' => array_slice($arr, ($pageNo-1)*$qty,$qty), 
    //     'total' => count($arr),
    //     'pageNo' => $pageNo,
    //     'qty' => $qty
    // );
    // // 把相应的数据传给前端
    // echo json_encode($res,JSON_UNESCAPED_UNICODE);

?>