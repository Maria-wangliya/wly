
// @配置
require.config({

    // 配置短路径（别名）
    paths:{
        jquery:'../lib/jquery-3.1.1',
        all_ajax:'../lib/all_ajax',
        TV_Show:'TV_Show'
    },

    // 配置依赖
    shim:{
        TV_Show:['all_ajax','jquery']
    }
});

require(['jquery','all_ajax','TV_Show'],function($,all_ajax,TV_Show){
    TV_Show.TV_Show_fz();
});
