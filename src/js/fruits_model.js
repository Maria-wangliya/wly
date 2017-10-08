
// @配置
require.config({

    // 配置短路径（别名）
    paths:{
        jquery:'../lib/jquery-3.1.1',
        banner:'../lib/jquery-banner',
        fruits:'fruits',
        all_ajax:'../lib/all_ajax',
        fruits_ajax:'fruits_ajax'
    },

    // 配置依赖
    shim:{
        banner:['jquery'],
        fruits_ajax:['all_ajax'],
        fruits:['jquery']
    }
});

require(['jquery','banner','fruits','all_ajax','fruits_ajax'],function($,banner,fruits,all_ajax,fruits_ajax){
    fruits_ajax.fruits_ajax_fz();
});
