require.config({
    // 配置短路径（别名）
    paths:{
        jquery:'../lib/jquery-3.1.1',
        banner:'lib/jquery-banner',
        index:'js/index.js',
        index_ajax:'lib/index_ajax',
        index_hotSale:'js/index_hotSale'
    },
    // 配置依赖
    shim:{
        // xcarousel依赖jquery
        banner:['jquery'],
        index:['jquery'],
        index_hotSale:['index_ajax']
    }
});