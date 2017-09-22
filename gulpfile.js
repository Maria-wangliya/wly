//本地安装gulp
//require():commonjs的规范-->同步
var gulp = require('gulp');
var sass = require('gulp-sass');
//编译sass
//利用gulp任务来编译
//创建gulp任务：gulp.task()
gulp.task('compileSass',function(){
    //查找sass文件
    //匹配文件成功后，返回文档流
    gulp.src('./src/')
})