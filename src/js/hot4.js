document.addEventListener('DOMContentLoaded',function(){
        var goodslist = document.querySelector('.hotlist4');
        // ajax获取商品信息
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                var datalist = JSON.parse(xhr.responseText);
                var ul = document.createElement('ul');
                ul.innerHTML = datalist.map(item=>{
                    return `
                            <li>
                                <img src="${item.imgurl}">
                                <p class="title"><a href="#">${item.title}</a></p>
                                <p class="price">￥${item.price}</p>
                            </li>
                    `
                }).join('');
                goodslist.appendChild(ul);
            }
        }
        xhr.open('get','api/data/hotSale4.json',true);
        xhr.send();
    })