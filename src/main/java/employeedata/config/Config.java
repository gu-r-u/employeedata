package employeedata.config;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ModelAndView;

@Configuration
@ComponentScan(basePackages = { "employeedata" })
public class Config {
	
	@Bean
	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("guru").createEntityManager();
	}
	
	@Bean
	public ModelAndView getmodelandview() {
		return new ModelAndView();
	}
	
	
}
