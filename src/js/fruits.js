jQuery(function($){
    //引入html公共部分
    $('#header').load('../html/header.html');
    $('#nav').load('../html/nav.html');
    $('#links').load('../html/links.html');
    $('#footer').load('../html/footer.html');
    $('.banner').xCarousel({
        imgs:['../img/fruit_banner1.jpg','../img/fruit_banner6.jpg','../img/fruit_banner1.jpg','../img/fruit_banner6.jpg','../img/fruit_banner1.jpg'],
        index:0,
        width:1190,
        type:'fade'
    });
    //二级菜单出现
    setTimeout(function(){
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
    },500);

    var $fruits_ul = $('.fruits_ul');
    var pageNo = 1;
    xajax.post('../api/fruits.php?qty=3&pageNo='+pageNo).then(function(res){
        var $ul = $('<ul/>');
        $ul[0].innerHTML = res.data.map(item=>{
            return `<li class="index_hot">
                    <p>
                        <span><i>￥</i>${item.price}</span>
                        <a class="price">${item.title}</a>
                    </p>
                    <p>
                    <a href="#" class="img"><img src="${item.imgurl}"></a>
                    </p>
                </li>`;
        }).join('');
        $($fruits_ul[0]).append($ul);
    });
    //新品推荐
    var fruits_list = document.querySelectorAll('#fruits_list');
    var pageNo = 2;
    fruits_Sale(0);
    //热销推荐
    var pageNo = 3;
    fruits_Sale(1);
    //优惠专区
    var pageNo = 4;
    fruits_Sale(2);
    //厂家推荐
    var pageNo = 5;
    fruits_Sale(3);
    function fruits_Sale(i){
        xajax.post('../api/fruits.php?qty=3&pageNo='+pageNo).then(function(res){
            var ul = document.createElement('ul');
            ul.innerHTML = res.data.map(item=>{
                return `<li class="index_hot">
                        <a href="#">
                            <img src="${item.imgurl}">
                        </a>
                        <span>￥${item.price}</span>
                        <a href="#">${item.title}</a>
                    </li>`;
            }).join('');
            fruits_list[i].append(ul);
        });
    }

    //所有没带价格左侧长图
    var fruits_left = document.querySelectorAll('.fruits_left');
    //新品推荐
    var pageNo = 16;
    fruits_Sale2(fruits_left[0]);
    //热销推荐
    var pageNo = 17;
    fruits_Sale2(fruits_left[1]);
    //优惠专区
    var pageNo = 18;
    fruits_Sale2(fruits_left[2]);

    //所有没带价格右侧长图
    var fruits_right = document.querySelectorAll('.right_img'); 
    //新品推荐
    var pageNo = 19;
    fruits_Sale2(fruits_right[0]);
    //热销推荐
    var pageNo = 20;
    fruits_Sale2(fruits_right[1]);
    function fruits_Sale2(val){
        xajax.post('../api/fruits.php?qty=1&pageNo='+pageNo).then(function(res){
            val.innerHTML = res.data.map(item=>{
                return `
                        <a href="#" class="img"><img class=" index_hot"src="${item.imgurl}"></a>
                     `;
            }).join('');
        });
    }
    //传参到详情页部分
    setTimeout(function(){
        var index_hot = document.querySelectorAll('.index_hot');
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
                  location.href="../html/index_goods.html?"+params;
               }
            }
        }
        xhr_wly.open('get','../api/Fruits_goods.json',true);
        xhr_wly.send();    
    },500);
    

});