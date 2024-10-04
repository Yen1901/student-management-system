package objects;

public class AccountObject {
	private int account_ID;
	private String username;
	private String password;
	private String email;
	private int role_ID;
	
	public AccountObject() {
		
	}

	public AccountObject(int account_ID, String username, String password, String email, int role_ID) {
		this.account_ID = account_ID;
		this.username = username;
		this.password = password;
		this.email = email;
		this.role_ID = role_ID;
	}

	public int getAccount_ID() {
		return account_ID;
	}

	public void setAccount_ID(int account_ID) {
		this.account_ID = account_ID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
		return "AccountObject [account_ID=" + account_ID + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", role_ID=" + role_ID + "]";
	}
	
	
}
