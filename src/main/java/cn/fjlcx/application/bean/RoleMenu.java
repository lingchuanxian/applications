package cn.fjlcx.application.bean;

import javax.persistence.*;

@Table(name = "oa_role_menu")
public class RoleMenu {
    @Id
    @Column(name = "rm_id")
    private Integer rmId;

    @Column(name = "rm_rid")
    private Integer rmRid;

    @Column(name = "rm_mid")
    private Integer rmMid;

    /**
     * @return rm_id
     */
    public Integer getRmId() {
        return rmId;
    }

    /**
     * @param rmId
     */
    public void setRmId(Integer rmId) {
        this.rmId = rmId;
    }

    /**
     * @return rm_rid
     */
    public Integer getRmRid() {
        return rmRid;
    }

    /**
     * @param rmRid
     */
    public void setRmRid(Integer rmRid) {
        this.rmRid = rmRid;
    }

    /**
     * @return rm_mid
     */
    public Integer getRmMid() {
        return rmMid;
    }

    /**
     * @param rmMid
     */
    public void setRmMid(Integer rmMid) {
        this.rmMid = rmMid;
    }
}