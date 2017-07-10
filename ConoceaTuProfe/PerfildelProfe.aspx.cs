using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConoceaTuProfe
{
    public partial class PerfildelProfe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            var noticiaId = Request.QueryString["nid"];
            if (noticiaId == null)
            {
                Response.Redirect("ListadeBuscados.aspx");
            }
        }
    }
}