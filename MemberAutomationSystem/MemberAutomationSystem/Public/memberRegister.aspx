<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Site.Master" AutoEventWireup="true" CodeBehind="memberRegister.aspx.cs" Inherits="MemberAutomationSystem.Pages.memberRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <style>
        .center-gridview {
    margin: 0 auto;
    width: 100%; 
}
    </style>
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
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" CssClass="center-gridview" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="member_Id">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                <asp:BoundField DataField="member_Id" HeaderText="member_Id" SortExpression="member_Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="Tc_No" HeaderText="Tc_No" SortExpression="Tc_No" />
                <asp:BoundField DataField="date_Of_Birth" HeaderText="date_Of_Birth" SortExpression="date_Of_Birth" />
                <asp:CheckBoxField DataField="is_Active" HeaderText="is_Active" SortExpression="is_Active" />
                <asp:BoundField DataField="member_No" HeaderText="member_No" SortExpression="member_No" />
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
