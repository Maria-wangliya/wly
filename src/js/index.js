jQuery(function($){
    $('.banner').xCarousel({
        imgs:['img/banner1.jpg','img/banner2.jpg','img/banner3.jpg','img/banner4.jpg','img/banner5.jpg'],
        index:0,
        type:'fade'
    });
    console.log($('.classify ul li'));
    for($i=0;$i<$('.classify ul li').length;$i++){
        console.log(666);
    }
});