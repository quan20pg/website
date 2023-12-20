/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ASUS
 */
public class Account {
    private int AccountID;
    private String username;
    private String password;
    private int isSell;
    private int isAdmin;

    public Account() {
    }

    public Account(int AccountID, String username, String password, int isSell, int isAdmin) {
        this.AccountID = AccountID;
        this.username = username;
        this.password = password;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
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

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "AccountID=" + AccountID + ", username=" + username + ", password=" + password + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
    
    
}
