using App.Data.Repository;
using App.Data.Repository.Interface;
using App.UI.WebForm.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ETrack = App.Entities.Base;

namespace App.UI.WebForm.Pages.Mantenimientos.Track
{
    public partial class TrackEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitValues();
        }

        private void InitValues()
        {
            IAppUnitOfWork uw = new AppUnitOfWork();

            //Configurando el combo de Alubums
            var albums = uw.AlbumRepository.GetAll();
            Helpers.ConfigurarCombo(ddlAlbum, "Title", "AlbumId", albums);

            //Configurando el combo de Albums
            var medios = uw.MediaTypeRepository.GetAll();
            Helpers.ConfigurarCombo(ddlMedio, "Name", "MediaTypeId", medios);

            //Configurando el combo de Generos
            var generos = uw.GenreRepository.GetAll();
            Helpers.ConfigurarCombo(ddlGenero,"Name", "GenreId", generos);

            uw.Dispose(); //Liberando el UW

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Guardar();
        }

        private void Guardar()
        {
            var entity = new ETrack.Track();
            entity.Name = txtNombre.Text;
            entity.AlbumId = Convert.ToInt32(ddlAlbum.SelectedValue);
            entity.MediaTypeId = Convert.ToInt32(ddlMedio.SelectedValue);
            entity.GenreId = Convert.ToInt32(ddlGenero.SelectedValue);
            entity.Composer = txtCompositor.Text;
            entity.Milliseconds = Convert.ToInt32(txtDuracion.Text);
            entity.Bytes = Convert.ToInt32(txtPeso.Text);
            entity.UnitPrice = Convert.ToDecimal(txtPrecio.Text);

            IAppUnitOfWork uw = new AppUnitOfWork();
            uw.TrackRepository.Add(entity);
            uw.Complete();

            uw.Dispose(); //Liberando conexión
        }
    }
}