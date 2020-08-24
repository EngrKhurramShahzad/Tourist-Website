using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebEngPro
{
    public partial class AddPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("NewPackages", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramTitle = new SqlParameter()
                    {
                        ParameterName = "@Title",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramTitle);

                    SqlParameter paramDesc = new SqlParameter()
                    {
                        ParameterName = "@Descrip",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramDesc);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Package Is Add Successfully')</script>");
                    AddPackag();
                }
            }
        }
        private void AddPackag()
        {
            txttitle.Text = "";
            txtdescription.Text = "";
        }
    }
}