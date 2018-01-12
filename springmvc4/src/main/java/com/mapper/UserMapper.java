package com.mapper;

import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

/**
 * 职责
 *
 * @author wangsen
 * @time 2018/1/11
 */
public interface UserMapper {
    public void createUser(@Param("user") User user);
    public void updateUser(User user);
    public void deleteUser(Long userId);

    public void correlationRoles(@Param("userId") Long userId, @Param("roleIds") Long... roleIds);
    public void uncorrelationRoles(Long userId, Long... roleIds);

    User findOne(Long userId);

    User findByUsername(String username);

    Set<String> findRoles(String username);

    Set<String> findPermissions(String username);
}
