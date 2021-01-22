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
    public partial class thongTinLop : System.Web.UI.Page
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
            dr_khoahoc.DataSource = SelectDuLieu("SELECT * FROM khoahoc");
            dr_khoahoc.DataTextField = "tenkhoahoc";
            dr_khoahoc.DataValueField = "makhoahoc";

            dr_nganh.DataSource = SelectDuLieu("SELECT * FROM nganh");
            dr_nganh.DataTextField = "tennganh";
            dr_nganh.DataValueField = "manganh";

            Page.DataBind();
        }

        protected void btn_them(object sender, EventArgs e)
        {
            try
            {
                string maLop = txtmalop.Text;
                string tenLop = txttenlop.Text;
                string maKhoaHoc = dr_khoahoc.SelectedValue;
                string maNganh = dr_nganh.SelectedValue;

                conn.Open();
                string sql = "INSERT INTO lop(malop, tenlop, makhoahoc, manganh) VALUES(@ml, @tl, @mkh, @mn)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ml", maLop);
                cmd.Parameters.AddWithValue("@tl", tenLop);
                cmd.Parameters.AddWithValue("@mkh", maKhoaHoc);
                cmd.Parameters.AddWithValue("@mn", maNganh);

                cmd.ExecuteNonQuery();
                conn.Close();
                Page.DataBind();
            }
            catch
            {
                lb_thongbao.Text = "Mã lớp không tồn tại";
            }
        }

        protected void btn_lammoi(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:65384/View/thongTinLop.aspx");
        }
    }
}