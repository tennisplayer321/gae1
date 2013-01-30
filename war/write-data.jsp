<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="dvb.*" %>


<%

EntityManager em = EMF.get().createEntityManager();
long id = 1;
String val = "none";

String temp = request.getParameter("id");
if (temp != null) 
	id = Integer.parseInt(temp);

temp = request.getParameter("val");
if (temp != null) 
	val = temp;

//v2

AppPref data = new AppPref();
try {
    // ... do stuff with em ...
	
	data.id = id;
	data.keyVal = val;
	em.persist(data);
	//id = data.id;
	//em.close();
	
} finally {
    em.close();
}


%>
<p>Wrote val <%=val%> with key <%=data.id%> </p>