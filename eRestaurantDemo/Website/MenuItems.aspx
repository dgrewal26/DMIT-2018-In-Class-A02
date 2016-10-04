<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MenuItems.aspx.cs" Inherits="MenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Our Menu</h1>
    <asp:GridView ID="MenuGridView" runat="server"></asp:GridView>
    <hr />
    <asp:repeater ID="MenuRepeter" runat="server" 
        ItemType="eRestaurant.Entities.DTO.CategoryWithItems">
        <ItemTemplate>
            <div>
                <h3><%# Item.Description %></h3
                <blockQuote>
                    <asp:Repeater ID="MenuItemRepeter" runat="server"
                        itemtype="eRestaurant.Entities.POCO.MenuItem"
                        DataSource="<%# Item.MenuItems %>" >
                        <ItemTemplate>
                            <b><%# Item.Description %></b> &ndash;
                                <%# Item.Price.ToString("C") %> &ndash;
                                <%# Item.Calories %>
                        </ItemTemplate>
                    </asp:Repeater>
                </blockQuote>
            </div>
        </ItemTemplate>
    </asp:repeater>
</asp:Content>

