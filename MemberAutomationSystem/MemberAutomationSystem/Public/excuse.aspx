<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Site.Master" AutoEventWireup="true" CodeBehind="excuse.aspx.cs" Inherits="MemberAutomationSystem.Public.excuse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
            left: 2px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="row">
    <div class="col">
      <h4>Mazeret</h4>
    </div>
  </div>
 
 <div class="row">
    <div class="col">
        <ul>
                        <li> <asp:DropDownList ID="DropDownList1" runat="server" Width="260px" Height="35px"></asp:DropDownList> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="260px" placeholder="Personel Tc No"></asp:TextBox> </li> 
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="260px" placeholder="Personel Adı"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="260px" placeholder="Personel Soyadı"></asp:TextBox> </li>
                         <li> <asp:TextBox ID="txt_excuse" runat="server" Width="360px" Height="100px" placeholder="Mazeret" TextMode="MultiLine" ></asp:TextBox> </li>

                        <li><asp:Button ID="btn_excuse_add" runat="server" Text="Mazeret Ekle" Width="198px" OnClick="btn_excuse_click" /> </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> </li>
                        
                


        </ul>

       
    </div>
     
     
  </div>
    
         
       
  

    <div class="row" style="margin-top:15px">
    <div class="col">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="ObjectDataSource1" GridLines="None" style="margin:auto">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="member_Id" HeaderText="member_Id" SortExpression="member_Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="Tc_No" HeaderText="Tc_No" SortExpression="Tc_No" />
                <asp:BoundField DataField="date_Of_Birth" HeaderText="date_Of_Birth" SortExpression="date_Of_Birth" />
                <asp:CheckBoxField DataField="is_Active" HeaderText="is_Active" SortExpression="is_Active" />
                <asp:BoundField DataField="member_No" HeaderText="member_No" SortExpression="member_No" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="memberList" TypeName="MemberAutomationSystem.transactions"></asp:ObjectDataSource>

</asp:Content>
