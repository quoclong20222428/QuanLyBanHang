using QUANLYBANHANG.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYBANHANG
{
    public partial class frmTimKhach : Form
    {
        DataTable tblKhach;
        public frmTimKhach()
        {
            InitializeComponent();
        }

        private void frmTimKhach_Load(object sender, EventArgs e)
        {

        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string sql, maKhach, tenKhach;
            if ((txtMaKhach.Text == "") && (txtTenKhach.Text == "") && (txtSDT.Text == ""))
            {
                MessageBox.Show("Hãy nhập một điều kiện tìm kiếm!!", "Yêu cầu .. ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            sql = "select * from tblKhach where 1=1";
            maKhach = txtMaKhach.Text.Trim();
            tenKhach = txtTenKhach.Text.Trim();
            if (txtMaKhach.Text != "")
            {
                sql += "and lower(MaKhach) like N'%" + maKhach.ToLower() + "%'";
            }
            if (txtTenKhach.Text != "")
            {
                sql += "and lower(TenKhach) like N'%" + tenKhach.ToLower() + "%'";
            }
            if (txtSDT.Text != "")
            {
                sql += "and DienThoai like '" + txtSDT.Text + "'";
            }
            tblKhach = Functions.GetDataTable(sql);
            if (tblKhach.Rows.Count == 0)
            {
                MessageBox.Show("Không có bản ghi nào thỏa mãn", "Thông baó", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Có " + tblKhach.Rows.Count + " bản ghi thỏa mãn điều kiện.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            dtgvKhach.DataSource = tblKhach;
            Load_Khach();
        }

        public void Load_Khach()
        {
            dtgvKhach.Columns[0].HeaderText = "Mã khách";
            dtgvKhach.Columns[1].HeaderText = "Tên khách";
            dtgvKhach.Columns[2].HeaderText = "Địa chỉ";
            dtgvKhach.Columns[3].HeaderText = "Số điện thoại";

            dtgvKhach.Columns[0].Width = 80;
            dtgvKhach.Columns[1].Width = 300;
            dtgvKhach.Columns[2].Width = 200;
            dtgvKhach.Columns[3].Width = 255;

            dtgvKhach.AllowUserToAddRows = false;
            dtgvKhach.AllowUserToDeleteRows = false;
            dtgvKhach.EditMode = DataGridViewEditMode.EditProgrammatically;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
