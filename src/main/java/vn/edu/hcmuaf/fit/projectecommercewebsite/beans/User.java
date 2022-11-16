package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

public class User {
    private String username;
    private String password;
    private String name;
    private String address;
    private String addressEmail;
    private String numberPhone;

    public User(String username, String password, String name, String address, String addressEmail, String numberPhone) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.address = address;
        this.addressEmail = addressEmail;
        this.numberPhone = numberPhone;
    }
    public User(){

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddressEmail() {
        return addressEmail;
    }

    public void setAddressEmail(String addressEmail) {
        this.addressEmail = addressEmail;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }
}
