<%@ Page Title="" Language="C#" MasterPageFile="~/Private/Private.Master" AutoEventWireup="true" CodeBehind="mReport.aspx.cs" Inherits="MemberAutomationSystem.Private.rapordeneme" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
    <div padding="15px">
        <div align="center" style="font-size:30px">Çalışanlar Rapor</div>
        <div align="center" style="width:100%; height:400px">
            
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" style="width:100%; margin:0 auto; text-align:center" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                <LocalReport ReportPath="Report2.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="memberList" TypeName="MemberAutomationSystem.transactions"></asp:ObjectDataSource>
                
        </div>
       </div>
      </div>

    <div class="row">
        <div class="col">
             <%-- <ul>
                        <li><asp:Button ID="Button1" runat="server" Text="Kaydet" Width="100px" CssClass="btn-success"  Font-Bold="True" style="border-radius:15px 15px"/> </li>
           </ul>--%>
        </div>
    </div>
</asp:Content>
