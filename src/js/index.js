jQuery(function($){
    //引入html公共部分
    $('#header').load('html/header.html');
    $('#search').load('html/search.html');
    $('#nav').load('html/index_nav.html');
    $('#links').load('html/links.html');
    $('#footer').load('html/footer.html');

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