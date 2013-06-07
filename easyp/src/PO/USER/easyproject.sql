create table users(-- 登陆表
  u_id bigint primary key identity(1,1),
  u_name varchar(50) not null,
  u_passw char(12) default('888888'),
)

create table userinfo( --用户详细表
 ui_id bigint primary key ,
 ui_num char(12) ,  --员工编号
 ui_name varchar(20) , --姓名
 ui_sex char(3) default('男'),  --性别
 ui_bir datetime , --出生日期
 ui_local varchar(120),  --住址
 ui_qq varchar(12), --QQ号码
 ui_tell char(11),  --手机号码
 constraint ui_u_id foreign key (ui_id) references users (u_id)  
)

create table project( --项目表
p_id bigint primary key identity(1,1),
p_name varchar(60) not null unique,
p_manager bigint ,
p_stime datetime default(getdate()), --开始时间
p_etime datetime default(getdate()), --结束时间
p_syno text ,-- 项目简介
p_sec int default(0),
constraint p_m_id foreign key (p_manager) references users (u_id) 
)

create table message( --消息表
m_id bigint primary key identity(1,1),
m_time datetime default(getdate()), --发送时间
m_type int default(0),  --消息类型
m_send bigint ,  --发送者
m_rece bigint ,  --接收者
m_cont text ,    --内容
m_stat tinyint default(0),--已读 1 未读 0
constraint m_s_id foreign key (m_send) references users (u_id) ,
constraint m_l_id foreign key (m_rece) references users (u_id)

)

create table task( --任务表
t_id bigint primary key identity(1,1),
t_name varchar(50) not null,
t_ptime datetime not null,--预计完成时间
t_rtime datetime not null,--实际完成时间
t_stat int default(0),--未完成 0 已完成 1
t_cont text not null,--任务内容
t_pro bigint ,--所属项目
t_duty bigint ,--任务负责人
constraint t_d_id foreign key (t_duty) references users (u_id),
constraint t_p_id foreign key (t_pro) references project (p_id)
)


create table lanmark( --里程碑
l_id bigint primary key identity(1,1),
l_title varchar(50) not null,--标题
l_cont text ,                --内容
l_duty bigint ,              --负责人
l_ptime datetime not null,   --预计完成实际
l_rtime datetime not null,   --实际完成时间
l_pro bigint ,               --所属项目
constraint l_d_id foreign key (l_duty) references users (u_id),
constraint l_p_id foreign key (l_pro) references project (p_id)
)

create table groups( --群组信息
g_id bigint primary key identity(1,1),
g_name varchar(50) not null,
g_creat bigint ,     --创建者
g_pro bigint , --所属项目
constraint g_p_id foreign key (g_pro) references project (p_id)
)

create table groups_list( --成员列表
gl_id bigint ,   --群组id
gl_uid bigint ,  --成员id
PRIMARY KEY(gl_id , gl_uid),
constraint gl_g_id foreign key (gl_id) references groups (g_id),
constraint gl_u_id foreign key (gl_uid) references users (u_id)
)


create table talk(  --讨论区
t_id bigint primary key identity(1,1),
t_time datetime default(getdate()), --发送时间
t_grop bigint ,                   --所属group
t_send bigint ,    -- 发送者           
t_cont text ,      -- 内容
constraint t_s_id foreign key (t_send) references users (u_id) ,
constraint t_g_id foreign key (g_grop) references users (g_id) 

)

create table role ( --角色
 r_id int primary key identity(1,1),
 r_num bigint default(0), -- 用于自定义修改某个用户权限时，此时为用户的id， 否则默认0
 r_name char(12),
 r_limit int,

constraint r_l_id foreign key (r_limit) references limit (l_id)  
)

create table limit (  -- 权限表 0 不允许  1 允许
  l_id int primary key identity(1,1),
  l_scan_all int default(0), --浏览项目所有信息的权限
  l_scan_document int default(0) , --浏览项目所有文档
  l_scan_document_self int default(1) , --浏览自己文档
  l_scan_staff int default(0) , --浏览项目所有成员列表
  l_scanf_staff_self int default (1), --浏览本组成员
  l_scan_talk int default(0) , --浏览本项目内所有组讨论区
  l_scan_talk_self int default(1) , --浏览本组讨论区
  l_scan_task int default(0) , --浏览所有任务
  l_scan_task_self int default(1), --浏览本组任务
  l_scan_landmark int default(1), --浏览所有里程碑
  
)