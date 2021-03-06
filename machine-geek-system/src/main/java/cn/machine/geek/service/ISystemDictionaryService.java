package cn.machine.geek.service;

import java.util.Map;

/**
 * @Author: MachineGeek
 * @Description: 系统字典服务
 * @Email: 794763733@qq.com
 * @Date: 2020/11/17
 */
public interface ISystemDictionaryService {
    String getByKey(String key);
    Map<String,String> list();
    Integer insert(String key,String value);
}
