<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<%
// 		String errMsg = null;
// 		//Verfier que le form est envoy� (l'utilisateur a cliqu� sur submit)
// 		if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submitBtn") != null) {
// 			//mon formulaire est envoy�
// 			String userName = request.getParameter("userName");
// 			String pwd = request.getParameter("password");
// 			//ici le nom utilisateur et le mot de passe sont cod�s en dur pour le besoin de l'exemple ( userName=admin,pwd=admin)
// 			if ("admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(pwd)) {
// 				//login passe avec succ�s
// 				System.out.println("Bienvenu admin");
// 			} else {
// 				errMsg = "nom utilisateur ou mot de passe incorrect!Veuillez reesayer plutard!";
// 			}

// 		}
	%>
	
	<%
		String errMsg = null;
		//Verfier que le form est envoy� (l'utilisateur a cliqu� sur submit)
		if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submitBtn") != null) { %>
		
	<jsp:useBean id="loginBean" class="com.jee.course.loginsample.LoginBean">
	
<!-- 	    pour utiliser la propriet� * ,  les noms des proprit�s du bean doivent �tre �gales aux noms des param�tres de la requette -->
	 	<jsp:setProperty name="loginBean" property="*" />
	 	
<!-- 	 	Ou cas ou vous avez des noms de propriet�s du bean diff�rents des noms de param de la requ�tte : expliciter la partie  -->
<!-- 	 	setProperty comme suit :  -->
<%-- 	 	<jsp:setProperty name="loginBean" property="userName"  value="<% request.getParameter("userNameForm"); %>"/> --%>
<%-- 	 	<jsp:setProperty name="loginBean" property="password"  value="<% request.getParameter("passwordForm"); %>"/> --%>

	</jsp:useBean>
	<%
		if (loginBean.isValidUser()) {
			//login passe avec succ�s
			System.out.println("<h2> Bienvenu admin </h2>");
		}else{
			errMsg = "nom utilisateur ou mot de passe incorrect!Veuillez reesayer plutard!";
		}
	}%>
	
	
<body>
	<h2>Login</h2>
	<%if(errMsg != null) {%>
		<span style="color: red;">  <% out.print(errMsg); %> </span>	
	<% } %>
	
	
	<form method="post">
		Nom utilisateur : <input type="text" name="userName"><br>
		Mot de passe : <input type="password" name="password"> <br>
		<button type="submit" name="submitBtn">Envoyer</button>
	</form> 

</body>
</html>