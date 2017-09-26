document.addEventListener('DOMContentLoaded',function(){
        var hotlist = document.querySelectorAll('.hotlist');
        // 当前ul
        var pageNo = 1;
        // 每个ul显示数量
        xajax.post('api/index_hotSale.php?pageNo='+pageNo).then(function(res){
            var ul = document.createElement('ul');
            ul.innerHTML = res.data.map(item=>{
                return `<li>
                        <p>${item.left_time}</p>
                        <img src="${item.imgurl}">
                        <p class="title"><a href="#">${item.title}</a></p>
                        <p class="price">￥${item.price}</p>
                    </li>`;
            }).join('');
            hotlist[0].appendChild(ul);
        });
       
       var pageNo = 2;
        // 每个ul显示数量
        xajax.post('api/index_hotSale.php?pageNo='+pageNo).then(function(res){
            var ul = document.createElement('ul');
            ul.innerHTML = res.data.map(item=>{
                return `<li>
                        <img src="${item.imgurl}">
                        <p class="title"><a href="#">${item.title}</a></p>
                        <p class="price">￥${item.price}</p>
                        <p class="sale">${item.hot}</p>

                        </li>`;
            }).join('');
            hotlist[1].appendChild(ul);
        });
        var pageNo = 3;
        hotSale(2);

        var pageNo = 4;
        hotSale(3);

        var pageNo = 5;
        hotSale(4);

        var pageNo = 6;
        hotSale(5);
        // var qty = 4;
        // 每个ul显示数量
        function hotSale(i){
            xajax.post('api/index_hotSale.php?qty=6&pageNo='+pageNo).then(function(res){
                    var ul = document.createElement('ul');
                    ul.innerHTML = res.data.map(item=>{
                        return `<li>
                                    <img src="${item.imgurl}">
                                    <p class="title"><a href="#">${item.title}</a></p>
                                    <p class="price">￥${item.price}</p>
                                </li>`;
                    }).join('');
                    hotlist[i].appendChild(ul);
            });
        }    
        //删除页面中没有内容的a便签
        var a = document.querySelectorAll('.clothes .left ul a');
        for(i=0;i<a.length;i++){
            if(a[i].innerText == ''){
                a[i].parentNode.removeChild(a[i]);
            }
        }
        //展示左侧图片
        var img_hot = document.querySelectorAll('.img_hot');
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
                var a = document.createElement('a');
                a.innerHTML = res.data.map(item=>{
                    return `
                        <img src="${item.imgurl}">
                        `;
                }).join('');
                img_hot[i].appendChild(a);
            });
        }   
        //广告位的图片
        var long_ad = document.querySelector('.ad');
        var pageNo = 47;
        xajax.post('api/index_hotSale.php?qty=1&pageNo='+pageNo).then(function(res){
                long_ad.innerHTML = res.data.map(item=>{
                    return `
                        <img src="${item.imgurl}">
                        `;
                }).join(''); 
        });
    });