document.addEventListener('DOMContentLoaded',function(){
        // 读取cookie
        // 得到添加到购物车所有商品信息carlist
        var cookies = document.cookie;
        var carlist = [];
        if(cookies.length>0){
            cookies = cookies.split('; ');
            cookies.forEach(function(cookie){
                var temp = cookie.split('=');
                if(temp[0] === 'carlist'){
                    // 把json字符串转成数组
                    carlist = JSON.parse(temp[1]);
                }
            });
        }
        var carList = document.querySelector('.carList');
        function render(){
            var totalPrice = 0;
            //利用carlist中的数据生成html结构
            var ul = document.createElement('ul');
            ul.className = 'car_ul';
            carlist.map(function(item){
                totalPrice += (item.price-10) * item.qty;
                ul.innerHTML +=`
                    <li class="clearfix" data-guid="${item.id}">
                        <p><i class="i_check"></i><img src="${item.imgurl}" alt="" /></p>
                        <p>
                            <span>${item.title}</span>
                            <span>${item.number}</span>
                            <span>颜色/尺码 ：</span>
                            <span>${item.title}</span>
                            <span>可返积分 <i  class="score">${item.score}</i></span>
                        </p>
                        <p>${item.price}</p>
                        <p>
                            <span class="less">-</span>
                            <span><input type="text" value="${item.qty}" class="val"/></span>
                            <span class="more">+</span>
                        </p>
                        <p>${item.price-10}</p>
                        <p class="totalPrice">${totalPrice}</p>
                        <p>
                            <a href="../html/Login.html" class="collect">加入收藏夹</a>
                            <a href="#" class="del">删除</a>
                        </p>
                    </li>
                `;
            }).join('');
            // 添加前先清空
            carList.innerHTML = '';
            carList.appendChild(ul);
        }
        render();
        var score_total;
        var score_all;
        var total_p = document.querySelector('.total_p');
        function Score_price(){
            //获取积分、价格
            var score = document.querySelectorAll('.score');
            var totalPrice = document.querySelectorAll('.totalPrice');
            var val = document.querySelector('.val').value;
            var scoreTotal = 0;
            var allPrice = 0;
            for(var i=0;i<score.length;i++){
                scoreTotal += (score[i].innerHTML.slice(0,-2))*1;
                allPrice += totalPrice[i].innerHTML*1;
            }
            //积分
            score_total = scoreTotal*val+'*2';
            score_all = scoreTotal*2*val;
            total_p.innerHTML = `
            <span>商品金额：<i>${allPrice}.00</i>元</span>
                <span>运费：0.00元</span>
                <span>可返积分： <i>${score_total} = ${score_all}</i></span>
                <span>总计：<i>${allPrice}.00</i>元</span>
            `;
        }
        if(carlist.length > 0){
            Score_price();
        }else if(carlist.length == 0){
            //积分
            total_p.innerHTML = `
            <span>商品金额：<i>0.00</i>元</span>
                <span>运费：0.00元</span>
                <span>可返积分： <i>0</i></span>
                <span>总计：<i>0.00</i>元</span>
            `;
        }

        var account = document.querySelector('.account');
        account.onclick = function(){
            alert('请先登录');
        }        
        //删除商品
        var del = document.querySelectorAll('.del');
        var collect = document.querySelectorAll('.collect');
        //商品数量的增减
        var less = document.querySelectorAll('.less');
        var more = document.querySelectorAll('.more');
        var clearBtn = document.querySelector('.clearBtn');
        var del_goods = document.querySelector('.del_goods');
        for(let i=0;i<del.length;i++){
            del[i].onclick = function(){
                var currentLi = this.parentNode.parentNode;
                var guid = currentLi.getAttribute('data-guid');
                for(var i=0;i<carlist.length;i++){
                    if(carlist[i].id === guid){
                        carlist.splice(i,1);
                        currentLi.parentNode.removeChild(currentLi);
                        break;
                    }
                }
                location.reload();
                var date = new Date();
                date.setDate(date.getDate()+15);
                document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
                if(carlist.length > 0){
                    Score_price();
                }else if(carlist.length == 0){
                    //积分
                    total_p.innerHTML = `
                    <span>商品金额：<i>0.00</i>元</span>
                        <span>运费：0.00元</span>
                        <span>可返积分： <i>0</i></span>
                        <span>总计：<i>0.00</i>元</span>
                    `;
                }
            }
            collect[i].onclick = function(){
                alert("请先登录!");
            }
            less[i].onclick = function(){
                var currentLi = this.parentNode.parentNode;
                var guid = currentLi.getAttribute('data-guid');
                for(let j=0;j<carlist.length;j++){
                    if(carlist[j].id === guid && carlist[j].qty>=1){
                        this.nextElementSibling.firstElementChild.value = carlist[j].qty--;
                        Score_price();
                        location.reload() 
                        render();
                        var date = new Date();
                        date.setDate(date.getDate()+15);
                        document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
                    }
                }
            }
            more[i].onclick = function(){
                var currentLi = this.parentNode.parentNode;
                var guid = currentLi.getAttribute('data-guid');
                for(let j=0;j<carlist.length;j++){
                    if(carlist[j].id === guid){
                        this.previousElementSibling.firstElementChild.value = carlist[j].qty++;
                        Score_price();
                        location.reload() 
                        render();
                        var date = new Date();
                        date.setDate(date.getDate()+15);
                        document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
                    }
                }
            }
        }
        var car_ul = document.querySelector(".car_ul");
        var car_ul_i = document.querySelectorAll(".total_p i");
        //清空购物车
        clearBtn.onclick = function(){
            var date = new Date();
            date.setDate(date.getDate()-10);
            document.cookie = 'carlist=x;expires=' + date.toUTCString();
            // 清空DOM节点
            car_ul.innerHTML = '';
            for(var i=0;i<car_ul_i.length;i++){
                car_ul_i[i].innerHTML ='0.00';
            }
        }
        var i_check = document.querySelectorAll('.i_check');
        del_goods.onclick = function(){
            for(let i=0;i<i_check.length;i++){
                if(i_check[i].style.backgroundPosition == "-21px -74px"){
                    if(carlist[i].id == i_check[i].parentNode.parentNode.dataset.guid){
                        carlist.splice(i,1);
                        i_check[i].parentNode.parentNode.parentNode.innerHTML ='';
                        break;
                    }
                }
            }
            location.reload();
            var date = new Date();
            date.setDate(date.getDate()+15);
            document.cookie = 'carlist=' + JSON.stringify(carlist) + ';expires=' + date.toUTCString();
            if(carlist.length > 0){
                Score_price();
            }else if(carlist.length == 0){
                //积分
                total_p.innerHTML = `
                <span>商品金额：<i>0.00</i>元</span>
                    <span>运费：0.00元</span>
                    <span>可返积分： <i>0</i></span>
                    <span>总计：<i>0.00</i>元</span>
                `;
            }
        }

        //全选
        var select_all = document.querySelector('.select_all');
        if(select_all.checked){
            for(let i=0;i<i_check.length;i++){
                i_check[i].style.backgroundPosition = "-21px -74px";
            } 
        }
        select_all.onclick = function(){
            if(select_all.checked){
                for(let i=0;i<i_check.length;i++){
                    i_check[i].style.backgroundPosition = "-21px -74px";
                }
            }else if(!select_all.checked){
                for(let i=0;i<i_check.length;i++){
                    i_check[i].style.backgroundPosition = "-21px -45px";
                }
            }
        }

        var res = 0;
        for(var i=0;i<i_check.length;i++){
            if(i_check[i].style.backgroundPosition = "-21px -74px"){
                res++;
            }
        }
        if(res == i_check.length){
            select_all.checked = true;
        }else{
            select_all.checked = false;
        }
        for(let i=0;i<i_check.length;i++){
            i_check[i].onclick = function(){
                if(this.style.backgroundPosition == "-21px -45px"){
                    this.style.backgroundPosition = "-21px -74px";
                    res++;
                }
                else{
                    this.style.backgroundPosition = "-21px -45px";
                    res--;
                    
                }
                if(res==i_check.length){
                    select_all.checked =true;
                }else{
                    select_all.checked = false;
                }
            }
        }
})