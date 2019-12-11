/*********************************************************
* ReplaceAll.aspx.cs
* Evgeniya Zvigunova
*
* This code-behind file displays a multi-line text box, 
* a “Find:” text box, a “Replace with:” text box, 
* and a “Replace all” button. Clicking the button 
* causes the multi-line text box’s text to be changed. 
*********************************************************/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;

//********************************************************

// class ReplaceAll

public partial class ReplaceAll : Page
{
  protected void Page_Load(object s, EventArgs e)
  {  }

  // this method replaces text in a text field.

  protected void submit_Click(object s, EventArgs e)
  {
    // check validation whether anything is empty

    if (find.Text.Length == 0)
      {
        message.Text = "You must enter a value in the Find field.";
        return;
      } // end if

    // replace text

    message.Text = null;
    text.Text = text.Text.Replace(find.Text, 
      replacewith.Text);
  } // end submit_Click
} // end ReplaceAll