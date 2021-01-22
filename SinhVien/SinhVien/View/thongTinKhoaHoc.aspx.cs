using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SinhVien.View
{
    public partial class thongTinKhoaHoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=DM_QLSV;Integrated Security=True");

                string maKhoaHoc = txtmakhoahoc.Text;
                string tenKhoaHoc = txttenkhoahoc.Text;

                conn.Open();
                string sql = "INSERT INTO khoahoc(makhoahoc, tenkhoahoc) VALUES(@mkh, @tkh)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@mkh", txtmakhoahoc.Text);
                cmd.Parameters.AddWithValue("@tkh", txttenkhoahoc.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                Page.DataBind();
            }
            catch
            {
                lb_thongbao.Text = "Mã khóa học đã tồn tại";
            }
        }
    }
}