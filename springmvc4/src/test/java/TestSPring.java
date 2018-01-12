import com.entity.User;
import com.mapper.UserMapper;
import com.server.UserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Set;

/**
 * 职责
 *
 * @author wangsen
 * @time 2017/12/19
 */

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestSPring {

    @Autowired
    UserMapper userMapper;
    @Test
    public  void test(){
        Log log=LogFactory.getLog(TestSPring.class);
        log.debug("111");
        log.info("125");
        log.warn("485");
        log.error("error");

    }
    @Test
    public void testUser()throws Exception{
        Set<String> roles=userMapper.findRoles("wang");
        Set<String> permissions=userMapper.findPermissions("zhang");
        userMapper.correlationRoles(new Long(9),new Long(5),new Long(6));
    }
}
