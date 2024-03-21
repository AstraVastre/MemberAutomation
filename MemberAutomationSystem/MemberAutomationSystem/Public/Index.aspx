<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MemberAutomationSystem.Public.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   <div class="row" > 
       <div class="col-md-6" >
                <ul>
                        <li> <asp:TextBox ID="txt_name" runat="server" Width="200px" placeholder="Personel Adı" ></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_surname" runat="server" Width="200px" placeholder="Personel Soyadı"></asp:TextBox> </li>
                        <li> <asp:TextBox ID="txt_tcno" runat="server" Width="200px" placeholder="Personel TcNo" TextMode="Number"></asp:TextBox> </li>
                         <li> <asp:TextBox ID="txt_doBirth" runat="server" Width="200px" placeholder=" Personel Doğum Tarihi" TextMode="Date" ></asp:TextBox> </li>
                        <li><asp:Button ID="btn_save" runat="server" Text="Kaydet" Width="100px" CssClass="btn-success"  Font-Bold="True"/> </li>
                        <li> <asp:Label ID="lbl_warning" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label> </li> 
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
</asp:Content>
