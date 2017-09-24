document.addEventListener('DOMContentLoaded',function(){
        var goodslist = document.querySelector('.hotlist1');
        // ajax获取商品信息
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if(xhr.readyState === 4){
                var datalist = JSON.parse(xhr.responseText);
                var ul = document.createElement('ul');
                ul.innerHTML = datalist.map(item=>{
                    return `
                            <li>
                                <p>${item.time}</p>
                                <img src="${item.imgurl}">
                                <p class="title"><a href="#">${item.title}</a></p>
                                <p class="price">￥${item.price}</p>
                            </li>
                    `
                }).join('');
                goodslist.appendChild(ul);
            }
        }
        xhr.open('get','api/data/hotSale.json',true);
        xhr.send();
        var a = document.querySelectorAll('a');
        for(i=0;i<a.length;i++){
            if(a[i].innerText == ''&& a[i].innerHTML != '<i></i>'){
                a[i].parentNode.removeChild(a[i]);
            }

        }
    })