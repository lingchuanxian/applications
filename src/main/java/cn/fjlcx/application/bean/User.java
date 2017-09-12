package cn.fjlcx.application.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "oa_user")
public class User {
    @Id
    @Column(name = "us_id")
    private Integer usId;

    @Column(name = "us_loginname")
    private String usLoginname;

    @Column(name = "us_pwd")
    private String usPwd;

    @Column(name = "us_role")
    private Integer usRole;

    @Column(name = "us_head")
    private String usHead;

    @Column(name = "us_name")
    private String usName;

    /**
     * 0：男
1：女
     */
    @Column(name = "us_sex")
    private Integer usSex;

    @Column(name = "us_phone")
    private String usPhone;

    @Column(name = "us_mail")
    private String usMail;

    @Column(name = "us_address")
    private String usAddress;

    /**
     * 0：正常
1：禁用
     */
    @Column(name = "us_state")
    private Integer usState;

    @Column(name = "us_registdate")
    private Date usRegistdate;

    @Column(name = "us_lastlogindate")
    private Date usLastlogindate;

    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @return us_id
     */
    public Integer getUsId() {
        return usId;
    }

    /**
     * @param usId
     */
    public void setUsId(Integer usId) {
        this.usId = usId;
    }

    /**
     * @return us_loginname
     */
    public String getUsLoginname() {
        return usLoginname;
    }

    /**
     * @param usLoginname
     */
    public void setUsLoginname(String usLoginname) {
        this.usLoginname = usLoginname;
    }

    /**
     * @return us_pwd
     */
    public String getUsPwd() {
        return usPwd;
    }

    /**
     * @param usPwd
     */
    public void setUsPwd(String usPwd) {
        this.usPwd = usPwd;
    }

    /**
     * @return us_role
     */
    public Integer getUsRole() {
        return usRole;
    }

    /**
     * @param usRole
     */
    public void setUsRole(Integer usRole) {
        this.usRole = usRole;
    }

    /**
     * @return us_head
     */
    public String getUsHead() {
        return usHead;
    }

    /**
     * @param usHead
     */
    public void setUsHead(String usHead) {
        this.usHead = usHead;
    }

    /**
     * @return us_name
     */
    public String getUsName() {
        return usName;
    }

    /**
     * @param usName
     */
    public void setUsName(String usName) {
        this.usName = usName;
    }

    /**
     * 获取0：男
1：女
     *
     * @return us_sex - 0：男
1：女
     */
    public Integer getUsSex() {
        return usSex;
    }

    /**
     * 设置0：男
1：女
     *
     * @param usSex 0：男
1：女
     */
    public void setUsSex(Integer usSex) {
        this.usSex = usSex;
    }

    /**
     * @return us_phone
     */
    public String getUsPhone() {
        return usPhone;
    }

    /**
     * @param usPhone
     */
    public void setUsPhone(String usPhone) {
        this.usPhone = usPhone;
    }

    /**
     * @return us_mail
     */
    public String getUsMail() {
        return usMail;
    }

    /**
     * @param usMail
     */
    public void setUsMail(String usMail) {
        this.usMail = usMail;
    }

    /**
     * @return us_address
     */
    public String getUsAddress() {
        return usAddress;
    }

    /**
     * @param usAddress
     */
    public void setUsAddress(String usAddress) {
        this.usAddress = usAddress;
    }

    /**
     * 获取0：正常
1：禁用
     *
     * @return us_state - 0：正常
1：禁用
     */
    public Integer getUsState() {
        return usState;
    }

    /**
     * 设置0：正常
1：禁用
     *
     * @param usState 0：正常
1：禁用
     */
    public void setUsState(Integer usState) {
        this.usState = usState;
    }

    /**
     * @return us_registdate
     */
    public Date getUsRegistdate() {
        return usRegistdate;
    }

    /**
     * @param usRegistdate
     */
    public void setUsRegistdate(Date usRegistdate) {
        this.usRegistdate = usRegistdate;
    }

    /**
     * @return us_lastlogindate
     */
    public Date getUsLastlogindate() {
        return usLastlogindate;
    }

    /**
     * @param usLastlogindate
     */
    public void setUsLastlogindate(Date usLastlogindate) {
        this.usLastlogindate = usLastlogindate;
    }

    @Override
    public String toString() {
        return "OaUser{" +
                "usId=" + usId +
                ", usLoginname='" + usLoginname + '\'' +
                ", usPwd='" + usPwd + '\'' +
                ", usRole=" + usRole +
                ", usHead='" + usHead + '\'' +
                ", usName='" + usName + '\'' +
                ", usSex=" + usSex +
                ", usPhone='" + usPhone + '\'' +
                ", usMail='" + usMail + '\'' +
                ", usAddress='" + usAddress + '\'' +
                ", usState=" + usState +
                ", usRegistdate=" + usRegistdate +
                ", usLastlogindate=" + usLastlogindate +
                ", role='" + role + '\'' +
                '}';
    }
}