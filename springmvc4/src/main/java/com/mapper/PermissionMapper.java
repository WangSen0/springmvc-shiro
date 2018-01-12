package com.mapper;

import com.entity.Permission;

/**
 * 职责
 *
 * @author wangsen
 * @time 2018/1/11
 */
public interface PermissionMapper {
    public Permission createPermission(Permission permission);

    public void deletePermission(Long permissionId);
}
