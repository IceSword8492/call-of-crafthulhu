const gulp = require('gulp');
const through = require('through2');

gulp.task('mcx:compile', done => {
    gulp.src([
        './src/coc/functions/**/*.mcx',
        './src/coc/functions/**/*.mcfunction'
    ]).pipe(through.obj((file, enc, callback) => {
            if (file.isNull()) {
                return callback(null, file);
            }
            if (file.isStream()) {
                throw new Error('Not supported: Stream');
            }
            if (file.isBuffer()) {
                let contents = String(file.contents);

                let Mcfunctionx = require('@mcx');
                let mcx = new Mcfunctionx('1.14.4');

                try {
                    contents = mcx.compile(contents);
                } catch (e) {
                    console.error(e);
                    contents = "";
                }
                
                file.contents = Buffer.from(contents);
                file.path = file.path.slice(0, file.path.lastIndexOf(".")) + ".mcfunction";
                return callback(null, file);
            }
        }))
        .pipe(gulp.dest("./data/coc/functions/"));
        done();
});

gulp.task("mcx:watch", _ => {
    gulp.watch([
        "./src/coc/functions/**/*.mcx",
        './src/coc/functions/**/*.mcfunction'
    ], gulp.task("mcx:compile"));
});

gulp.task("default", gulp.task("mcx:watch"));
