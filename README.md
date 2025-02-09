# IDOHR人力资源管理系统 

## 一、作品概述

&emsp;&emsp;随着当前时代信息化程度的提升与计算机的普及，企业办公信息化已经成为发展的必然趋势。人力资源的管理又是信息化管理中的一项重要组成部分，加强信息化建设就是管理资源、降低成本的一种重要途径。通过人力资源管理系统的运用则可以极大地提升工作效率，实现无纸化办公、异地办公，体验“管理在前，执行在后”的先进理念。

&emsp;&emsp;本系统也正基于此背景与事实应运而生。系统主要包含人事管理（员工信息的管理）、薪酬福利（工资计算、福利记录、加班请假等记录）、考勤打卡（每日考勤、考核记录的查询）、绩效考核（绩效考核的创建与评分）、招聘培训和审批中心（审核信息的管理）六大模块，实现人力资源的合理管理、部门职位的灵活变动、工资福利的准确发放、考勤绩效的精准记录等功能。系统在JavaEE的基础上采用 Spring + SpringMVC + Mybatis 框架完成系统架构，融合 Tomcat、Maven、Ajax+JSON 等前沿技术，采用 SHA1 加密数据，保证系统的安全性，从数据库设计到界面的呈现，实现完整的企业级系统开发。

## 二、系统环境配置

&emsp;&emsp;本项目基于JavaEE进行开发，项目运行必须依赖于JDK环境（Windows/Linux系统均可），Tomcat服务器以及所依赖的三方插件和Jar包均使用Maven技术，项目在首次运行时会自动从Maven服务器下载相关文件；客户端仅需要浏览器支持。项目所需配置环境如下：

&emsp;&emsp;1）安装JDK1.8+；

&emsp;&emsp;2）安装Maven 3.5.2+；

&emsp;&emsp;3）安装Mysql5.5.20数据库；

&emsp;&emsp;4）安装卓正PageOffice客户端（文档在线编辑）；

&emsp;&emsp;5）安装任意浏览器。

## 三、程序运行

&emsp;&emsp;1）启动服务器。有三种方式启动服务器：①将项目导入Eclipse，在pom.xml文件上右击运行-Maven build；②使用maven控制台命令运行项目；③项目打包后放入服务器环境下（Windows/Linux），并运行服务器。、

&emsp;&emsp;2）访问系统（以本地访问localhost为例）。客户打开浏览器，在地址栏输入：http://localhost:9000/login ，进入IDOHR系统的登录界面，如图3-1-1。用户在登录后（初始账号：admin，密码：admin）进入系统，通过首页左侧的菜单列表选择所需功能。

![系统登录界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/1.png)

<center><em align="center">图3-1-1 系统登录界面</em></center>

## 四、系统使用说明

&emsp;&emsp;系统提供人事管理、部门职位、薪酬福利、考勤打卡、绩效考核、文件管理等功能模块，实现了人力资源的合理管理、部门职位的灵活变动、工资福利的准确发放、考勤绩效的精准记录等功能。具体的功能点如图4-1-1：

![系统功能流程图](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/2.png)
<em align="center">图4-1-1 系统功能流程图</em>

### 4.1 系统主页

&emsp;&emsp;用户进入系统默认显示页为主页，主页最上方的导航栏左侧为系统logo；右侧是导航功能区域，提供退出登录等功能。左侧导航主要提供菜单列表，以二级菜单形式展现，用户可以通过菜单项的选择更换右侧内容区域的显示内容，当用户选择某二级菜单时，其余展开的二级菜单均会被自动收缩。

&emsp;&emsp;右下方为功能区，用户选择功能后会在此界面中显示内容。默认显示页中包含五个模块，最左侧的是日历模块，此日历可以为用户展示：动态展示当前时间、公历日期、农历日期、星期、干支纪年法表示、当月日期预览，还预备了日期选择查看、公休日、节假日查看等的功能。右上方的是天气模块，该天气插件可以显示用户当前位置的天气信息，可以为用户展示：当前地理位置、当天空气质量、近四天的天气情况。中间两部分为功能提示区。最右侧的是公告区，管理员可以发布公告到这里。

&emsp;&emsp;系统主界面如图4-1-2：

![系统主界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/3.png)
<em align="center">图4-1-2 系统主界面</em>

### 4.2 人事管理

&emsp;&emsp;在人事管理模块中，包含员工操作、请假办理、加班记录等功能。

&emsp;&emsp;在员工信息管理界面中提供员工信息的预览，信息以父子表方式呈现，可以直接在子表中预览用户的更多信息，如教育经历、工作历史、合同信息（已过期合同特殊显示）等，用户也可以双击用户信息打开员工的详细信息界面。在员工表上方左侧是工具菜单，包含员工的新增、删除、修改功能，在右侧有数据刷新，显示列选择、员工信息查询、数据导出等功能。员工信息界面如图4-2-1：

![员工信息界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/4.png)
<em align="center">图4-2-1 员工信息界面</em>

&emsp;&emsp;员工的新增界面如图4-2-2，用户填写这些信息项就可以新增员工，其中合同信息、教育背景、工作经历都可以添加多项，若数据填写不完整则系统会对未填项进行特殊显示，如图4-2-3。

![员工新增界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/5.png)
<em align="center">图4-2-2 员工新增界面</em>

![员工新增错误示例](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/6.png)
<em align="center">图4-2-3 员工新增错误示例</em>

&emsp;&emsp;在右侧区域可以对员工信息进行搜索，此搜索会匹配数项信息，如查找所有性别为男的员工。员工信息表默认显示一部分的列，更多的列可以点击右侧第二个按钮进行显示。最右侧按钮为数据导出，可将用户选择的列导出为Excel、TXT、JSON等常用格式，将数据导出为Excel格式如图4-2-4。

![员工新增导出演示](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/7.png)
<em align="center">图4-2-4 员工新增导出演示</em>

&emsp;&emsp;请假办理界面如图4-2-5，在此功能中可以查看请假记录以及办理请假。

![请假办理界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/8.png)
<em align="center">图4-2-5 请假办理界面</em>

&emsp;&emsp;员工加班功能中，可以查看员工的加班记录以及记录新的加班。当加班时间属于工作日时，系统会给出提示，如图4-2-6：

![加班提交演示](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/9.png)
<em align="center">图4-2-6 加班提交演示</em>

### 4.3 考勤打卡

&emsp;&emsp;模块提供考勤打卡相关的功能。在页面中可以进行考勤相关的配置与浏览。系统在网页中不提供打卡功能，但是为打卡功能做了设计与实现，用户可以自行购买指纹打卡机等设备，通过系统开放的接口去连接这些物理设备进行打卡。系统新增考勤配置如图4-3-1；考勤记录查询如图4-3-2。

![新增考勤配置](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/10.png)
<em align="center">图4-3-1 新增考勤配置</em>

![考勤记录查询](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/11.png)
<em align="center">图4-3-2 考勤记录查询</em>

### 4.4 薪酬福利

&emsp;&emsp;项目中集成了薪酬体系，薪酬福利模块为用户提供了薪资制度自定义、个人所得税配置等用户可自定义的设置功能，系统会根据用户自定义配置自动计算员工的薪资，薪资采用月结（按照用户设置，在结算日自动结算）的方式，并可与考勤、绩效考核等信息关联。图4-4-1展示了薪资制度自定义配置的界面；图4-4-2展示了薪酬记录月度查询界面。

![薪酬制度配置](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/12.png)
<em align="center">图4-4-1 薪酬制度配置</em>

![薪酬记录月度查询](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/13.png)
<em align="center">图4-4-2 薪酬记录月度查询</em>

### 4.5 绩效考核

&emsp;&emsp;用户可以进行绩效考核相关的配置与浏览。可以在这个功能模块下发起考核、查看考核信息，并且可以在考核结束后对考核的结果进行计分。发起考核如图4-5-1；考核评分如图4-5-2。

![发起考核](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/14.png)
<em align="center">图4-5-1 发起考核</em>

![考核评分](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/15.png)
<em align="center">图4-5-2 考核评分</em>

### 4.6 合同管理

&emsp;&emsp;在合同管理模块中包含合同的上传、下载、预览、在线编辑等功能。双击文件进入编辑模式，在线编辑提供与Word2010相同的界面与操作方式，用户在编辑合同之后按Ctrl+S键进行保存。合同管理界面如图4-6-1；合同在线编辑如图4-6-2。

![合同管理界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/16.png)
<em align="center">图4-6-1 合同管理界面</em>

![合同在线编辑界面](https://github.com/ycv587/IDOHR/blob/master/ReadMeImg/17.png)
<em align="center">图4-6-2 合同在线编辑界面</em>

### 4.7 更多功能

&emsp;&emsp;系统还提供部门、职位等更多的功能点与模块，可以借鉴4.2-4.7所描述模块的操作方式。





