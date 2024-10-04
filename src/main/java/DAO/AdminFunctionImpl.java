package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import objects.AdminObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class AdminFunctionImpl {
	private Connection con;
    private ConnectionPool cp;

    public AdminFunctionImpl(ConnectionPool cp) {
        if (cp == null) {
            this.cp = new ConnectionPoolImpl();
        } else {
            this.cp = cp;
        }
        try {
            this.con = this.cp.getConnection("Admin");
            if (this.con.getAutoCommit()) {
                this.con.setAutoCommit(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public AdminObject getAdminDetails(int admin_ID) {
        AdminObject admin = null;
        String sql = "SELECT tbladmin.admin_ID, tbladmin.admin_Name, tbladmin.account_ID, tblaccount.email, tblaccount.role_ID " +
                     "FROM tbladmin " +
                     "JOIN tblaccount ON tbladmin.account_ID = tblaccount.account_ID " +
                     "WHERE tbladmin.admin_ID = ?";
        
        try (PreparedStatement pre = this.con.prepareStatement(sql)) {
            pre.setInt(1, admin_ID);
            try (ResultSet rs = pre.executeQuery()) {
                if (rs.next()) {
                    admin = new AdminObject();
                    admin.setAdmin_ID(rs.getInt("admin_ID"));
                    admin.setAdmin_Name(rs.getString("admin_Name"));
                    admin.setAccount_ID(rs.getInt("account_ID"));
                    admin.setEmail(rs.getString("email"));
                    admin.setRole_ID(rs.getInt("role_ID"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                this.con.rollback();
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }

        return admin;
    }

    public ConnectionPool getCP() {
        return this.cp;
    }

    public void releaseConnection() {
        try {
            this.cp.releaseConnection(this.con, "Admin");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
