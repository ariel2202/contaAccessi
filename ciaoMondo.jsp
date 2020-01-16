<%@ page import="java.util.*" %>
<html>
	
	<body>
	
	<h1>
		primo JSP
	</h1>
	
		
		<form method="POST" action="ciaoMondo.jsp">
		
	    nome  <input type="text" name="nome">
	    <input type="submit" name="invio">
	    <a href="chiudiSessione.php">chiudi sessione</a>
	   
	   
	    <%
	    
	    
	   // lis<String> elementi = getR
	    
	  
	    List<String> lista = (List<String>)session.getAttribute("usuario");
	    	
	    
	    if(lista == null){
	    	session.setAttribute("usuario",lista);
	    }
	    
	    String nome = request.getParameter("nome");
	    int cont=0;
	    
	    if(nome != null){
	    	
	    	cont++;
	    	out.println(nome + " è la "+ cont +" volta che visiti questo sito");
	    	}
	    %>
    </form>
	
	</body>

</html>