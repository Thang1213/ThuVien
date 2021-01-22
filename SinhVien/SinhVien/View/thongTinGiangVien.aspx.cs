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
    public partial class thongTinGiangVien : System.Web.UI.Page
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
                dr_makhoa.DataSource = SelectDuLieu("SELECT * FROM khoa");
                dr_makhoa.DataTextField = "tenkhoa";
                dr_makhoa.DataValueField = "makhoa";

                Page.DataBind();
            }
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            try
            {
                string maGiaoVien = txtmagiaovien.Text;
                string tenGiaoVien = txthovaten.Text;
                string ngaySinh = txtngaysinh.Text;
                string gioiTinh = dr_gioitinh.SelectedValue;
                string chucVu = dr_chucvu.SelectedValue;
                string hocVi = dr_hocvi.SelectedValue;
                string maKhoa = dr_makhoa.SelectedValue;

                conn.Open();
                string sql = "INSERT INTO giaovien(magiaovien, hovaten, ngaysinh, gioitinh, chucvu, hocvi, makhoa) VALUES(@mgv, @hvt, @ns, @gt, @cv, @hv, @mk)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@mgv", txtmagiaovien.Text);
                cmd.Parameters.AddWithValue("@hvt", txthovaten.Text);
                cmd.Parameters.AddWithValue("@ns", txtngaysinh.Text);
                cmd.Parameters.AddWithValue("@gt", dr_gioitinh.Text);
                cmd.Parameters.AddWithValue("@cv", dr_chucvu.Text);
                cmd.Parameters.AddWithValue("@hv", dr_hocvi.Text);
                cmd.Parameters.AddWithValue("@mk", dr_makhoa.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                lb_thongbao.Text = "Thêm Thành Công";
                Page.DataBind();
            }
            catch
            {
                lb_thongbao.Text = "Thêm Thất Bại!";
            }
        }

        protected void btnlammoi_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:65384/View/thongTinGiangVien.aspx");
        }
    }
}