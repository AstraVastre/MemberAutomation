﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Private/Private.Master" AutoEventWireup="true" CodeBehind="mRegister.aspx.cs" Inherits="MemberAutomationSystem.Private.mRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .center-gridview {
    margin: 0 auto;
    width: 100%; 
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
    <div class="col">
      <h4>Personel Kayıt</h4>
    </div>
  </div>
 <div class="row">
    <div class="col">
        <ul>
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="200px" placeholder="Personel Adı" style=""></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="200px" placeholder="Personel Soyadı"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="200px" placeholder="Personel TcNo" TextMode="Number"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_doBirth" runat="server" Width="200px" placeholder=" Personel Doğum Tarihi" TextMode="Date" ></asp:TextBox> </li>
                        <li><asp:Button ID="btn_save" runat="server" Text="Kaydet" Width="100px" CssClass="btn-success"  Font-Bold="True" style="border-radius:15px 15px"/> </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> </li>
        </ul>
    </div>
  </div>
    <div class="row">
    <div class="col">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" CssClass="center-gridview" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="member_Id">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="member_No" HeaderText="Personel No" SortExpression="Personel No" />
                <asp:BoundField DataField="member_Id" HeaderText="Personel ID" SortExpression="Personel ID" Visible="False" />
                <asp:BoundField DataField="name" HeaderText="Personel İsim" SortExpression="Personel İsim" />
                <asp:BoundField DataField="surname" HeaderText="Personel Soyad" SortExpression="Personel Soyad" />
                <asp:BoundField DataField="Tc_No" HeaderText="Personel Tc No" SortExpression="Personel Tc No" />
                <asp:BoundField DataField="date_Of_Birth" HeaderText="Doğum Tarihi" SortExpression="Doğum Tarihi" />
                <asp:CheckBoxField DataField="is_Active" HeaderText="Aktif Mi?" SortExpression="Aktif Mi?" />
                
                <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" InsertText="Ekle" NewText="Yeni" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
                
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="MemberAutomationSystem.members" DeleteMethod="memberInactive" SelectMethod="memberList" TypeName="MemberAutomationSystem.transactions" UpdateMethod="memberUpdate">
            <UpdateParameters>
                <asp:Parameter Name="memberId" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="TcNo" Type="String" />
                <asp:Parameter Name="doBirth" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>

    </div>
  </div>

    <script>

        window.addEventListener('resize', function (event) {
            var gridView = document.getElementById('<%= GridView1.ClientID %>');
            if (gridView) {
                var parentWidth = gridView.parentElement.clientWidth;
                gridView.style.width = parentWidth + 'px';
            }
        });

    </script>
</asp:Content>
