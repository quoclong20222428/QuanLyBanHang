﻿using System;
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
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void mnuChatLieu_Click(object sender, EventArgs e)
        {
            frmDanhMucChatLieu frmCl = new frmDanhMucChatLieu();
            frmCl.ShowDialog();
        }

        private void mnuNhanVien_Click(object sender, EventArgs e)
        {
            frmDMNVien frmNV = new frmDMNVien();
            frmNV.ShowDialog();
        }

        private void mnuKhachHang_Click(object sender, EventArgs e)
        {
            frmDanhMucKhachHang frmKH = new frmDanhMucKhachHang();
            frmKH.ShowDialog();
        }

        private void mnuSanPham_Click(object sender, EventArgs e)
        {
            frmDanhMucHangHoa frmHH = new frmDanhMucHangHoa();
            frmHH.ShowDialog();
        }

        private void hóaĐơnBánToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmHoaDonBanHang frmHDB = new frmHoaDonBanHang();
            frmHDB.ShowDialog();
        }

        private void hóaĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTimHDBan frmTHDB= new frmTimHDBan();
            frmTHDB.ShowDialog();
        }

        private void hàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTimHang frmTimHang = new frmTimHang();
            frmTimHang.ShowDialog();
        }

        private void doanhThuToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void hàngTồnToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void kháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTimKhach khach = new frmTimKhach();
            khach.ShowDialog();
        }
    }
}
