-- 权限补丁脚本

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `act_id_group`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`; 
-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`; 

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_membership`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`; 

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_user`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`; 

-- ----------------------------
-- Records of act_id_user
-- ----------------------------




create view act_id_group (`ID_`,`REV_`,`NAME_`,`TYPE_`) as
select Cast( role_id as char),1,role_name,'1'from sys_role;


create view act_id_user (`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) as
select Cast( user_id as char),1,username,name,email,password,null  from sys_user;
 
   
 
create view act_id_info (`ID_`,`REV_`,`USER_ID_`,`TYPE_`,`KEY_`,`VALUE_`,`PASSWORD_`,`PARENT_ID_`) as
select Cast( user_id as char),1,Cast( user_id as char),'1','1',null,null,null from sys_user;
     
 

create view act_id_membership (`USER_ID_`,`GROUP_ID_`) as
select Cast( user_id as char),Cast( role_id as char) from sys_user_role;

