//本地安装gulp:为了在此处引入gulp
var gulp = require('gulp');
var sass = require('gulp-sass');
// 利用gulp任务来编译
gulp.task('project',function(){
    // 查找sass文件
    gulp.src('./src/sass/*.scss')
        // 编译sass文件
        .pipe(sass().on('error', sass.logError))
        // 输出文件到硬盘
        .pipe(gulp.dest('./src/css/'));
});
// 监听sass文件修改
gulp.task('watchSass',function(){
    // 监听home.scss文件，如果有修改,则自动自动project任务
    gulp.watch('./src/**/*.scss',['project']);
});