<%@ Page Title="" Language="C#" MasterPageFile="~/Private/Private.Master" AutoEventWireup="true" CodeBehind="mtimes.aspx.cs" Inherits="MemberAutomationSystem.Private.mtimes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row" style="display:flex; flex-direction: column; height:10vh;">
    <div class="col" style="flex:1;">
    </div>
  </div>
    
    
   <div class="row" > 
       <div class="col-md-6" style="flex:1; overflow-y:hidden; width:50%;">
           <h4>Tüm Personel Çalışma Süreleri</h4>
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="200px"  Height="35px" style="margin:auto; text-align:center; margin-left:auto; display:block; border-radius: 15px 15px" ></asp:DropDownList>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Seçili Günün Kayıtları" Width="155px" Height="30px" style="margin:auto; margin-top:auto;  margin-left:auto; display:block; border-radius:15px 15px"  Font-Size="Small"  Font-Bold="True" CssClass="btn-primary"/>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Seçili Haftanın Kayıtları" Width="155px" Height="30px" style="margin:auto; margin-top:auto;  margin-left:auto; display:block; border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-primary"/>
                <br />
                <asp:Button ID="Button3" runat="server" Text="Seçili Ayın Kayıtları" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block; 
                  border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-primary" />
                <br />
                <asp:Button ID="Button7" runat="server" Text="Toplam Çalışma Kayıtları" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block; border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-primary"/>
       </div>
       <div class="col-md-6" style="width:50%">
           <h4>Çalışma Süreleri</h4>     
             <asp:DropDownList ID="DropDownList2" runat="server"  Width="200px"  Height="35px" style="margin: 0 auto; text-align:center; margin-left:auto; display:block; border-radius:15px 15px"></asp:DropDownList> 
                <br />
                <asp:Button ID="Button4" runat="server" Text="Günlük Çalışmaya Göre " Width="155px" Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block; border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />
                <br />
                <asp:Button ID="Button5" runat="server" Text="Haftalık Çalışmaya Göre" Width="155px" Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block; border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />
                <br />
                <asp:Button ID="Button6" runat="server" Text="Aylık çalışmaya Göre" Width="155px"  Height="30px" style="margin:auto; margin-top:auto; margin-left:auto; display:block; border-radius:15px 15px" Font-Size="Small" Font-Bold="True" CssClass="btn-info" />
       </div>
    </div>
    <br />
       <div class="row">
           <div class="col">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" style="margin:0 auto;">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:CommandField ShowSelectButton="True" />
                   <asp:BoundField DataField="member_Id" HeaderText="member_Id" SortExpression="member_Id" Visible="False" />
                   <asp:BoundField DataField="member_No" HeaderText="PNO" SortExpression="member_No" />
                   <asp:BoundField DataField="name" HeaderText="PAdı" SortExpression="name" />
                   <asp:BoundField DataField="surname" HeaderText="PSoyadı" SortExpression="surname" />
                   <asp:BoundField DataField="Tc_No" HeaderText="PTCNO" SortExpression="Tc_No" />
                   <asp:BoundField DataField="date_Of_Birth" HeaderText="PDoğumTarihi" SortExpression="date_Of_Birth" />
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
