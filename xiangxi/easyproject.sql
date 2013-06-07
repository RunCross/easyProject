create table users(
  u_id bigint primary key identity(1,1),
  u_name varchar(50) not null,
  u_passw char(12) default('888888')
)

create table project(
p_id bigint primary key identity(1,1),
p_name varchar(60) not null unique,
p_manager bigint ,
p_stime datetime default(getdate()),
p_etime datetime default(getdate()),
p_syno text ,-- 项目简介
p_sec int default(0),
constraint p_m_id foreign key (p_manager) references users (u_id) 
)

create table message(
m_id bigint primary key identity(1,1),
m_time datetime default(getdate()),
m_type int default(0),
m_send bigint ,
m_rece bigint ,
m_cont text ,
m_stat tinyint default(0),--已读 1 未读 0
constraint m_s_id foreign key (m_send) references users (u_id) ,
constraint m_r_id foreign key (m_rece) references users (u_id)

)

create table task(
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
g_man1 bigint ,      --管理员1
g_man2 bigint ,      --管理员2
)

create table groups_list( --成员列表
gl_id bigint ,   --群组id
gl_uid bigint ,  --成员id
PRIMARY KEY(gl_id , gl_uid),
constraint gl_g_id foreign key (gl_id) references groups (g_id),
constraint gl_u_id foreign key (gl_uid) references users (u_id)
)


create table talk( 
t_id bigint primary key identity(1,1),
t_time datetime default(getdate()),
t_grop bigint ,                   --所属group
t_send bigint ,    -- 发送者           
t_cont text ,      -- 内容
constraint t_s_id foreign key (t_send) references users (u_id) ,
constraint t_g_id foreign key (g_grop) references users (g_id) 

)