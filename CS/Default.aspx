<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" AutoPostBack="True" Width="600px" ActiveTabIndex="0">
            <TabPages>
                <dx:TabPage Text="Categories">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxCardView ID="ASPxCardView1" runat="server" OnFocusedCardChanged="ASPxCardView1_FocusedCardChanged" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" KeyFieldName="CategoryID" >
                                <SettingsBehavior AllowFocusedCard="True" ProcessFocusedCardChangedOnServer="True" />
                                <Columns>
                                    <dx:CardViewTextColumn ShowInCustomizationForm="True" FieldName="CategoryID" ReadOnly="True" Visible="False">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn FieldName="CategoryName" ShowInCustomizationForm="True" VisibleIndex="0">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn ShowInCustomizationForm="True" Name="colShowProducts" VisibleIndex="1" Width="130px">
                                        <DataItemTemplate>
                                            <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Show products...">
                                            </dx:ASPxButton>
                                        </DataItemTemplate>
                                    </dx:CardViewTextColumn>
                                </Columns>
                                <CardLayoutProperties>
                                    <Items>
                                        <dx:CardViewCommandLayoutItem HorizontalAlign="Right" ShowEditButton="True">
                                        </dx:CardViewCommandLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColumnName="CategoryName">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColumnName="colShowProducts"></dx:CardViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                                        </dx:EditModeCommandLayoutItem>
                                    </Items>
                                </CardLayoutProperties>
                            </dx:ASPxCardView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" 
                                ProviderName="System.Data.OleDb" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Products">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                        <dx:ASPxCardView ID="ASPxCardView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="ProductID">
                            <Columns>
                                <dx:CardViewTextColumn FieldName="ProductID" ReadOnly="True" Visible="False">
                                </dx:CardViewTextColumn>
                                <dx:CardViewTextColumn FieldName="ProductName" VisibleIndex="0">
                                </dx:CardViewTextColumn>
                                <dx:CardViewTextColumn FieldName="CategoryID" VisibleIndex="1">
                                </dx:CardViewTextColumn>
                                <dx:CardViewTextColumn FieldName="UnitPrice" VisibleIndex="2">
                                </dx:CardViewTextColumn>
                            </Columns>
                        </dx:ASPxCardView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" 
                            ProviderName="System.Data.OleDb" SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="1" Name="CategoryID" SessionField="CategoryID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>                     
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>

            </TabPages>
            </dx:ASPxPageControl>


        <br />

    </div>
    </form>
</body>
</html>
