<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="dvb.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.persistence.*" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>

 

<%

int recSize = 0;
//String data = "none";

EntityManager em = EMF.get().createEntityManager();
     // ... do stuff with em ...
	/*
    AppPref data = new AppPref();
	data.key = "1";
	data.keyVal = "one";
	em.persist(data);
	*/
	
	//em.close();

	
	long myKey = 0; 
    List<AppPref> prefs = null;
    try {
        //em.persist(AppPref);
        Query q = em.createQuery("select d from AppPref d");
        prefs = new ArrayList(q.getResultList());
        recSize = prefs.size();
        
        Object ia[] = prefs.toArray();
        //int sum = 0;
        // sum the array
        for(int i=0; i<ia.length; i++){
        	AppPref ap= ((AppPref) ia[i]);
        	%>
        		<br/>id:<%=ap.id%>, val:<%=ap.keyVal%>  
        	<%
        }	
        AppPref apObj = (AppPref) ia[0];
        myKey = apObj.id; 
        
        
	
	} finally {
    	em.close();
	}

    

%>
<p>Read Data, Number of records <%=recSize%>, Key:<%=myKey%> </p>
	
