define(['jquery'],function($){
    return {
        get_history:function(){
            //读取cookie
            // 用于保存浏览记录
            var historyList = [];
            var currentGoods;
            // 先获取cookie
            var cookie = document.cookie.split('; ');
            cookie.forEach(function(item){
                var arr = item.split('=');
                if(arr[0] === 'currentGoods'){
                    currentGoods = JSON.parse(arr[1]);
                }else if(arr[0] === 'historyList'){
                    historyList = JSON.parse(arr[1]);
                }
            });
            //如果当前商品已经存在historyList，则删除（放置重复）
            for(var i=0;i<historyList.length;i++){
                if(historyList[i].id === currentGoods.id){
                    historyList.splice(i,1);
                    break;
                }
            }
            historyList.unshift(currentGoods);
            // 重新把history写回cookie
            // 7天有效期
            var now = new Date();
            now.setDate(now.getDate()+7);
            document.cookie = 'historyList=' + JSON.stringify(historyList) + ';expires=' + now;
            // 把历史记录写入页面.history
            var left_top = document.querySelector('.left_top');
            var ul = document.createElement('ul');
            historyList.forEach(function(item){
                var li = document.createElement('li');
                li.className = 'history_li';
                var img = document.createElement('img');
                img.src = item.bigUrl1;
                var p = document.createElement('p');
                var a = document.createElement('a');
                a.innerHTML = item.title;
                p.appendChild(a);
                var span = document.createElement('span');
                span.innerHTML = item.price;
                
                li.appendChild(img);
                li.appendChild(p);
                li.appendChild(span);

                ul.appendChild(li);
            });
            left_top.appendChild(ul);
        }
    }
})
    