using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        ASPxPageControl1.ActiveTabIndex = 1;
    }
    protected void ASPxCardView1_FocusedCardChanged(object sender, EventArgs e)
    {
        int card = ASPxCardView1.FocusedCardIndex;
        object key = ASPxCardView1.GetCardValues(card, ASPxCardView1.KeyFieldName);
        Session["CategoryID"] = key;
    }
}