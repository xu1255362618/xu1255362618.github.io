<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>��̨��ർ��</title>
<link rel="stylesheet" type="text/css" href="images/public.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><head></head>

<body id="bg">
	<!-- ��߽ڵ� -->
	<div class="container">

		<div class="leftsidebar_box"><a href="sy.jsp" target="main"><div class="line"><img src="images/coin01.png" />&nbsp;&nbsp;��ҳ</div></a>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin03.png" /><img class="icon2" src="images/coin04.png" /> ѧ������<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="xuesheng_add.jsp" target="main">ѧ�����</a><img class="icon5" src="images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="xuesheng_list.jsp" target="main">ѧ����ѯ</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> ��ʦ����<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="jiaoshi_add.jsp" target="main">��ʦ���</a><img class="icon5" src="images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="jiaoshi_list.jsp" target="main">��ʦ��ѯ</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin07.png" /><img class="icon2" src="images/coin08.png" /> �γ̹���<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="kechengxinxi_add.jsp" target="main">�γ����</a><img class="icon5" src="images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="kechengxinxi_list.jsp" target="main">�γ̲�ѯ</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>
				<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin14.png" /><img class="icon2" src="images/coin13.png" /> ѡ�ι���<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="xuanke_list.jsp" target="main">ѡ�ι���</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin10.png" /><img class="icon2" src="images/coin09.png" /> �ɼ�����<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="chengjixinxi_list.jsp" target="main"> �ɼ�����</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>
			
			<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coinL1.png" /><img class="icon2" src="images/coinL2.png" /> ϵͳ����<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="yhzhgl.jsp" target="main" class="cks">����Ա�û�</a><img class="icon5" src="images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="mod.jsp" target="main" class="cks">�޸�����</a><img class="icon5" src="images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a class="cks" href="logout.jsp" target="_blank">�˳�</a><img class="icon5" src="images/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>
<!--
ѧ������
xuesheng_add ѧ�����
xuesheng_list ѧ����ѯ

��ʦ����
jiaoshi_add ��ʦ���
jiaoshi_list ��ʦ��ѯ

�γ���Ϣ����
kechengxinxi_add �γ���Ϣ���
kechengxinxi_list �γ���Ϣ��ѯ

ѡ�ι���
xuanke_add ѡ�����
xuanke_list ѡ�β�ѯ

�ɼ���Ϣ����
chengjixinxi_add �ɼ���Ϣ���
chengjixinxi_list �ɼ���Ϣ��ѯ

jixacxichxuxliaxnxjixe
-->






