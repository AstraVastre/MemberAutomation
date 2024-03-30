<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Site.Master" AutoEventWireup="true" CodeBehind="excuse.aspx.cs" Inherits="MemberAutomationSystem.Public.excuse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <link rel="stylesheet" href="~/Css/style.css" type="text/css" runat="server"/>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="row">
    <div class="col">
      <h4>  Mazeret</h4>
    </div>
  </div>
 <div class="row">
    <div class="col">
        <ul>
                        <li> <asp:DropDownList ID="DropDownList1" runat="server" Width="225px" Height="30px"></asp:DropDownList> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="225px" placeholder="Personel Tc No"></asp:TextBox> </li> 
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="225px" placeholder="Personel Adı"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="225px" placeholder="Personel Soyadı"></asp:TextBox> </li>
                         <li> <asp:TextBox ID="txt_excuse" runat="server" Width="250px" Height="100px" placeholder="Mazeret" TextMode="MultiLine"  style="" ></asp:TextBox> </li>
                        <li><asp:Button ID="btn_excuse_add" runat="server" Text="Mazeret Ekle" Width="198px" OnClick="btn_excuse_click" CssStyle="btn-success" Font-Bold="True"/> </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> </li>
        </ul>
    </div>
  </div>
    <div class="row" style="margin-top:15px">
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="ObjectDataSource1" GridLines="None"  style="margin:auto" RowStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="member_Id" HeaderText="Personel ID" SortExpression="member_Id" Visible="False" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="member_No" HeaderText="Personel No" SortExpression="Personel No" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Personel Adı" SortExpression="Personel Adı" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="surname" HeaderText="Personel Soyadı" SortExpression="Personel Soyadı" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Tc_No" HeaderText="Personel Tc No" SortExpression="Personel Tc No" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="date_Of_Birth" HeaderText="P. Doğum Tarihi" SortExpression="P. Doğum Tarihi" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="is_Active" HeaderText="Çalışıyor Mu?" SortExpression="Çalışıyor Mu?" Visible="False" />
                
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
        </div>
        </div>
</asp:Content>
