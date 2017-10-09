
// @配置
require.config({

    // 配置短路径（别名）
    paths:{
        jquery:'../lib/jquery-3.1.1',
        banner:'../lib/jquery-banner',
        index_goods:'index_goods',
        get_history_cookie:'get_history_cookie',
        animate:'animate',
        xzoom:'../lib/xzoom'
    },

    // 配置依赖
    shim:{
        banner:['jquery'],
        index_goods:['xzoom']
    }
});

require(['jquery','banner','index_goods','get_history_cookie','animate','xzoom'],function($,banner,index_goods,get_history_cookie,animate,xzoom){
    index_goods.index_goods_fz();
});
