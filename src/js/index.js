jQuery(function($){
    $('.banner').xCarousel({
        imgs:['img/banner1.jpg','img/banner2.jpg','img/banner3.jpg','img/banner4.jpg','img/banner5.jpg'],
        index:0,
        type:'fade'
    });
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
    //吸底菜单删除
    $('#ad span').click(function(){
        $('#ad').css('display','none');
    });
  
});