<%--***************************************
* waterQuizResultsContent.aspx
* Evgeniya Zvigunova
*
* Water Quiz Results content page.
***************************************--%>

<%@ Page Language="C#" 
  MasterPageFile="hwViewer.master" 
  AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" 
  Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" 
  Runat="Server">
  
  <script runat="server">  
    public void Page_Load(object s, EventArgs e)
    {
      RadioButtonList lakeControl; // lake selections
      ListBox canalControl;        // Suez Canal selections
      CheckBoxList factControl;    // Baikal Lake selections

      // get user selections from previous page

      if (PreviousPage !=
        null && PreviousPage.IsCrossPagePostBack)
      {
        // THIS HAS BEEN CHANGED TO HELP FINDCONTROL SEE 
        // THE CONTENTS OF THE FORM IN PREVIOUS CONTENT PAGE
        
        lakeControl =
          (RadioButtonList)PreviousPage.Controls[0].
          FindControl("pageContent").FindControl("lakes");
        canalControl =
          (ListBox)PreviousPage.Controls[0].
          FindControl("pageContent").FindControl("canal");
        factControl =
          (CheckBoxList)PreviousPage.Controls[0].
          FindControl("pageContent").FindControl("facts");
          
        // check if user has selected correct answers

        if (lakeControl.Text == "Lake Baikal (Siberia)")
        {
          lake.Text = lakeControl.Text;
          lakecorr.Text = " correct.";
        }
        else
        {
          lake.Text = lakeControl.Text;
          lakecorr.Text = " incorrect.";
        } // end if 

        // check if user selected right Suez Canal answer

        if (canalControl.Text == "false")
        {
          canal.Text = canalControl.Text;
          canalcorr.Text = " correct.";
        }
        else
        {
          canal.Text = canalControl.Text;
          canalcorr.Text = " incorrect.";
        } // end if

        // check if user has selected correct 
        // Baikal lake facts

        for (int i = 0; i < factControl.Items.Count; i++)
        {
          // display selected Baikal lake facts

          if (factControl.Items[i].Selected)
          {
            fact.Text += factControl.Items[i].Text + ", <br>";
          } // end if

          // check if selected facts are correct

          if (factControl.Items[0].Selected
            && factControl.Items[2].Selected
            && factControl.Items[4].Selected)
          {
            factcorr.Text = " correct.";
          }
          else
          {
            factcorr.Text = " incorrect.";
          } // end if
        } // end for 
      } // end if 
    } // end Page_Load  
  </script>

  <style>
    .ans {
      text-decoration: underline;
    }
  </style>

  <p>
    Which is the largest lake by volume and holds 
    20% of the world's fresh water? <br>
    Your answer <asp:Label id="lake" CssClass="ans" 
      runat="server"/> is 
    <asp:Label id="lakecorr" runat="server"/>
  </p>
  <p>
    The Suez Canal connects the Atlantic and Pacific oceans.<br>
    Your answer <asp:Label id="canal" CssClass="ans" 
      runat="server"/> is 
    <asp:Label id="canalcorr" runat="server"/>
  </p>
  <p>
    What facts are true about Baikal Lake, Siberia?<br />
    Your answers: <br><asp:Label ID="fact" CssClass="ans" 
      runat="server"/> are 
    <asp:Label id="factcorr" runat="server" />
  </p>
</asp:Content>

