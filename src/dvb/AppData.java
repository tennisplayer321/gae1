package dvb;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import dvb.EMF;
 
 
 


public class AppData {

	//private static  EntityManger em = dvb.EMF.get().createEntityManager();
	
	public static void test() {
		
		//javax.persistence.EntityManager  em =  dvb.EMF.get().createEntityManager();  //EMF.get().createEntityManager();
	
		
		try {
		    // ... do stuff with em ...
			EntityManager em = EMF.get().createEntityManager();
			
			
		} finally {
		    //em.close();
		}
	}

}
