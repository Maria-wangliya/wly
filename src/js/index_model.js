
// @配置
require.config({

    // 配置短路径（别名）
    paths:{
        jquery:'../lib/jquery-3.1.1',
        banner:'../lib/jquery-banner',
        index:'index',
        all_ajax:'../lib/all_ajax',
        index_hotSale:'index_hotSale'
    },

    // 配置依赖
    shim:{
        banner:['jquery'],
        index_hotSale:['all_ajax'],
        index:['jquery']
    }
});

require(['jquery','banner','index','all_ajax','index_hotSale'],function($,banner,index,all_ajax,index_hotSale){
    index_hotSale.index_hotSale_fz();
});
