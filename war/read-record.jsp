<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="dvb.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.persistence.*" %>


<%
	String param = request.getParameter("id");
	int recID = Integer.parseInt(param);
	String data = "none";
	
	EntityManager em = EMF.get().createEntityManager();
	
	try { 
		 long id = recID;
		 AppPref rec = em.find(AppPref.class, id);
		 
		 out.write("<br>Getting Data.");
		 
		 if (rec != null)
		 	data = rec.keyVal
		 	;
	} finally {
		 em.close();
	}

%>
<p>Read Data (<%=recID%>), data_value <%=data%></p>