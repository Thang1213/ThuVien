using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SinhVien.View
{
    public partial class dangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=DM_QLSV;Integrated Security=True");
            string sql = "SELECT * FROM login WHERE username=@user AND password=@pass";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@user", txtusername.Text);
            cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read() == true)
                Response.Redirect("thongTinKhoa.aspx");
            else
                lblThongBao.Text = "Tài khoản không tồn tại hoặc không chính xác";
        }
    }
}