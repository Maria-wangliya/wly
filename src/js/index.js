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

    $hotlist = $('.hotlist');
    // 当前ul
    var $pageNo = 1;
    // 每个ul显示数量
    xajax.post('api/index_hotSale.php?pageNo='+$pageNo).then(function(res){
        var $ul = $('<ul/>');
        $ul[0].innerHTML = res.data.map(item=>{
            return `<li class="index_hot">
                    <p>${item.left_time}</p>
                    <img src="${item.imgurl}">
                    <p class="title"><a href="#">${item.title}</a></p>
                    <p class="price">￥${item.price}</p>
                </li>`;
        }).join('');
        $($hotlist[0]).append($ul);
    });
    var $pageNo = 2;
    // 每个ul显示数量
    xajax.post('api/index_hotSale.php?pageNo='+$pageNo).then(function(res){
        var $ul = $('<ul/>');
        $ul[0].innerHTML = res.data.map(item=>{
            return `<li class="index_hot">
                    <img src="${item.imgurl}">
                    <p class="title"><a href="#">${item.title}</a></p>
                    <p class="price">￥${item.price}</p>
                    <p class="sale">${item.hot}</p>

                    </li>`;
        }).join('');
        $($hotlist[1]).append($ul);
    });
    var $pageNo = 3;
    hotSale(2);

    var $pageNo = 4;
    hotSale(3);

    var $pageNo = 5;
    hotSale(4);

    var $pageNo = 6;
    hotSale(5);
    // var qty = 4;
    // 每个ul显示数量
    function hotSale(i){
        xajax.post('api/index_hotSale.php?qty=6&pageNo='+$pageNo).then(function(res){
                $ul = $('<ul/>');
                $ul[0].innerHTML = res.data.map(item=>{
                    return `<li class="index_hot">
                                <img src="${item.imgurl}">
                                <p class="title"><a href="#">${item.title}</a></p>
                                <p class="price">￥${item.price}</p>
                            </li>`;
                }).join('');
                $($hotlist[i]).append($ul);
        });
    }    
    //删除页面中没有内容的a便签
    $a = $('.clothes .left ul a');
    for($i=0;$i<$a.length;$i++){
        if($a[$i].innerText == ''){
            $a[$i].parentNode.removeChild($a[$i]);
        }
    }
    //展示左侧图片
    var $img_hot = $('.img_hot');
    var pageNo = 37;
    hotSale_left(0);
    var pageNo = 38;
    hotSale_left(1);
    var pageNo = 39;
    hotSale_left(2);
    var pageNo = 40;
    hotSale_left(3);
    var pageNo = 41;
    hotSale_left(4);
    var pageNo = 42;
    hotSale_left(5);
    var pageNo = 43;
    hotSale_left(6);
    var pageNo = 44;
    hotSale_left(7);
    var pageNo = 45;
    hotSale_left(8);
    var pageNo = 46;
    hotSale_left(9);
    function hotSale_left(i){
        xajax.post('api/index_hotSale.php?qty=1&pageNo='+pageNo).then(function(res){
            var $a = $('<a/>');
            $a[0].innerHTML = res.data.map(item=>{
                return `
                    <img class="index_hot" src="${item.imgurl}">
                    `;
            }).join('');
            $($img_hot[i]).append($a);
        });
    }   
    //广告位的图片
    var $long_ad = $('.ad');
    var pageNo = 47;
    xajax.post('api/index_hotSale.php?qty=1&pageNo='+pageNo).then(function(res){
            $long_ad[0].innerHTML = res.data.map(item=>{
                return `
                    <img src="${item.imgurl}">
                    `;
            }).join(''); 
    });
    setTimeout(function(){
        var index_hot = document.querySelectorAll('.index_hot');
        //获取商品信息
        var xhr_wly = new XMLHttpRequest();
        xhr_wly.onreadystatechange = function(){
            if(xhr_wly.readyState == 4){
                var goodslist = JSON.parse(xhr_wly.responseText);
                for(let i=0;i<index_hot.length;i++){
                    index_hot[i].setAttribute('data-guid',i+1);
                    index_hot[i].onclick = function(){
                        data = goodslist[i];
                        xiangqingye();
                        var currentGUID = this.getAttribute('data-guid');

                        // 根据id获取整个商品的信息
                        var currentGoods = goodslist.filter(function(item){
                            return item.id === currentGUID;
                        })[0];

                        // 把当前商品写入cookie
                        var now = new Date();
                        now.setDate(now.getDate()+7);
                        document.cookie = 'currentGoods=' + JSON.stringify(currentGoods) + ';expires=' + now;
                    }
                }
                function xiangqingye(){
                  var params='';
                  // 对象遍历
                  for(var attr in data){
                     params +=attr+'='+data[attr]+'&';
                  }
                  // 删除多余的&
                  params=params.slice(0,-1);
                  location.href="html/index_goods.html?"+params;
               }
            }
        }
        xhr_wly.open('get','api/index_goods.json',true);
        xhr_wly.send();   
    },500);
});