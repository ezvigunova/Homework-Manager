<%--***************************************
* goldenRectangleContent.aspx
* Evgeniya Zvigunova
*
* Golden Rectangle content page.
***************************************--%>

<%@ Page Language="C#" Title="Content Page" 
  MasterPageFile="hwViewer.master" 
  AutoEventWireup="true" 
  CodeFile="GoldenRectangle.aspx.cs" 
  Inherits="GoldenRectangle" %>

<asp:Content ID="Content1" 
  ContentPlaceHolderID="title" 
  Runat="Server">
</asp:Content>

<asp:Content ID="Content2" 
  ContentPlaceHolderID="pageContent" 
  Runat="Server">
  <div>
    <h2>Golden Rectangle Generator</h2>  
    <p>
      Dimension for a rectangle that 
      approximates a golden rectangle: 
      <asp:Label id="dimension" runat="server"/><br>
      The rectangle's dimension form a ratio that is 
      <asp:Label id="comparetext" runat="server"/>
    </p>
    <asp:Button Text="New Golden Rectangle" 
      runat="server"/>
  </div>
</asp:Content>