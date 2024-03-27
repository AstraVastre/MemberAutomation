<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MemberAutomationSystem.Public.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <link rel="stylesheet" type="text/css" href="~/login_page/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="~/login_page/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="~/login_page/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

<link rel="stylesheet" type="text/css" href="~/login_page/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="~/login_page/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="~/login_page/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="~/login_page/css/util2.css">
<link rel="stylesheet" type="text/css" href="~/login_page/css/main2.css">

	<script nonce="98a2d8ac-0afd-45f9-b1df-32c885b62963">try{(function(w,d){!function(lD,lE,lF,lG){lD[lF]=lD[lF]||{};lD[lF].executed=[];lD.zaraz={deferred:[],listeners:[]};lD.zaraz.q=[];lD.zaraz._f=function(lH){return async function(){var lI=Array.prototype.slice.call(arguments);lD.zaraz.q.push({m:lH,a:lI})}};for(const lJ of["track","set","debug"])lD.zaraz[lJ]=lD.zaraz._f(lJ);lD.zaraz.init=()=>{var lK=lE.getElementsByTagName(lG)[0],lL=lE.createElement(lG),lM=lE.getElementsByTagName("title")[0];lM&&(lD[lF].t=lE.getElementsByTagName("title")[0].text);lD[lF].x=Math.random();lD[lF].w=lD.screen.width;lD[lF].h=lD.screen.height;lD[lF].j=lD.innerHeight;lD[lF].e=lD.innerWidth;lD[lF].l=lD.location.href;lD[lF].r=lE.referrer;lD[lF].k=lD.screen.colorDepth;lD[lF].n=lE.characterSet;lD[lF].o=(new Date).getTimezoneOffset();if(lD.dataLayer)for(const lQ of Object.entries(Object.entries(dataLayer).reduce(((lR,lS)=>({...lR[1],...lS[1]})),{})))zaraz.set(lQ[0],lQ[1],{scope:"page"});lD[lF].q=[];for(;lD.zaraz.q.length;){const lT=lD.zaraz.q.shift();lD[lF].q.push(lT)}lL.defer=!0;for(const lU of[localStorage,sessionStorage])Object.keys(lU||{}).filter((lW=>lW.startsWith("_zaraz_"))).forEach((lV=>{try{lD[lF]["z_"+lV.slice(7)]=JSON.parse(lU.getItem(lV))}catch{lD[lF]["z_"+lV.slice(7)]=lU.getItem(lV)}}));lL.referrerPolicy="origin";lL.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(lD[lF])));lK.parentNode.insertBefore(lL,lK)};["complete","interactive"].includes(lE.readyState)?zaraz.init():lD.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   <div class="row" > 
       <div class="col-md-6" >
                <ul>
                        <li>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="225px" Height="30px" style="border-radius:15px 15px"></asp:DropDownList></li>
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="200px" placeholder="Personel Adı" class="input100" style="padding:unset; margin:0 auto" Visible="True" ReadOnly="True"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="200px" placeholder="Personel Soyadı" class="input100" style="padding:unset; margin:0 auto" ReadOnly="True"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="200px" placeholder="Personel TCNo" TextMode="Number" class="input100" style="padding:unset; margin:0 auto" ReadOnly="True"></asp:TextBox> </li>
                        <li><asp:Button ID="btn_save" runat="server" Text="Kaydet" Width="100px" CssClass="btn-success" Font-Bold="True"/>
                            <asp:Button ID="Button1" runat="server" Text="Sil" Width="100px" CssClass="btn-danger" Font-Bold="True"/>
                        </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> 
                        </li> 
        </ul>
       </div>

       <div class="col-md-6" >
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="member_Id" HeaderText="member_Id" SortExpression="member_Id" Visible="False" />
                   <asp:BoundField DataField="member_No" HeaderText="Personel No" SortExpression="member_No" />
                   <asp:BoundField DataField="name" HeaderText="Personel Adı" SortExpression="name" />
                   <asp:BoundField DataField="surname" HeaderText="Personel Soyadı" SortExpression="surname" />
                   <asp:BoundField DataField="Tc_No" HeaderText="Personel TCNo" SortExpression="Tc_No" />
                   <asp:BoundField DataField="date_Of_Birth" HeaderText="Personel Doğum Tarihi" SortExpression="date_Of_Birth" />
                   <asp:CheckBoxField DataField="is_Active" HeaderText="is_Active" SortExpression="is_Active" Visible="False" />
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           </asp:GridView>
           <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="memberList" TypeName="MemberAutomationSystem.transactions"></asp:ObjectDataSource>
       </div>
   </div>
    <script src="~/vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="~/vendor/bootstrap/js/popper.js"></script>
<script src="~/vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="~/vendor/select2/select2.min.js"></script>

<script src="~/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"868624754bd650ac","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
</asp:Content>
