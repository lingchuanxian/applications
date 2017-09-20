package cn.fjlcx.application.bean;

import javax.persistence.*;

@Table(name = "oa_menu")
public class Menu {
    @Id
    @Column(name = "mu_id")
    private Integer muId;

    @Column(name = "mu_text")
    private String muText;

    @Column(name = "mu_state")
    private String muState;

    @Column(name = "mu_iconCls")
    private String muIconcls;

    @Column(name = "mu_url")
    private String muUrl;

    @Column(name = "mu_pid")
    private Integer muPid;
    
    @Column(name = "mu_checked")
    private String muChecked;
    
    @Column(name = "mu_order")
    private Integer muOrder;
    
    public String getMuChecked() {
		return muChecked;
	}

	public void setMuChecked(String muChecked) {
		this.muChecked = muChecked;
	}

	public Integer getMuOrder() {
		return muOrder;
	}

	public void setMuOrder(Integer muOrder) {
		this.muOrder = muOrder;
	}

	/**
     * @return mu_id
     */
    public Integer getMuId() {
        return muId;
    }

    /**
     * @param muId
     */
    public void setMuId(Integer muId) {
        this.muId = muId;
    }

    /**
     * @return mu_text
     */
    public String getMuText() {
        return muText;
    }

    /**
     * @param muText
     */
    public void setMuText(String muText) {
        this.muText = muText;
    }

    /**
     * @return mu_state
     */
    public String getMuState() {
        return muState;
    }

    /**
     * @param muState
     */
    public void setMuState(String muState) {
        this.muState = muState;
    }

    /**
     * @return mu_iconCls
     */
    public String getMuIconcls() {
        return muIconcls;
    }

    /**
     * @param muIconcls
     */
    public void setMuIconcls(String muIconcls) {
        this.muIconcls = muIconcls;
    }

    /**
     * @return mu_url
     */
    public String getMuUrl() {
        return muUrl;
    }

    /**
     * @param muUrl
     */
    public void setMuUrl(String muUrl) {
        this.muUrl = muUrl;
    }

    /**
     * @return mu_pid
     */
    public Integer getMuPid() {
        return muPid;
    }

    /**
     * @param muPid
     */
    public void setMuPid(Integer muPid) {
        this.muPid = muPid;
    }

	@Override
	public String toString() {
		return "Menu [muId=" + muId + ", muText=" + muText + ", muState=" + muState + ", muIconcls=" + muIconcls
				+ ", muUrl=" + muUrl + ", muPid=" + muPid + "]";
	}
}