<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="dvb.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.persistence.*" %>


<%
	int recSize = 0;
	String data = "none";
	long id = 3;
	
	EntityManager em = EMF.get().createEntityManager();
	
	try { 
		 AppPref rec = em.find(AppPref.class, id);		 
		 em.remove(rec);
		 
	} finally {
		 em.close();
	}

%>
<p>Removed record with id <%=id%></p>