<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="memberRegister.aspx.cs" Inherits="MemberAutomationSystem.Pages.memberRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="row">
    <div class="col">
      <h4>Personel Kayıt</h4>
    </div>
  </div>
 
 <div class="row">
    <div class="col">
        <ul>
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="260px" placeholder="Personel Adı" ></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="260px" placeholder="Personel Soyadı"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="260px" placeholder="Personel TcNo" TextMode="Number"></asp:TextBox> </li>
                         <li> <asp:TextBox ID="txt_doBirth" runat="server" Width="260px" placeholder=" Personel Doğum Tarihi" TextMode="Date" ></asp:TextBox> </li>

                        <li><asp:Button ID="btn_save" runat="server" Text="Kaydet" Width="198px" OnClick="btn_save_Click" /> </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> </li>
                        
                


        </ul>


    </div>
  </div>

    <div class="row">
    <div class="col">
    </div>
  </div>
</asp:Content>
