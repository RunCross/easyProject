create table users(-- ��½��
  u_id bigint primary key identity(1,1),
  u_name varchar(50) not null,
  u_passw char(12) default('888888'),
)

create table userinfo( --�û���ϸ��
 ui_id bigint primary key ,
 ui_num char(12) ,  --Ա�����
 ui_name varchar(20) , --����
 ui_sex char(3) default('��'),  --�Ա�
 ui_bir datetime , --��������
 ui_local varchar(120),  --סַ
 ui_qq varchar(12), --QQ����
 ui_tell char(11),  --�ֻ�����
 constraint ui_u_id foreign key (ui_id) references users (u_id)  
)

create table project( --��Ŀ��
p_id bigint primary key identity(1,1),
p_name varchar(60) not null unique,
p_manager bigint ,
p_stime datetime default(getdate()), --��ʼʱ��
p_etime datetime default(getdate()), --����ʱ��
p_syno text ,-- ��Ŀ���
p_sec int default(0),
constraint p_m_id foreign key (p_manager) references users (u_id) 
)

create table message( --��Ϣ��
m_id bigint primary key identity(1,1),
m_time datetime default(getdate()), --����ʱ��
m_type int default(0),  --��Ϣ����
m_send bigint ,  --������
m_rece bigint ,  --������
m_cont text ,    --����
m_stat tinyint default(0),--�Ѷ� 1 δ�� 0
constraint m_s_id foreign key (m_send) references users (u_id) ,
constraint m_l_id foreign key (m_rece) references users (u_id)

)

create table task( --�����
t_id bigint primary key identity(1,1),
t_name varchar(50) not null,
t_ptime datetime not null,--Ԥ�����ʱ��
t_rtime datetime not null,--ʵ�����ʱ��
t_stat int default(0),--δ��� 0 ����� 1
t_cont text not null,--��������
t_pro bigint ,--������Ŀ
t_duty bigint ,--��������
constraint t_d_id foreign key (t_duty) references users (u_id),
constraint t_p_id foreign key (t_pro) references project (p_id)
)


create table lanmark( --��̱�
l_id bigint primary key identity(1,1),
l_title varchar(50) not null,--����
l_cont text ,                --����
l_duty bigint ,              --������
l_ptime datetime not null,   --Ԥ�����ʵ��
l_rtime datetime not null,   --ʵ�����ʱ��
l_pro bigint ,               --������Ŀ
constraint l_d_id foreign key (l_duty) references users (u_id),
constraint l_p_id foreign key (l_pro) references project (p_id)
)

create table groups( --Ⱥ����Ϣ
g_id bigint primary key identity(1,1),
g_name varchar(50) not null,
g_creat bigint ,     --������
g_pro bigint , --������Ŀ
constraint g_p_id foreign key (g_pro) references project (p_id)
)

create table groups_list( --��Ա�б�
gl_id bigint ,   --Ⱥ��id
gl_uid bigint ,  --��Աid
PRIMARY KEY(gl_id , gl_uid),
constraint gl_g_id foreign key (gl_id) references groups (g_id),
constraint gl_u_id foreign key (gl_uid) references users (u_id)
)


create table talk(  --������
t_id bigint primary key identity(1,1),
t_time datetime default(getdate()), --����ʱ��
t_grop bigint ,                   --����group
t_send bigint ,    -- ������           
t_cont text ,      -- ����
constraint t_s_id foreign key (t_send) references users (u_id) ,
constraint t_g_id foreign key (g_grop) references users (g_id) 

)

create table role ( --��ɫ
 r_id int primary key identity(1,1),
 r_num bigint default(0), -- �����Զ����޸�ĳ���û�Ȩ��ʱ����ʱΪ�û���id�� ����Ĭ��0
 r_name char(12),
 r_limit int,

constraint r_l_id foreign key (r_limit) references limit (l_id)  
)

create table limit (  -- Ȩ�ޱ� 0 ������  1 ����
  l_id int primary key identity(1,1),
  l_scan_all int default(0), --�����Ŀ������Ϣ��Ȩ��
  l_scan_document int default(0) , --�����Ŀ�����ĵ�
  l_scan_document_self int default(1) , --����Լ��ĵ�
  l_scan_staff int default(0) , --�����Ŀ���г�Ա�б�
  l_scanf_staff_self int default (1), --��������Ա
  l_scan_talk int default(0) , --�������Ŀ��������������
  l_scan_talk_self int default(1) , --�������������
  l_scan_task int default(0) , --�����������
  l_scan_task_self int default(1), --�����������
  l_scan_landmark int default(1), --���������̱�
  
)