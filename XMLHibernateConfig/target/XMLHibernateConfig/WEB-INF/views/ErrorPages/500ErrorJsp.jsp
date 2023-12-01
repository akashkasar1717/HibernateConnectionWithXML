<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<script src="resources/js/jQuery.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link href="resources/css/font-awesome.css" media="screen"
	rel="stylesheet" />
<style>
* {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd,
	q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, caption, article, aside, canvas, details,
	figcaption, figure, footer, header, hgroup, menu, nav, section, summary,
	time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	vertical-align: baseline;
	background: transparent
}

article, aside, details, figcaption, figure, footer, header, hgroup, nav,
	section {
	display: block
}

html {
	font-size: 16px;
	line-height: 24px;
	width: 100%;
	height: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	overflow-y: scroll;
	overflow-x: hidden
}

img {
	vertical-align: middle;
	max-width: 100%;
	height: auto;
	border: 0;
	-ms-interpolation-mode: bicubic
}

body {
	min-height: 100%;
	-webkit-font-smoothing: subpixel-antialiased
}

.clearfix {
	clear: both;
	zoom: 1
}

.clearfix:before, .clearfix:after {
	content: &quot;\0020 &quot;;
	display: block;
	height: 0;
	visibility: hidden
}

.clearfix:after {
	clear: both
}
</style>
<style>
.sign.error-page-wrapper {
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #179eca;
	position: relative;
}

.sign.error-page-wrapper .sign-container {
	width: 450px;
	height: 415px;
	margin: 0 auto;
	position: relative;
	transform: rotate(-20deg);
	text-indent: -20px;
}

.sign.error-page-wrapper .sign-container .nob {
	height: 44px;
	width: 44px;
	border-radius: 99px;
	border: 12px solid #343c3f;
	position: absolute;
	top: 0px;
	left: 50%;
	margin-left: -22px;
}

.sign.error-page-wrapper .sign-container .post {
	transition: background-color .5s linear;
	width: 190px;
	height: 15px;
	top: 71px;
	background-color: #343c3f;
}

.sign.error-page-wrapper .sign-container .post.left {
	position: absolute;
	transform: rotate(-30deg);
	left: 35px;
}

.sign.error-page-wrapper .sign-container .post.right {
	position: absolute;
	transform: rotate(30deg);
	right: 35px;
}

.sign.error-page-wrapper .sign-container .pane {
	transition: background-color .5s linear, border-color .5s linear;
	box-shadow: 0 5px 0 rgba(0, 0, 0, .1) inset, 5px 0 0 rgba(0, 0, 0, .1)
		inset, 15px 15px 0 rgba(0, 0, 0, .1);
	background-color: #fff;
	border: 20px solid #343c3f;
	height: 300px;
	text-align: center;
	position: absolute;
	top: 115px;
	left: 0px;
	right: 0px;
}

.sign.error-page-wrapper .sign-container .pane .headline {
	transition: color .5s linear;
	margin-top: 65px;
	margin-bottom: 10px;
	font-size: 54px;
	line-height: 68px;
	font-weight: 600;
	letter-spacing: -2px;
	text-transform: uppercase;
	color: #ffba00;
}

.sign.error-page-wrapper .sign-container .pane.just-header .headline {
	margin-top: 100px;
}

.sign.error-page-wrapper .sign-container .pane .context {
	transition: color .5s linear;
	color: #ffba00;
	font-size: 24px;
	line-height: 32px;
}

@media screen and (max-width: 500px) {
	.sign.error-page-wrapper {
		padding-top: 10%;
	}
	.sign.error-page-wrapper .sign-container {
		width: 280px;
		top: 0px !important;
	}
	.sign.error-page-wrapper .sign-container .post {
		width: 100px;
		top: 50px;
	}
	.sign.error-page-wrapper .sign-container .pane {
		top: 70px;
		height: 220px;
	}
	.sign.error-page-wrapper .sign-container .pane .headline {
		margin-top: 20px;
		font-size: 45px;
		margin-bottom: 6px;
	}
	.sign.error-page-wrapper .sign-container .pane.just-header .headline {
		margin-top: 39px;
		line-height: 55px;
	}
	.sign.error-page-wrapper .sign-container .pane .context {
		font-size: 20px;
		line-height: 28px;
	}
}

.sign.error-page-wrapper .text-container {
	max-width: 425px;
	position: absolute;
	bottom: 20px;
	left: 35px;
}

.sign.error-page-wrapper .text-container .headline {
	transition: color .5s linear;
	font-size: 40px;
	line-height: 52px;
	letter-spacing: -1px;
	margin-bottom: 5px;
	color: rgba(255, 255, 255, .3);
}

.sign.error-page-wrapper .text-container .context {
	transition: color .5s linear;
	font-size: 18px;
	line-height: 27px;
	color: #fff;
}

.sign.error-page-wrapper .text-container .context p {
	margin: 0;
}

.sign.error-page-wrapper .text-container .context p+p {
	margin-top: 10px;
}

.sign.error-page-wrapper .buttons-container {
	margin-top: 20px;
}

.sign.error-page-wrapper .buttons-container a {
	transition: text-indent .2s linear, color .5s linear, border-color .5s
		linear;
	font-size: 16px;
	text-transform: uppercase;
	text-decoration: none;
	color: #fff;
	border: 2px solid white;
	border-radius: 99px;
	padding: 9px 0 10px;
	width: 195px;
	overflow: hidden;
	text-align: center;
	display: inline-block;
	position: relative;
}

.sign.error-page-wrapper .buttons-container a:hover {
	background-color: rgba(255, 255, 255, .1);
	text-indent: 17px;
}

.sign.error-page-wrapper .buttons-container a:first-child {
	margin-right: 25px;
}

.sign.error-page-wrapper .buttons-container .fa {
	transition: left .2s ease-out;
	position: absolute;
	left: -50px;
}

.sign.error-page-wrapper .buttons-container .fa-warning {
	font-size: 16px;
	top: 14px;
}

.sign.error-page-wrapper .buttons-container a:hover .fa-warning {
	left: 0px;
}

.sign.error-page-wrapper .buttons-container .fa-power-off {
	font-size: 16px;
	top: 14px;
}

.sign.error-page-wrapper .buttons-container a:hover .fa-power-off {
	left: 0px;
}

.sign.error-page-wrapper .buttons-container .fa-home {
	font-size: 18px;
	top: 12px;
}

.sign.error-page-wrapper .buttons-container a:hover .fa-home {
	left: 25px;
}

@media screen and (max-width: 500px) {
	.sign.error-page-wrapper .text-container {
		bottom: 20px;
		left: 20px;
		right: 20px;
	}
	.sign.error-page-wrapper .text-container .header {
		font-size: 32px;
		line-height: 40px;
	}
	.sign.error-page-wrapper .text-container .context {
		font-size: 15px;
		line-height: 22px;
	}
	.sign.error-page-wrapper .buttons-container {
		overflow: hidden;
	}
	.sign.error-page-wrapper .buttons-container a {
		font-size: 14px;
		padding: 8px 0 9px;
		width: 45%;
		float: left;
		margin: 0;
	}
	.sign.error-page-wrapper .buttons-container a+a {
		float: right;
	}
	.sign.error-page-wrapper .buttons-container a:hover {
		text-indent: 0px;
	}
	.sign.error-page-wrapper .buttons-container .fa {
		display: none;
	}
}
</style>
<style>
.background-color {
	background-color: rgba(34, 165, 209, 1) !important;
}

.primary-text-color {
	color: #FFFFFF !important;
}

.secondary-text-color {
	color: rgba(51, 51, 51, 1) !important;
}

.sign-text-color {
	color: rgba(255, 34, 0, 1) !important;
}

.sign-frame-color {
	color: #343C3F;
}

.pane {
	background-color: #FFFFFF !important;
}

.border-button {
	color: #FFFFFF !important;
	border-color: #FFFFFF !important;
}

.button {
	background-color: #FFFFFF !important;
	color: #FFFFFF !important;
}

.shadow {
	box-shadow: 0 0 60px #000000;
}
</style>
</head>
<body class="sign error-page-wrapper background-color background-image">
	<div class="sign-container">
		<div class="nob"></div>
		<div class="post left"></div>
		<div class="post right"></div>
		<div class="pane">
			<div class="headline sign-text-color">500</div>
			<div class="context sign-text-color">
				Oops, the page you're<br> looking for does not exist.
			</div>
		</div>
	</div>
	<div class="text-container">
		<div class="headline secondary-text-color">500</div>
		<div class="context primary-text-color">
			<p>
				You may want to head back to the homepage.<br> If you think
				something is broken, report a problem.
			</p>
		</div>
		<div class="buttons-container">
			<a class="border-button"
				href="Home.htm?${cipherUtils.encrypt(pageContext.request,'Action=HOME_PAGE')}"><span
				class="fa fa-home"></span> Home Page</a> <a class="border-button"
				href="mailto:sparken.mobile@gmail.com" target="_blank"><span
				class="fa fa-warning"></span> Report Problem</a>
		</div>
	</div>

	
</body>
</html>