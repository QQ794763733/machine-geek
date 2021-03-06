package cn.machine.geek.service.impl;

import cn.machine.geek.entity.SystemUser;
import cn.machine.geek.mapper.ISystemUserMapper;
import cn.machine.geek.service.ISystemUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @Author: MachineGeek
 * @Description: 系统用户服务实现类
 * @Date: 2020/10/3
 */
@Service
public class SystemUserServiceImpl extends ServiceImpl<ISystemUserMapper, SystemUser> implements ISystemUserService {
}
