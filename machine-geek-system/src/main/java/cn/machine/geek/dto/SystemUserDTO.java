package cn.machine.geek.dto;

import cn.machine.geek.entity.SystemUser;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @Author: MachineGeek
 * @Description: 系统用户传输对象
 * @Date: 2020/11/3
 */
@Data
public class SystemUserDTO extends SystemUser {
    @ApiModelProperty(value = "系统角色ID")
    @JsonFormat(shape = JsonFormat.Shape.STRING)
    private List<Long> systemRoleIds;
}
