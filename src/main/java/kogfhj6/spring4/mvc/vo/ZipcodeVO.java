package kogfhj6.spring4.mvc.vo;

public class ZipcodeVO {
    private String zipcode;
    private String sdo;
    private String gugun;
    private String dong;
    private String ri;
    private String bunji;

    public ZipcodeVO() { }

    public ZipcodeVO(String zipcode, String sdo, String gugun, String dong, String ri) {
        this.zipcode = zipcode;
        this.sdo = sdo;
        this.gugun = gugun;
        this.dong = dong;
        this.ri = ri;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getSdo() {
        return sdo;
    }

    public void setSdo(String sdo) {
        this.sdo = sdo;
    }

    public String getGugun() {
        return gugun;
    }

    public void setGugun(String gugun) {
        this.gugun = gugun;
    }

    public String getDong() {
        return dong;
    }

    public void setDong(String dong) {
        this.dong = dong;
    }

    public String getRi() {
        return ri;
    }

    public void setRi(String ri) {
        this.ri = ri;
    }
}
