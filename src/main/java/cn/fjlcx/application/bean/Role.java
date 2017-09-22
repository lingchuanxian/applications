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

    @Column(name = "rl_detail")
    private String rlDetail;

    @Column(name = "rl_order")
    private Integer rlOrder;

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

    /**
     * @return rl_detail
     */
    public String getRlDetail() {
        return rlDetail;
    }

    /**
     * @param rlDetail
     */
    public void setRlDetail(String rlDetail) {
        this.rlDetail = rlDetail;
    }

    /**
     * @return rl_order
     */
    public Integer getRlOrder() {
        return rlOrder;
    }

    /**
     * @param rlOrder
     */
    public void setRlOrder(Integer rlOrder) {
        this.rlOrder = rlOrder;
    }
}