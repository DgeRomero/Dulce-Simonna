using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace DulceSimonna_Web
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos;
        protected void Page_Load(object sender, EventArgs e)
        {
            ListadoNegocio negocio = new ListadoNegocio();
            listaArticulos = negocio.listar();

            if (!IsPostBack)
            {
                repetidor.DataSource = listaArticulos;
                repetidor.DataBind();
            }
        }
    }
}