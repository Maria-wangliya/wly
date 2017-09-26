document.addEventListener('DOMContentLoaded',function(){
        var fruits_ul = document.querySelectorAll('.fruits_ul');
        var pageNo = 1;
        xajax.post('../api/fruits.php?&pageNo='+pageNo).then(function(res){
            var ul = document.createElement('ul');
            ul.innerHTML = res.data.map(item=>{
                return `<li>
                        <p>
                            <span><i>￥</i>${item.price}</span>
                            <a class="price">${item.title}</a>
                        </p>
                        <p>
                        <a href="#" class="img"><img src="${item.imgurl}"></a>
                        </p>
                    </li>`;
            }).join('');
            fruits_ul[0].appendChild(ul);
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
                    return `<li>
                            <a href="#">
                                <img src="${item.imgurl}">
                            </a>
                            <span>￥${item.price}</span>
                            <a href="#">${item.title}</a>
                        </li>`;
                }).join('');
                fruits_list[i].appendChild(ul);
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
                            <a href="#" class="img"><img src="${item.imgurl}"></a>
                         `;
                }).join('');
            });
        }
    });