document.addEventListener('DOMContentLoaded',function(){
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
                            now.setDate(now.getDate()+3);
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
})