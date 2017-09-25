<?php
    // post请求
    $pageNo = isset($_REQUEST['pageNo']) ? $_REQUEST['pageNo'] : 1;
    $qty = isset($_REQUEST['qty']) ? $_REQUEST['qty'] : 4; 

    $file_path = 'data/hotSale_all.json';

    $file = fopen($file_path, 'r');

    $content = fread($file, filesize($file_path));

    // 把json字符串转成数组
    $arr = json_decode($content);


    // 设置返回数据信息
    // * 总数total
    // * 数据data
    // * 分页page
    // * 每页数量qty
    $res = array(
        'data' => array_slice($arr, ($pageNo-1)*$qty,$qty), 
        'total' => count($arr),
        'pageNo' => $pageNo,
        'qty' => $qty
    );
    // 把相应的数据传给前端
    echo json_encode($res,JSON_UNESCAPED_UNICODE);

?>