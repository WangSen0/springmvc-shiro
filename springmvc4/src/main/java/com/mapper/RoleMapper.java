package com.mapper;

import com.entity.Role;

/**
 * 职责
 *
 * @author wangsen
 * @time 2018/1/11
 */
public interface RoleMapper {
    public Role createRole(Role role);
    public void deleteRole(Long roleId);

    public void correlationPermissions(Long roleId, Long... permissionIds);
    public void uncorrelationPermissions(Long roleId, Long... permissionIds);
}
