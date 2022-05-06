﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtUser.Text=="" && txtPassword.Text=="")
            {
                new frmMain().Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Tai khoan va mat khau khong duoc de trong! vui long cung cap du thong tin.");
                txtUser.Clear();
                txtPassword.Clear();
                txtUser.Focus();
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
