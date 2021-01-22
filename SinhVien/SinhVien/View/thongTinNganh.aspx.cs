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
    public partial class thongTinNganh : System.Web.UI.Page
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
                dr_khoa.DataSource = SelectDuLieu("SELECT * FROM khoa");
                dr_khoa.DataTextField = "tenkhoa";
                dr_khoa.DataValueField = "makhoa";

                Page.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string maNganh = txtmanganh.Text;
                string tenNganh = txttennganh.Text;
                string maKhoa = dr_khoa.SelectedValue;

                conn.Open();
                string sql = "INSERT INTO nganh(manganh, tennganh, makhoa) VALUES(@maN, @tenN, @maK)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@maN", maNganh);
                cmd.Parameters.AddWithValue("@tenN", tenNganh);
                cmd.Parameters.AddWithValue("@maK", maKhoa);

                cmd.ExecuteNonQuery();
                conn.Close();
                Page.DataBind();
            }
            catch
            {
                lb_thongbao.Text = "Mã ngành không tồn tại";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:65384/View/thongTinNganh.aspx");
        }
    }
}