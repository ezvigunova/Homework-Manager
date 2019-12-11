/*********************************************************
* GoldenRectangle.aspx.cs
* Evgeniya Zvigunova
*
* This code-behind file displays the integer dimensions 
* for a rectangle that approximates a golden rectangle 
* where the width is greater than the height
*********************************************************/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;

//********************************************************

// GoldenRectangle class

public partial class GoldenRectangle : Page
{
  public static Random rand = new Random();
  protected void Page_Load(object s, EventArgs e)
  {
    double ratio = 1.6180;                      // golden ratio
    double height = rand.Next(50, 200);         // get random height
    double width = Math.Round(height * ratio);  // get width
    dimension.Text = width + " x " + height;    // show dimension

    // calculate disparity

    double disparity = ((double)width / height) - ratio;       

    // compare with golden ratio

    if (disparity < 0)
    {
      comparetext.Text = " less than the golden ratio by " +
        string.Format("{0:#.0000}", disparity);
    }
    else if (disparity > 0)
    {
      comparetext.Text = " greater than the golden ratio by " +
        string.Format("{0:#.0000}", disparity);
    }
    else
    {
      comparetext.Text = " equal to golden ratio";
    } // end if
  } // end Page_Load
} // end GoldenRectangle
