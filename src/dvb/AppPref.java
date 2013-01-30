package dvb;

import com.google.appengine.api.datastore.Key;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AppPref {
	
 	
 	@Id
 	@GeneratedValue(strategy = GenerationType.IDENTITY)
 	public Long id; 	
 	
 	public String key;
 	
 	
 	public String keyVal;

}
