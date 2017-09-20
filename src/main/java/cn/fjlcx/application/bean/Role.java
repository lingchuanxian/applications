package cn.fjlcx.application.bean;

import javax.persistence.*;

@Table(name = "oa_role")
public class Role {
    @Id
    @Column(name = "rl_id")
    private Integer rlId;

    @Column(name = "rl_code")
    private String rlCode;

    @Column(name = "rl_name")
    private String rlName;

    /**
     * @return rl_code
     */
    public String getRlCode() {
        return rlCode;
    }
    /**
     * @param rlCode
     */
    public void setRlCode(String rlCode) {
        this.rlCode = rlCode;
    }

    /**
     * @return rl_id
     */
    public Integer getRlId() {
        return rlId;
    }

    /**
     * @param rlId
     */
    public void setRlId(Integer rlId) {
        this.rlId = rlId;
    }

    /**
     * @return rl_name
     */
    public String getRlName() {
        return rlName;
    }

    /**
     * @param rlName
     */
    public void setRlName(String rlName) {
        this.rlName = rlName;
    }
}