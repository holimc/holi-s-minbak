<%@page import="test.web.qnaboard.QNABoardDAO"%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="dto" class="test.web.qnaboard.QNABoardDTO"/>
<jsp:setProperty property ="*" name ="dto"/>
<%
	//��й�ȣ�� ������ ���� Ʋ���� �ٽ� ��й�ȣ �Է� �ϸ� ��й�ȣ chk�� ������ ����Ʈ�� �̵��Ѵ�
  String pageNum = request.getParameter("pageNum");
  QNABoardDAO dao = QNABoardDAO.getInstance();
  boolean chk = dao.deletePost(dto);

  if(chk){%>
  <script>
  alert("�����Ǿ����ϴ�.");
  window.location.href = "qnaboardlist.jsp";
  </script>
<%}else{%>
   <script>
   alert("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
   history.go(-1);
   </script>
<%}%>