using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SinhVien.View
{
    public partial class conHoc : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=DM_QLSV;Integrated Security=True");

        public DataTable SelectDuLieu(string sql)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            return dt;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drTinhTrang.DataSource = SelectDuLieu("SELECT * FROM tinhtrang");
                drTinhTrang.DataTextField = "tentinhtrang";
                drTinhTrang.DataValueField = "matinhtrang";

                drTinhTrang.DataBind();
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tuKhoa = drTinhTrang.SelectedValue;
            Label1.Text = "";
            if (tuKhoa == "0")
            {
                grvConHoc.DataSource = SelectDuLieu("SELECT * FROM sinhvien, tinhtrang WHERE sinhvien.matinhtrang = tinhtrang.matinhtrang AND sinhvien.matinhtrang = '0' ");
                grvConHoc.DataBind();
            }
            if(tuKhoa == "1")
            {
                grvConHoc.DataSource = SelectDuLieu("SELECT * FROM sinhvien, tinhtrang WHERE sinhvien.matinhtrang = tinhtrang.matinhtrang AND sinhvien.matinhtrang = '1' ");
                grvConHoc.DataBind();
            }
            if (tuKhoa == "2")
            {
                grvConHoc.DataSource = SelectDuLieu("SELECT * FROM sinhvien, tinhtrang WHERE sinhvien.matinhtrang = tinhtrang.matinhtrang AND sinhvien.matinhtrang = '2' ");
                grvConHoc.DataBind();
            }
        }
    }
}