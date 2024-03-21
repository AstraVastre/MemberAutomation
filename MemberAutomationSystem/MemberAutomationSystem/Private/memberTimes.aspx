<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="memberTimes.aspx.cs" Inherits="MemberAutomationSystem.Public.member_times" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   <div class="row" style="display:flex; flex-direction: column; height:10vh;">
    <div class="col" style="flex:1;">
    </div>
  </div>
    
    
   <div class="row" > 
       <div class="col-md-6" style="flex:1; overflow-y:hidden; width:50%;">
           <h4>Tüm Personel Çalışma Süreleri</h4>

           
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="200px"  Height="35px" style="margin:auto; text-al   ign:center; margin-left:auto; display:block" ></asp:DropDownList>

                <br />

                <asp:Button ID="Button1" runat="server" Text="Seçili Günün Kayıtları" Width="155px" Height="30px" style="margin:auto; margin-top:auto;  margin-left:auto; display:block"  Font-Size="Small"  Font-Bold="True" CssClass="btn-primary"/>

                <br />

                <asp:Button ID="Button2" runat="server" Text="Seçili Haftanın Kayıtları" Width="155px" Height="30px" style="margin:auto; margin-top:auto;  margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-primary"/>

                <br />

                <asp:Button ID="Button3" runat="server" Text="Seçili Ayın Kayıtları" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-primary" />

                <br />

                <asp:Button ID="Button7" runat="server" Text="Toplam Çalışma Kayıtları" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-primary"/>

               
             
          
            
       </div>

       <div class="col-md-6" style="width:50%">
           <h4>Çalışma Süreleri</h4>
           
             <asp:DropDownList ID="DropDownList2" runat="server"  Width="200px"  Height="35px" style="margin: 0 auto; text-align:center; margin-left:auto; display:block"></asp:DropDownList> 
           
                <br />

                <asp:Button ID="Button4" runat="server" Text="Günlük Çalışmaya Göre " Width="155px" Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />

                <br />

                <asp:Button ID="Button5" runat="server" Text="Haftalık Çalışmaya Göre" Width="155px" Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />

                <br />

                <asp:Button ID="Button6" runat="server" Text="Aylık çalışmaya Göre" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />

                
           
       </div>

       <div class="r"></div>
   </div>
    
</asp:Content>