jQuery(function($){
    $('.banner').xCarousel({
        imgs:['../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg'],
        index:0,
        width:1190,
        type:'fade'
    });

    //二级菜单出现
    $('.classify').on('mouseover',function(){
        $('.classify .classify_ul').css('display','block');
    }).on('mouseout',function(){
        $('.classify .classify_ul').css('display','none');
    })
    //二级菜单的hover部分
    $lis = $('.classify ul li');
    for($i=0;$i<$lis.length;$i++){
        $($lis[$i]).mouseover(function(){
           $(this).children('ul').css('display','block');
        });
        $($lis[$i]).mouseout(function(){
           $(this).children('ul').css('display','none');
        });
    }
  
});