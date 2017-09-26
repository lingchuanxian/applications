package cn.fjlcx.application.bean;

import javax.persistence.*;

@Table(name = "oa_user_role")
public class UserRole {
    @Id
    @Column(name = "ur_id")
    private Integer urId;

    @Column(name = "ur_uid")
    private Integer urUid;

    @Column(name = "ur_rid")
    private Integer urRid;
    
    @Transient
    private Role urRole;
    
	public Role getUrRole() {
		return urRole;
	}

	public void setUrRole(Role urRole) {
		this.urRole = urRole;
	}

	/**
     * @return ur_id
     */
    public Integer getUrId() {
        return urId;
    }

    /**
     * @param urId
     */
    public void setUrId(Integer urId) {
        this.urId = urId;
    }

    /**
     * @return ur_uid
     */
    public Integer getUrUid() {
        return urUid;
    }

    /**
     * @param urUid
     */
    public void setUrUid(Integer urUid) {
        this.urUid = urUid;
    }

    /**
     * @return ur_rid
     */
    public Integer getUrRid() {
        return urRid;
    }

    /**
     * @param urRid
     */
    public void setUrRid(Integer urRid) {
        this.urRid = urRid;
    }
}