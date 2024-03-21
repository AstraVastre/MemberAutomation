<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Site.Master" AutoEventWireup="true" CodeBehind="memberTimes.aspx.cs" Inherits="MemberAutomationSystem.Public.member_times" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   <div class="row" style="display:flex; flex-direction: column; height:10vh;">
    <div class="col" style="flex:1;">
    </div>
  </div>
    
    
   <div class="row" > 
       <div class="col" style="flex:1; overflow-y:hidden">
           <h4>Tüm Personel Çalışma Süreleri</h4>

           <ul>
                <li><asp:DropDownList ID="DropDownList1" runat="server"  Width="260px"  Height="35px" ></asp:DropDownList></li>

                <asp:Button ID="Button1" runat="server" Text="Seçili Günün Kayıtları" Width="250px" Height="42px"/>

                <asp:Button ID="Button2" runat="server" Text="Seçili Haftanın Kayıtları" Width="250px" Height="40px"/>

                <asp:Button ID="Button3" runat="server" Text="Seçili Ayın Kayıtları" Width="250px"  Height="42px"/>

                <asp:Button ID="Button7" runat="server" Text="Toplam Çalışma Kayıtları" Width="250px"  Height="40px"/>

               
             
           </ul>
            
       </div>

       <div class="col" style="width:½50">
           <h4>Çalışma Süreleri</h4>
           <ul>
                <li> <asp:DropDownList ID="DropDownList2" runat="server"  Width="260px"  Height="35px" ></asp:DropDownList> </li>

                <asp:Button ID="Button4" runat="server" Text="Günlük Çalışmaya Göre " Width="250px" Height="35px"/>

                <asp:Button ID="Button5" runat="server" Text="Haftalık Çalışmaya Göre" Width="250px" Height="35px"/>

                <asp:Button ID="Button6" runat="server" Text="Aylık çalışmaya Göre" Width="250px"  Height="35px"/>

               <li><asp:Label ID="Label1" runat="server" Text="Toplam Çalışma Süresi:"  ></asp:Label></li>
           </ul>
       </div>
   </div>
    
</asp:Content>