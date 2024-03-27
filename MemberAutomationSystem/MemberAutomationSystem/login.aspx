<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MemberAutomationSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş</title>
<link rel="icon" type="image/png" href="login_images/icons/icon.ico" />

<link rel="stylesheet" type="text/css" href="login_page/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="login_page/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="login_page/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

<link rel="stylesheet" type="text/css" href="login_page/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="login_page/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="login_page/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="login_page/css/util.css">
<link rel="stylesheet" type="text/css" href="login_page/css/main.css">

	<script nonce="98a2d8ac-0afd-45f9-b1df-32c885b62963">try{(function(w,d){!function(lD,lE,lF,lG){lD[lF]=lD[lF]||{};lD[lF].executed=[];lD.zaraz={deferred:[],listeners:[]};lD.zaraz.q=[];lD.zaraz._f=function(lH){return async function(){var lI=Array.prototype.slice.call(arguments);lD.zaraz.q.push({m:lH,a:lI})}};for(const lJ of["track","set","debug"])lD.zaraz[lJ]=lD.zaraz._f(lJ);lD.zaraz.init=()=>{var lK=lE.getElementsByTagName(lG)[0],lL=lE.createElement(lG),lM=lE.getElementsByTagName("title")[0];lM&&(lD[lF].t=lE.getElementsByTagName("title")[0].text);lD[lF].x=Math.random();lD[lF].w=lD.screen.width;lD[lF].h=lD.screen.height;lD[lF].j=lD.innerHeight;lD[lF].e=lD.innerWidth;lD[lF].l=lD.location.href;lD[lF].r=lE.referrer;lD[lF].k=lD.screen.colorDepth;lD[lF].n=lE.characterSet;lD[lF].o=(new Date).getTimezoneOffset();if(lD.dataLayer)for(const lQ of Object.entries(Object.entries(dataLayer).reduce(((lR,lS)=>({...lR[1],...lS[1]})),{})))zaraz.set(lQ[0],lQ[1],{scope:"page"});lD[lF].q=[];for(;lD.zaraz.q.length;){const lT=lD.zaraz.q.shift();lD[lF].q.push(lT)}lL.defer=!0;for(const lU of[localStorage,sessionStorage])Object.keys(lU||{}).filter((lW=>lW.startsWith("_zaraz_"))).forEach((lV=>{try{lD[lF]["z_"+lV.slice(7)]=JSON.parse(lU.getItem(lV))}catch{lD[lF]["z_"+lV.slice(7)]=lU.getItem(lV)}}));lL.referrerPolicy="origin";lL.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(lD[lF])));lK.parentNode.insertBefore(lL,lK)};["complete","interactive"].includes(lE.readyState)?zaraz.init():lD.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script>
</head>
<body>
    <form runat="server">
		<div class="limiter">
<div class="container-login100" style="background-image: url('login_page/login_images/isparta_login.jpg');">
<div class="wrap-login100 p-t-190 p-b-30">

<div class="login100-form-avatar">
<img src="images/icon.png" alt="PHOTO"/>
</div>
<span class="login100-form-title p-t-20 p-b-45">
Siber Isparta Gençlik Merkezi
</span>
<div class="wrap-input100 validate-input m-b-10" data-validate="Username is required">
<input class="input100" type="text" name="username" placeholder="Kullanıcı Adı"/>
<span class="focus-input100"></span>
<span class="symbol-input100">
<i class="fa fa-user"></i>
</span>
</div>
<div class="wrap-input100 validate-input m-b-10" data-validate="Password is required">
<input class="input100" type="password" name="pass" placeholder="Şifre"/>
<span class="focus-input100"></span>
<span class="symbol-input100">
<i class="fa fa-lock"></i>
</span>
</div>
<div class="container-login100-form-btn p-t-10">
    <asp:Button ID="btn_signIn" runat="server" Text="Giriş Yap"  class="login100-form-btn" OnClick="btn_signIn_Click" />
</div>
   
</div>
    </div>
            </div>

<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>

<script src="js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"868624754bd650ac","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
	</form>
     
		
	
</body>
</html>
