document.addEventListener('DOMContentLoaded',function(){
        var goodsList = document.querySelector('.goodsList');
        var playList = document.querySelector('.playList');
        var right = document.querySelector('.right');
        var txt_input= document.querySelector('.txt_input');
        var txt_input2= document.querySelector('.txt_input2');
        var date_start= document.querySelector('.date_start');
        // 当前ul
        var pageNo = 1;
        // 每个ul显示数量
        xajax.post('../api/TV_Show.php?qty=29&pageNo='+pageNo).then(function(res){
            var ul = document.createElement('ul');
            ul.innerHTML = res.data.map(item=>{
                return `<li>
                        <img src="${item.imgurl}">
                        <a href="#">${item.title}</a>
                        <span class="price">￥${item.price}</span>
                        <button>加入购物车</button>
                    </li>`;
            }).join('');
            goodsList.appendChild(ul);
        });

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
        txt_input.onfocus= function(){
           date_start.style.display = 'block';
        } 
        document.onclick = function(e){
            var target = e.target;
            if(target.className.toLowerCase()!== 'txt_input'){
                date_start.style.display = 'none';
            }
        }
        var mySchedule = new Schedule({
            el:'#schedule-box',
            clickCb: function (y,m,d) {
                document.querySelector('.txt_input').innerHTML = y+'-'+m+'-'+d;
                document.querySelector('.txt_input').value = y+'-'+m+'-'+d,
                date_start.style.display = 'none'

            },
            nextMonthCb: function (y,m,d) {
                document.querySelector('.txt_input').innerHTML = y+'-'+m+'-'+d,
                document.querySelector('.txt_input').value = y+'-'+m+'-'+d,
                date_start.style.display = 'none'

            },
            nextYeayCb: function (y,m,d) {
                document.querySelector('.txt_input').innerHTML = y+'-'+m+'-'+d,
                document.querySelector('.txt_input').value = y+'-'+m+'-'+d,
                date_start.style.display = 'none'

            },
            prevMonthCb: function (y,m,d) {
                document.querySelector('.txt_input').innerHTML = y+'-'+m+'-'+d,
                document.querySelector('.txt_input').value = y+'-'+m+'-'+d,
                date_start.style.display = 'none'

            },
            prevYearCb: function (y,m,d) {
                document.querySelector('.txt_input').innerHTML = y+'-'+m+'-'+d,
                document.querySelector('.txt_input').value = y+'-'+m+'-'+d,
                date_start.style.display = 'none'

            }
        });
});
