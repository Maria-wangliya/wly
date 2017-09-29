document.addEventListener('DOMContentLoaded',function(){
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
})