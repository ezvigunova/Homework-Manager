<%--***************************************
* replaceAllContent.aspx
* Evgeniya Zvigunova
*
* Replace All content page.
***************************************--%>

<%@ Page Language="C#" 
  MasterPageFile="hwViewer.master" 
  AutoEventWireup="true"  
  CodeFile="ReplaceAll.aspx.cs" 
  Inherits="ReplaceAll" %>

<asp:Content ID="Content1" 
  ContentPlaceHolderID="title" 
  Runat="Server"></asp:Content>

<asp:Content ID="Content2" 
  ContentPlaceHolderID="pageContent" 
  Runat="Server">

  <style>
    .find {
      float: left;
    }

    .replace {
      float: right;
    }

    .main {
      margin: auto; 
      width: 515px; 
      padding: 10px;
    }
  </style>

  <div class="main">
    <asp:TextBox id="text" runat="server" 
      TextMode="MultiLine" width="500" 
      height="200"/><br><br>
      <div class="find">
        Find: <asp:TextBox id="find" 
          runat="server"/>
      </div>
      <div class="replace">
        Replace with: 
        <asp:TextBox id="replacewith" 
          runat="server"/>
      </div><br><br>
      <asp:Button id="submit" runat="server" 
        OnClick="submit_Click" 
        Text="Replace All" /><br><br>
      <asp:Label id="message" 
        runat="server"/><br>
  </div>
</asp:Content>