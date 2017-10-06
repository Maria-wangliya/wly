
function animate(ele,opt,callback){
	// 记录动画数量
	let timerLen = 0;

	// 遍历opt
	for(var attr in opt){
		// 如何把attr限定到局部作用域中
		// ES6解决方案：用let声明attr
		// 传统解决方案：利用函数传参
		createTimer(attr);

		timerLen++;
	}

	function createTimer(attr){
		// 为每个属性设置不同的定时器(关键1)
		let timerName = attr + 'timer';
		let target = opt[attr];

		clearInterval(ele[timerName]);

		// 把定时器与Dom关联（关键2）
		ele[timerName] = setInterval(()=>{
			// 先获取当前值
			let current = getComputedStyle(ele)[attr];//String:100px,50rem,0.5,60deg

			// 提取数值：单位
			// 根据当前值提取单位(单位在current最后面)
			let unit = current.match(/[a-z]+$/);
			if(unit){
				current = current.substring(0,unit.index)*1;
				unit = unit[0]
			}else{
				unit = '';
				current *= 1;
			}

			// 计算速度
			let speed = (target - current)/10;

			// 处理speed值，防止speed为小数而造成定时器无法完成的情况
			// 0.3=>1,-0.3=>-1
			speed = speed>0 ? Math.ceil(speed) : Math.floor(speed);


			if(attr === 'opacity'){
				speed = speed>0 ? 0.05 : -0.05;
			}
			// 动画完成
			if(current === target){
				clearInterval(ele[timerName]);
				current = target - speed;

				timerLen--;

				if(typeof callback === 'function' && timerLen === 0){
					callback();
				}
			}

			ele.style[attr] = current + speed + unit;
		},30)
	}
	
}

