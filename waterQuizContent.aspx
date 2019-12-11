<%--***************************************
* waterQuizContent.aspx
* Evgeniya Zvigunova
*
* Water Quiz content content page.
***************************************--%>

<%@ Page Language="C#" MasterPageFile="hwViewer.master" 
  AutoEventWireup="true" %>

<asp:Content ID="Content3" ContentPlaceHolderID="title"
  Runat="Server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pageContent" 
  Runat="Server">

  <style>
    .check {
      color: red;
    }
  </style>

  <script runat="server">
    public void Page_Load()
    {
      timenow.Text = DateTime.Now.ToString();
    } // end Page_Load
  
    // clear all the selections
  
    public void ClearIt(object s, EventArgs e)
    {
      lakes.SelectedIndex = -1;
      canal.SelectedIndex = -1;
      facts.SelectedIndex = -1;
    } // end ClearIt
  </script>

  <h2>Geography Quiz - Bodies of Water</h2> 
  <p>
    Starting time - <asp:Label id="timenow" runat="server"/>
  </p>
  <hr>
  <p>
    Which is the largest lake by volume and holds 
    20% of the world's fresh water?
    <asp:RadioButtonList id="lakes" 
      RepeatColumns="2" runat="server">
      <asp:ListItem Text="Lake Victoria (Kenya)"/>
      <asp:ListItem Text="Great Bear Lake (Canada)"/>
      <asp:ListItem Text="Great Salt Lake (US)"/>
      <asp:ListItem Text="Lake Baikal (Siberia)"/>
      <asp:listitem Text="Lake Titicaca (Peru)"/>
      <asp:ListItem Text="Crystal Peng Lake (Parkville)"/>
    </asp:RadioButtonList><br>
  </p>
  <asp:RequiredFieldValidator ID="lakescheck"  
    CssClass="check" ControlToValidate="lakes" 
    Display="Dynamic" 
    ErrorMessage="You didn't answer this question. Do so!" 
    runat="server"/>
  <p>
    The Suez Canal connects the Atlantic and 
    Pacific oceans.<br>
    <asp:ListBox ID="canal" Rows="2" SelectionMode="Single" 
      Width="50px" runat="server">
      <asp:ListItem Text="true"/>
      <asp:ListItem Text="false"/>
    </asp:ListBox><br><br>
  </p>
  <asp:RequiredFieldValidator ID="canalcheck" CssClass="check"
    ControlToValidate="canal" Display="Dynamic" 
    ErrorMessage="You didn't answer this question. Do so!" 
    runat="server"/>    
  <p>
    What facts are true about Baikal Lake, Siberia? <br>
    Choose 3 answers: <br>
    <asp:CheckBoxList id="facts" 
      RepeatColumns="2" runat="server">
      <asp:ListItem Text="Oldest lake in the world: 
        35 million years old"/>
      <asp:ListItem Text="Experiences no earthquakes 
        or volcanoes"/>
      <asp:ListItem Text="Water level is over 400 meters 
        above sea level"/>
      <asp:ListItem Text="Entire lake water is completely 
        renewed in 500 years"/>
      <asp:listitem Text="Has the purest lake water 
        on the planet"/>
      <asp:ListItem Text="Ice on the entire lake is 
      completely transparent"/>
    </asp:CheckBoxList><br>
  </p>
  <p>
    <asp:Button ID="submit" Text="Submit Quiz Answers" 
      CausesValidation="true" 
      PostBackUrl="waterQuizResultsContent.aspx" 
      runat="server"/> &nbsp;
    <asp:Button ID="clear" Text="Clear" OnClick="ClearIt"
       CausesValidation="false" runat="server" />
  </p>
</asp:Content>

