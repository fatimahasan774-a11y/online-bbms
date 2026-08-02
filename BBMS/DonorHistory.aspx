<%@ Page Title="" Language="C#" MasterPageFile="~/Donar.Master" AutoEventWireup="true" CodeBehind="donorHistory.aspx.cs" Inherits="BBMS.DonorHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 24px; max-width: 800px; margin: 0 auto;">
        <h2 style="color: #0e4f4a; margin-bottom: 20px;">Donor History</h2>

        <div style="background: #fff; border-radius: 12px; padding: 20px; box-shadow: 0 3px 10px rgba(0,0,0,.05);">
            <asp:Repeater ID="rptHistory" runat="server">
                <HeaderTemplate>
                    <table style="width: 100%; border-collapse: collapse; text-align: left;">
                        <thead>
                            <tr style="border-bottom: 2px solid #e5e7eb; color: #6b7280; font-size: 14px;">
                                <th style="padding: 10px;">Date</th>
                                <th style="padding: 10px;">Center</th>
                                <th style="padding: 10px;">Units</th>
                                <th style="padding: 10px;">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                
                <ItemTemplate>
                            <tr style="border-bottom: 1px solid #f3f4f6; font-size: 14px; color: #374151;">
                                <td style="padding: 12px;"><%# Eval("Date") %></td>
                                <td style="padding: 12px;"><%# Eval("Center") %></td>
                                <td style="padding: 12px;"><%# Eval("Units") %></td>
                                <td style="padding: 12px;">
                                    <span style="background: #dcfce7; color: #166534; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 600;">
                                        <%# Eval("Status") %>
                                    </span>
                                </td>
                            </tr>
                </ItemTemplate>

                <FooterTemplate>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>