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
    public partial class thongTinSinhVien : System.Web.UI.Page
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
            dr_matinhtrang.DataSource = SelectDuLieu("SELECT * FROM tinhtrang");
            dr_matinhtrang.DataTextField = "tentinhtrang";
            dr_matinhtrang.DataValueField = "matinhtrang";

            dr_malop.DataSource = SelectDuLieu("SELECT * FROM lop");
            dr_malop.DataTextField = "tenlop";
            dr_malop.DataValueField = "malop";

            Page.DataBind();
        }

        protected void btn_them(object sender, EventArgs e)
        {
            try
            {
                string maSinhVien = txtmasinhvien.Text;
                string hoVaTen = txthovaten.Text;
                string ngaySinh = txtngaysinh.Text;
                string gioiTinh = dr_gioitinh.SelectedValue;
                string sdt = txtsdtgiadinh.Text;
                string tinhTrang = dr_matinhtrang.SelectedValue;
                string maLop = dr_malop.SelectedValue;

                conn.Open();
                string sql = "INSERT INTO sinhvien(masinhvien, hovaten, gioitinh, sdtgiadinh, matinhtrang, malop, ngaysinh) VALUES(@msv, @hvt, @gt, @sdt, @mtt, @ml, @ns)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@msv", maSinhVien);
                cmd.Parameters.AddWithValue("@hvt", hoVaTen);
                cmd.Parameters.AddWithValue("@gt", gioiTinh);
                cmd.Parameters.AddWithValue("@sdt", sdt);
                cmd.Parameters.AddWithValue("@mtt", tinhTrang);
                cmd.Parameters.AddWithValue("@ml", maLop);
                cmd.Parameters.AddWithValue("@ns", ngaySinh);

                cmd.ExecuteNonQuery();
                conn.Close();
                Page.DataBind();
            }
            catch
            {
                lb_thongbao.Text = "Mã sinh viên đã tồn tại";
            }
        }

        protected void btn_lammoi(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:65384/View/thongTinSinhVien.aspx");
        }
    }
}