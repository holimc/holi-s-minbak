<%@ page contentType="text/html;charset=euc-kr" %>

<%
  int boardnum = Integer.parseInt(request.getParameter("boardnum"));
  String pageNum = request.getParameter("pageNum");

%>
<html>
<head>
<title>�Խ���</title>

<script language="JavaScript">      
<!--      
  function deleteSave(){	
	if(document.deleteForm.passwd.value==''){
	alert("��й�ȣ�� �Է��Ͻʽÿ�.");
	document.deleteForm.pw.focus();
	return false;
 }
}    
// -->      
</script>
</head>

<body>
<center><b>�ۻ���</b>
<br>
<form method="POST" name="deleteForm"  action="qnadeletePro.jsp?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
 <table border="1">
  <tr>
     <td >
       <b>��й�ȣ�� �Է��� �ּ���.</b></td>
  </tr>
  <tr>
     <td>��й�ȣ :   
     	<%if(session.getAttribute("sId") != null || session.getAttribute("sAdmin") !=null ){ %>
       <input type="password" name="pw" >
	   <input type="hidden" name="boardnum" value="<%=boardnum%>">
	   <%}else{ %>
	   <input type="password" name="pw" >
	   <input type="hidden" name="boardnum" value="<%=boardnum%>">
	   <%} %>
	   </td>
 </tr>
 <tr>
    <td>
      <input type="submit" value="�ۻ���"  >
      <input type="button" value="�۸��"  onclick="document.location.href='qnaboardlist.jsp?pageNum=<%=pageNum%>'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html> 
