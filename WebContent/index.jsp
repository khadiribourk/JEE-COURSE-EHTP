<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<%
		String errMsg = null;
		//Verfier que le form est envoyé (l'utilisateur a cliqué sur submit)
		if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submitBtn") != null) {
			//mon formulaire est envoyé
			String userName = request.getParameter("userName");
			String pwd = request.getParameter("passwordIn");
			//ici le nom utilisateur et le mot de passe sont codés en dur pour le besoin de l'exemple ( userName=admin,pwd=admin)
			if ("admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(pwd)) {
				//login passe avec succès
				System.out.println("Bienvenu admin");
			} else {
				errMsg = "nom utilisateur ou mot de passe incorrect!Veuillez reesayer plutard!";
			}

		}
	%>
<body>
	<h2>Login</h2>
	<%if(errMsg != null) {%>
	<span style="color: red;">  <% out.print(errMsg); %> </span>	
	<% } %>
	<form method="post">
		Nom utilisateur : <input type="text" name="userName"><br>
		Mot de passe : <input type="password" name="passwordIn"> <br>
		<button type="submit" name="submitBtn">Envoyer</button>
	</form>

</body>
</html>