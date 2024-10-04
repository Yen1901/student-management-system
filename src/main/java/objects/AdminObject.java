package objects;

public class AdminObject {
	private int admin_ID;
    private String admin_Name;
    private int account_ID;
    private String email;
    private int role_ID;

    public AdminObject() {
    }

    public AdminObject(int admin_ID, String admin_Name, int account_ID, String email, int role_ID) {
        this.admin_ID = admin_ID;
        this.admin_Name = admin_Name;
        this.account_ID = account_ID;
        this.email = email;
        this.role_ID = role_ID;
    }

    public int getAdmin_ID() {
        return admin_ID;
    }

    public void setAdmin_ID(int admin_ID) {
        this.admin_ID = admin_ID;
    }

    public String getAdmin_Name() {
        return admin_Name;
    }

    public void setAdmin_Name(String admin_Name) {
        this.admin_Name = admin_Name;
    }

    public int getAccount_ID() {
        return account_ID;
    }

    public void setAccount_ID(int account_ID) {
        this.account_ID = account_ID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole_ID() {
        return role_ID;
    }

    public void setRole_ID(int role_ID) {
        this.role_ID = role_ID;
    }

    @Override
    public String toString() {
        return "AdminObject [admin_ID=" + admin_ID + ", admin_Name=" + admin_Name + ", account_ID=" + account_ID
                + ", email=" + email + ", role_ID=" + role_ID + "]";
    }
}
