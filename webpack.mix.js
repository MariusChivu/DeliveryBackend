const mix = require('laravel-mix');
const minifier = require('minifier');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')


mix.sass('resources/sass/app.scss', 'public/css');

mix.then(() => {
	minifier.minify('public/css/app.css')
});

const BrowserSyncPlugin = require('browser-sync-webpack-plugin');

mix.webpackConfig({
	plugins: [
		new BrowserSyncPlugin({
			files: [
				'app/**/*',
				'public/**/*',
				'resources/views/**/*',
				'routes/**/*'
			]
		})
	]
});