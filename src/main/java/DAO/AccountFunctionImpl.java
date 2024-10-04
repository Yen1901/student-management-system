package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import objects.AccountObject;
import util.ConnectionPool;
import util.ConnectionPoolImpl;

public class AccountFunctionImpl {
	private Connection con;
    private ConnectionPool cp;

    public AccountFunctionImpl(ConnectionPool cp) {
        if (cp == null) {
            this.cp = new ConnectionPoolImpl();
        } else {
            this.cp = cp;
        }
        try {
            this.con = this.cp.getConnection("Account");
            if (this.con.getAutoCommit()) {
                this.con.setAutoCommit(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public AccountObject login(String username, String password) {
        AccountObject account = null;
        String sql = "SELECT * FROM tblaccount WHERE username = ? AND password = ?";
        
        try (
            PreparedStatement pre = this.con.prepareStatement(sql)) {
            pre.setString(1, username);
            pre.setString(2, password);
            try (ResultSet rs = pre.executeQuery()) {
                if (rs.next()) {
                    account = new AccountObject();
                    account.setAccount_ID(rs.getInt("account_ID"));
                    account.setUsername(rs.getString("username"));
                    account.setPassword(rs.getString("password"));
                    account.setEmail(rs.getString("email"));
                    account.setRole_ID(rs.getInt("role_ID"));
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
        
        return account;
    }
    
    public ConnectionPool getCP() {
        return this.cp;
    }

    public void releaseConnection() {
        try {
            this.cp.releaseConnection(this.con, "Account");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
}
