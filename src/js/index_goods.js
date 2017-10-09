define(['jquery'],function($){
    return {
        index_goods_fz:function(){


        //引入html公共部分
            $('#header').load('../html/header.html');
            $('#nav').load('../html/nav.html');
            $('#links').load('../html/links.html');
            $('#footer').load('../html/footer.html');
            $('.banner').xCarousel({
                imgs:['../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg','../img/fruit_banner1.jpg'],
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
            var share = document.querySelector('.share');
            var share_ul = document.querySelector('.share ul');
            var share_a = document.querySelector('.share_a');
            share.onmouseover = function(e){
                if(e.target.className == 'share_a'){
                    share_ul.style.display = 'block';
                }
            }
            share.onmouseleave = function(e){
                share_ul.style.display = 'none';
            }
            var top = document.querySelector('.top');
            var center = document.querySelector('.center');
            var small = document.querySelector('.small');
            var match = document.querySelector('.match');
            var center2 = document.querySelector('.right .center');
            var params = location.search;
            params = decodeURI(params);
            // 还原数据，把url参数（string）转变成对象;
            var idx = params.indexOf('?');
            // 返回0，
            // 从idx=1开始截取，到最后；
            var params = params.substring(idx + 1);

            // 以&拆分为数组
            params = params.split('&');

            var res = {};
            params.forEach(function(item) {
                // 以等号拆分为数组；
                var arr = item.split('=');
                res[arr[0]] = arr[1];
            });
            top.innerHTML = `
                <h3>${res.h3}</h3>
                <ul>
                    <li>></li>
                    <li><a href="#">${res.top1}</a></li>
                    <li>></li>
                    <li><a href="#">${res.top2}</a></li>
                    <li>></li>
                    <li>${res.title}</li>
                </ul>
            `;
            center.innerHTML = `
                <div class="details_div bigPic xzoom">
                    <img class="bigImg" src="${res.bigUrl1}" data-guid="${res.id}" data-big="${res.bigUrl1}">
                </div>
                <div class="right">
                    <ul>
                        <li class="clearfix">
                            <h4>${res.title}</h4>
                            <span class="num">
                                ${res.num}
                            </span>
                        </li>
                        <li>
                            <span>嘉丽价</span>
                            <span>
                                <i>¥</i>${res.price}
                            </span>
                        </li>
                        <li>
                            <span>积分</span>
                            <span>
                                订购此商品可返回<i>${res.score}</i>积分
                            </span>
                        </li>
                        <li><span>尺寸</span><span>${res.title}</span></li>
                        <li><span>数量</span><span class="reduce">-</span><span><input type="text" value="1" class="num_input"/></span><span class="add">+</span><span>件</span></li>
                        <li>
                            <button>立即购买</button>
                            <button class="buyCar">加入购物车</button>
                            <button>收藏</button>
                        </li>
                    </ul>
                </div>
            `;
            
            small.innerHTML =  `
                <div class="img_div">
                <a class="small_click"><img class="test" src="${res.small1}"></a>
                </div>
                
            `;

            var imgs = document.querySelectorAll('.test')[0];
            var attr = imgs.getAttribute('src');
            //显示小图部分
            //只有两张小图
            if(attr == '../img/hot21.jpg' || attr == '../img/28_big_details.jpg' || attr == '../img/hot23.jpg' || attr == '../img/hot28.jpg' || attr == '../img/hot31.jpg' || attr == '../img/hot32.jpg'){
                small.innerHTML +=  `
                    <div class="img_div">
                    <a><img class="test" src="${res.small2}"></a>
                    </div>
                `;
            }
            //有三张小图
            if(attr == '../img/01_small1.png' || attr == '../img/03_small1.jpg' || attr== '../img/11_big_details.png' || attr == '../img/hot11.jpg' || attr == '../img/hot14.jpg' || attr== '../img/hot17.jpg' || attr == '../img/36_big_details.png' || attr == '../img/hot2.jpg' || attr == '../img/play8.jpg' || attr == '../img/play12.jpg' || attr == '../img/play26.jpg' || attr == '../img/play28.jpg' || attr == '../img/8_fruits_big.jpg' || attr == '../img/fruits10.jpg' || attr == '../img/fruits12.jpg'){
                small.innerHTML +=  `
                    <div class="img_div">
                    <a><img class="special" src="${res.small2}"></a>
                    </div>
                    <div class="img_div">
                    <a><img class="special" src="${res.small3}"></a>
                    </div>
                
                `;
                if(attr=='../img/11_big_details.png'){
                    small.innerHTML += `<div class="img_div">
                    <a><img class="special" src="${res.small4}"></a>
                    </div>`;
                }
                if(attr=='../img/hot17.jpg'){
                    small.innerHTML += `
                        <div class="img_div">
                        <a><img class="special" src="${res.small4}"></a>
                        </div>
                        <div class="img_div">
                        <a><img class="special" src="${res.small5}"></a>
                        </div>
                    `;
                }
            }
            //点击小图切换大图
            var small_click = document.querySelectorAll('.img_div');
            for(let i=0;i<small_click.length;i++){
                small_click[i].onclick = function(){
                    var bigImg = this.parentNode.previousElementSibling.children[0].children[0];
                    bigImg.src = this.children[0].children[0].src;
                    bigImg.dataset.big = this.children[0].children[0].src;
                    xZoom();
                }
            }

            //最佳搭配
            if(attr == '../img/hot1.jpg' || attr == '../img/hot16.jpg' || attr == '../img/hot18.jpg' || attr == '../img/hot19.jpg' || attr == '../img/play28.jpg' ){
                match.innerHTML += `
                <ul class="match_ul clearfix">
                    <li>
                        <img src="${res.match_url1}" alt="" />
                        <p><a href="#">${res.match_title1}</a></p>
                        <span>${res.match_price1}</span>
                    </li>
                </ul>`;
            }else if(attr == '../img/01_small1.png' ||　attr == '../img/11_big_details.png' || attr == '../img/hot13.jpg' || attr == '../img/play17.jpg'){
                match.innerHTML += `
                <ul class="match_ul clearfix">
                    <li>
                        <img src="${res.match_url1}" alt="" />
                        <p><a href="#">${res.match_title1}</a></p>
                        <span>${res.match_price1}</span>
                    </li>
                    <li>
                        <img src="${res.match_url2}" alt="" />
                        <p><a href="#">${res.match_title2}</a></p>
                        <span>${res.match_price2}</span>
                    </li>
                    <li>
                        <img src="${res.match_url3}" alt="" />
                        <p><a href="#">${res.match_title3}</a></p>
                        <span>${res.match_price3}</span>
                    </li>
                </ul>
                `;
                var match_ul = document.querySelector('.match_ul');
                if(attr == '../img/hot13.jpg'){
                    match_ul.innerHTML += `
                        <li>
                            <img src="${res.match_url4}" alt="" />
                            <p><a href="#">${res.match_title4}</a></p>
                            <span>${res.match_price4}</span>
                        </li>
                    `;
                }
            }else{
                match.innerHTML += `
                <ul class="match_ul clearfix">
                    <li>
                        <img src="${res.match_url1}" alt="" />
                        <p><a href="#">${res.match_title1}</a></p>
                        <span>${res.match_price1}</span>
                    </li>
                    <li>
                        <img src="${res.match_url2}" alt="" />
                        <p><a href="#">${res.match_title2}</a></p>
                        <span>${res.match_price2}</span>
                    </li>
                    <li>
                        <img src="${res.match_url3}" alt="" />
                        <p><a href="#">${res.match_title3}</a></p>
                        <span>${res.match_price3}</span>
                    </li>
                    <li>
                        <img src="${res.match_url4}" alt="" />
                        <p><a href="#">${res.match_title4}</a></p>
                        <span>${res.match_price4}</span>
                    </li>
                    <li>
                        <img src="${res.match_url5}" alt="" />
                        <p><a href="#">${res.match_title5}</a></p>
                        <span>${res.match_price5}</span>
                    </li>
                </ul>
                `;
            }
            //大图详情部分---文字
            //详情为大图的有：01_small1.png / 03_small1.jpg
            if(attr == '../img/hot3.jpg' || attr == '../img/hot35.jpg' || attr == '../img/06_big_details.jpg' || attr == '../img/hot9.jpg' || attr == '../img/hot13.jpg' || attr == '../img/hot15.jpg' || attr == '../img/hot_left24.jpg' || attr == '../img/play8.jpg' || attr == '../img/play10.jpg' || attr == '../img/play14.jpg' || attr == '../img/play17.jpg' || attr == '../img/play22.jpg' || attr == '../img/play29.jpg'){
                center2.innerHTML = `
                    <div class="right_ul">
                    <ul>
                    <li>
                        <p class="p_top">商品规格</p>
                        <p>
                            ${res.spec1}<br/>
                            ${res.spec2}<br/>
                            ${res.spec3}<br/>
                            ${res.spec4}<br/>
                            ${res.spec5}<br/>
                            ${res.spec6}<br/>
                            ${res.spec7}
                        </p>
                    </li>
                    <li>
                        <p class="p_top">商品特色</p>
                        <p>
                            ${res.special1}<br/>
                            ${res.special2}<br/>
                            ${res.special3}<br/>
                            ${res.special4}<br/>
                            ${res.special5}<br/>
                            ${res.special6}<br/>
                        </p>
                    </li>
                    <li>
                        <p class="p_top">使用方法</p>
                        <p>${res.method}</p>
                    </li>
                     <li>
                        <p class="p_top">注意事项</p>
                        <p>
                            ${res.care1}<br/>
                            ${res.care2}<br/>
                            ${res.care3}
                        </p>
                    </li>
                    </ul></div>
                `;
            }
            //五张详情图
            else if(attr == '../img/11_big_details.png' || attr == '../img/hot18.jpg' || attr == '../img/hot21.jpg' || attr == '../img/hot25.jpg' || attr == '../img/hot27.jpg' || attr == '../img/play16.jpg' || attr == '../img/play18.jpg' || attr == '../img/play21.jpg' || attr == '../img/play25.jpg' || attr == '../img/play27.jpg' || attr == '../img/fruits15.jpg' || attr == '../img/hot16.jpg'){
                center2.innerHTML = `
                    <ul>
                        <li><img src="${res.bigImg1}"</li>
                        <li><img src="${res.bigImg2}"</li>
                        <li><img src="${res.bigImg3}"</li>
                        <li><img src="${res.bigImg4}"</li>
                        <li><img src="${res.bigImg5}"</li>
                        <li><img src="${res.bigImg11}"</li>
                    </ul>   
                `;
            }else if(attr == '../img/27_big_details.jpg' || attr == '../img/hot22.jpg' || attr == '../img/hot26.jpg' || attr == '../img/fruits01.jpg'){
                center2.innerHTML = `
                    <ul>
                        <li><img src="${res.bigImg1}"</li>
                        <li><img src="${res.bigImg2}"</li>
                        <li><img src="${res.bigImg3}"</li>
                        <li><img src="${res.bigImg11}"</li>
                    </ul>   
                `;
            }else{
                center2.innerHTML = `
                    <ul>
                        <li><img src="${res.bigImg1}"</li>
                        <li><img src="${res.bigImg2}"</li>
                        <li><img src="${res.bigImg3}"</li>
                        <li><img src="${res.bigImg4}"</li>
                        <li><img src="${res.bigImg5}"</li>
                        <li><img src="${res.bigImg6}"</li>
                        <li><img src="${res.bigImg7}"</li>
                        <li><img src="${res.bigImg8}"</li>
                        <li><img src="${res.bigImg9}"</li>
                        <li><img src="${res.bigImg10}"</li>
                        <li><img src="${res.bigImg11}"</li>
                    </ul>   
                `;
            }
            // 把cookie中的carlist赋值给一个数组
            // 进入页面先获取之前的cookie值
            var carlist = [];
            var cookies = document.cookie;
            if(cookies.length>0){
                cookies = cookies.split('; ');
                cookies.forEach(function(cookie){
                    var temp = cookie.split('=');
                    if(temp[0] === 'carlist'){
                        carlist = JSON.parse(temp[1]);
                    }
                })
            }
            //加入购物车动画效果
            var buyCar = document.querySelector('.buyCar');
            var bigImg = document.querySelector('.bigImg');
            //商品增减按钮
            var reduce = document.querySelector('.reduce');
            var add = document.querySelector('.add');
            buyCar.onclick = function(){
                var buycar = document.querySelector('.buycar');
                var copyImg = bigImg.cloneNode();
                copyImg.style.position = 'absolute';
                copyImg.style.left = bigImg.offsetLeft + 'px';
                copyImg.style.top = bigImg.offsetTop + 'px';
                copyImg.style.width = bigImg.clientWidth + 'px';
                document.body.appendChild(copyImg);
                let target = {
                    left:buycar.offsetLeft+10,
                    top:buycar.offsetTop+6,
                    width:20
                }
                animate(copyImg,target,()=>{
                    copyImg.style.display = 'none';
                });
                var currentImg = document.querySelector(".bigImg");
                var imgurl = currentImg.getAttribute('src');
                var qty = document.querySelector('.qty');
                var has = false;
                for(var i=0;i<carlist.length;i++){
                    // 已经存在
                    if(carlist[i].imgurl === imgurl){
                        carlist[i].qty++;
                        qty.innerHTML = carlist[i].qty;
                        has=true;
                        break;
                    }
                }
                // 不存在
                if(!has){
                    var goods = {
                        imgurl:res.bigUrl1,
                        title:res.title,
                        price:res.price,
                        number:res.num,
                        qty:1,
                        id:res.id,
                        score:res.score
                    }

                    carlist.push(goods)
                }
                // 写入cookie
                var date = new Date();
                date.setDate(date.getDate()+15);
                document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
            }
            var num_input = document.querySelector('.num_input').value;
            add.onclick = function(){  
                var currentImg = document.querySelector(".bigImg");
                var imgurl = currentImg.getAttribute('src');  
                document.querySelector('.num_input').value++;
                var has = false;
                for(var i=0;i<carlist.length;i++){
                    // 已经存在
                    if(carlist[i].imgurl === imgurl){
                        carlist[i].qty++;
                        has=true;
                        break;
                    }
                }
                // 不存在
                if(!has){
                    var goods = {
                        imgurl:res.bigUrl1,
                        title:res.title,
                        price:res.price,
                        number:res.num,
                        qty:1,
                        id:res.id,
                        score:res.score
                    }

                    carlist.push(goods)
                }
                // 写入cookie
                var date = new Date();
                date.setDate(date.getDate()+15);
                document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
            }
            xZoom();
        }
    }
    
})  