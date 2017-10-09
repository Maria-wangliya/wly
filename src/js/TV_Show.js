define(['jquery'],function($){
    return {
        TV_Show_fz:function(){
            //引入html公共部分
            $('#header').load('../html/header.html');
            $('#search').load('../html/search.html');
            $('#nav').load('../html/nav.html');
            $('#links').load('../html/links.html');
            $('#footer').load('../html/footer.html');
            var goodsList = document.querySelector('.goodsList');
            var playList = document.querySelector('.playList');
            var right = document.querySelector('.right');
            var txt_input= document.querySelectorAll('.txt_input');
            var date_start= document.querySelector('.date_start');
            var date_start2= document.querySelector('.date_start2');

            //二级菜单出现
            setTimeout(function(){
                $('.classify_ul').css('display','none')
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
            // 当前ul
            var pageNo = 1;
            // 每个ul显示数量
            xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                var ul = document.createElement('ul');
                ul.innerHTML = res.data.map(item=>{
                    return `<li class="index_hot">
                            <img src="${item.imgurl}">
                            <a href="#">${item.title}</a>
                            <span class="price">￥${item.price}</span>
                            <button>加入购物车</button>
                        </li>`;
                }).join('');
                goodsList.appendChild(ul);
                var page = document.createElement('div');
                page.className = 'page';
                page.innerHTML = `
                    <span><</span>
                    <span>1</span>
                    <span>2</span>
                    <span>3</span>
                    <span>4</span>
                    <span>></span>
                `;
                goodsList.appendChild(page);
            });
            // 点击分页获取相应信息---底部的分页
            setTimeout(function(){
                var page = document.querySelector('.page');
                var ul = document.querySelector('.goodsList ul');
                var span_page = page.children;
                for(let i=0;i<span_page.length;i++){
                    span_page[1].className = 'active';
                    span_page[i].onclick = function(e){
                        span_page[i].className = 'active';
                        pageNo = span_page[i].innerText;
                        xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                        ul.innerHTML = res.data.map(item=>{
                            return `<li class="index_hot">
                                    <img src="${item.imgurl}">
                                    <a href="#">${item.title}</a>
                                    <span class="price">￥${item.price}</span>
                                    <button>加入购物车</button>
                                </li>`;
                            }).join('');
                        });
                        for(var j=0;j<span_page.length;j++){
                            if(j==i){
                                span_page[j].className = 'active';
                                span_page[0].className = '';

                            }else{
                                span_page[j].className = '';
                                span_page[0].className = '';
                            }
                        }
                    }
                }
            },500)
            //直播列表
            var pageNo = 1;
            xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                var ul = document.createElement('ul');
                ul.className = 'play_ul';
                ul.innerHTML = res.data.map(item=>{
                    return `<li>
                        <a href="#"><span class="time">${item.time}</span><span class="title">${item.title}</span><a>
                            </li>`;
                }).join('');
                playList.appendChild(ul);
            });
            setTimeout(function(){
                //直播列表
                var playItems = document.querySelectorAll('.playList ul li');
                for(let i=0;i<playItems.length;i++){
                    var li_div = document.createElement('div');
                    playItems[i].onmouseover = function(){
                        var time = document.querySelectorAll('.play_ul li .time');
                        var title = document.querySelectorAll('.play_ul li .title');
                        var price = document.querySelectorAll('.price');
                        li_div.innerHTML =`
                            <div>
                                <span>${time[i].innerHTML}</span><span>正在直播</span>
                            </div>
                            <div>
                                <img src="../img/play${i+1}.jpg">
                            </div>
                            <div>
                                <a href="#">${title[i].innerHTML}</a><span>${price[i].innerHTML}</span>
                                <button>加入购物车</button>
                            </div>
                        `;
                        this.appendChild(li_div);
                        this.lastElementChild.style.height = 120 +'px';
                        this.lastElementChild.className = 'li_div';
                    }
                    playItems[i].onmouseout = function(){
                        this.lastElementChild.style.height = 0 +'px';
                        this.lastElementChild.className = 'li_white';
                    }
                }
            },500);
            
            right.innerHTML = `
                <p>正在直播 LIVE</p>
                <p><img src="../img/play_right.jpg"/></p>
                <p><a href="#">茅台集团庆典贵宾用酒V20</a></p>
                <span>￥398.00</span>
            `;  

            for(let i=0;i<txt_input.length;i++){
                txt_input[i].onclick = function(){
                    if(i==0){
                        date_start.style.display = 'block';
                        var mySchedule = new Schedule({
                            el:'.schedule-box',
                            clickCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d
                            },
                            nextMonthCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d
                            },
                            nextYeayCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d

                            },
                            prevMonthCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d

                            },
                            prevYearCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d

                            }
                        });
                    }else if(i==1){
                        date_start2.style.display = 'block';
                        var my = new Schedule({
                            el:'#schedule-box',
                            clickCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d
                            },
                            nextMonthCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d
                            },
                            nextYeayCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d

                            },
                            prevMonthCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d

                            },
                            prevYearCb: function (y,m,d) {
                                txt_input[i].value = y+'-'+m+'-'+d
                            }
                        });
                    }
                }
            }
            document.onclick = function(e){
                var target = e.target;
                if(target.className !== 'txt_input'){
                    date_start.style.display = 'none';
                    date_start2.style.display = 'none';
                }
            }
            function click(ele){
                var mySchedule = new Schedule({
                    el:'#schedule-box',
                    clickCb: function (y,m,d) {
                        ele.innerHTML = y+'-'+m+'-'+d;
                        ele.value = y+'-'+m+'-'+d
                    },
                    nextMonthCb: function (y,m,d) {
                        ele.innerHTML = y+'-'+m+'-'+d,
                        ele.value = y+'-'+m+'-'+d
                    },
                    nextYeayCb: function (y,m,d) {
                        ele.innerHTML = y+'-'+m+'-'+d,
                        ele.value = y+'-'+m+'-'+d

                    },
                    prevMonthCb: function (y,m,d) {
                        ele.innerHTML = y+'-'+m+'-'+d,
                        ele.value = y+'-'+m+'-'+d

                    },
                    prevYearCb: function (y,m,d) {
                        ele.innerHTML = y+'-'+m+'-'+d,
                        ele.value = y+'-'+m+'-'+d

                    }
                });
            }
            function toDetails(){
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
                    xhr_wly.open('get','../api/TVShow_goods.json',true);
                    xhr_wly.send();
                },500);
            }
            toDetails();
            var rank = document.querySelector('.rank_price');
            // 定义点击的次数
            var time=1;
            //点击实现价格排序
            rank.onclick=function(e){  
                var ul = document.querySelector('.goodsList ul');
                // 单数，实现降序
                if(time%2===1){
                    xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                        for(i=0;i<res.data.length-1;i++){
                            for(j=0;j<res.data.length-i-1;j++){
                              if(Number(res.data[j].price)>Number(res.data[j+1].price)){
                                var temp;
                                temp=res.data[j];;
                                res.data[j]=res.data[j+1];
                                res.data[j+1]=temp;
                              }
                            }
                        }
                        res = res.data;
                        var goods=res.map(function(item){
                            return `
                                <li class="index_hot">
                                        <img src="${item.imgurl}">
                                        <a href="#">${item.title}</a>
                                        <span class="price">￥${item.price}</span>
                                        <button>加入购物车</button>
                                    </li>`;
                                }).join('');
                        ul.innerHTML = goods;
                        var index_hot = document.querySelectorAll('.index_hot');
                        for(let i=0;i<index_hot.length;i++){
                            index_hot[i].onclick = function(){
                                    data = res[i];
                                    console.log(data);
                                    xiangqingye();
                                    var currentGUID = this.getAttribute('data-guid');
                                    根据id获取整个商品的信息
                                    var currentGoods = res.filter(function(item){
                                        return item.id === currentGUID;
                                    })[0];
                                    // 把当前商品写入cookie
                                    var now = new Date();
                                    now.setDate(now.getDate()+7);
                                    document.cookie = 'currentGoods=' + JSON.stringify(currentGoods) + ';expires=' + now;
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
                    });
                }
                //双数，实现升序
                if(time%2===0){
                    xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                    for(i=0;i<res.data.length-1;i++){
                        for(j=0;j<res.data.length-i-1;j++){
                          if(Number(res.data[j].price)<Number(res.data[j+1].price)){
                            var temp;
                            temp=res.data[j];;
                            res.data[j]=res.data[j+1];
                            res.data[j+1]=temp;
                          }
                        }
                    }
                    res = res.data;
                    var goods=res.map(function(item){
                        return `
                            <li class="index_hot">
                                    <img src="${item.imgurl}">
                                    <a href="#">${item.title}</a>
                                    <span class="price">￥${item.price}</span>
                                    <button>加入购物车</button>
                                </li>`;
                        }).join('');
                        ul.innerHTML = goods;
                    });
                }
                time++;
                e.preventDefault();

            }
            //点击实现销量排序（没有实际数据，利用id排序）
            var rank_sale = document.querySelector('.rank_sale');
            rank_sale.onclick = function(e){
                var ul = document.querySelector('.goodsList ul');
                // 单数，实现降序
                if(time%2===1){
                    xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                    for(i=0;i<res.data.length-1;i++){
                        for(j=0;j<res.data.length-i-1;j++){
                          if(Number(res.data[j].id)<Number(res.data[j+1].id)){
                            var temp;
                            temp=res.data[j];;
                            res.data[j]=res.data[j+1];
                            res.data[j+1]=temp;
                          }
                        }
                    }
                    res = res.data;
                    var goods=res.map(function(item){
                        return `
                            <li class="index_hot">
                                    <img src="${item.imgurl}">
                                    <a href="#">${item.title}</a>
                                    <span class="price">￥${item.price}</span>
                                    <button>加入购物车</button>
                                </li>`;
                        }).join('');
                        ul.innerHTML = goods;
                    });
                }
                //双数，实现升序
                if(time%2===0){
                    xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
                    for(i=0;i<res.data.length-1;i++){
                        for(j=0;j<res.data.length-i-1;j++){
                          if(Number(res.data[j].id)>Number(res.data[j+1].id)){
                            var temp;
                            temp=res.data[j];;
                            res.data[j]=res.data[j+1];
                            res.data[j+1]=temp;
                          }
                        }
                    }
                    res = res.data;
                    var goods=res.map(function(item){
                        return `
                            <li class="index_hot">
                                    <img src="${item.imgurl}">
                                    <a href="#">${item.title}</a>
                                    <span class="price">￥${item.price}</span>
                                    <button>加入购物车</button>
                                </li>`;
                        }).join('');
                        ul.innerHTML = goods;
                    });
                }
                time++;
                e.preventDefault();
            }
        }
    }
});

