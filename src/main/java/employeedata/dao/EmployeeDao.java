package employeedata.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import employeedata.dto.Employeedto;

@Component
public class EmployeeDao {

	@Autowired
	EntityManager em;

	public Employeedto saveEmployee(Employeedto emp) {
		em.getTransaction().begin();
		em.persist(emp);
		em.getTransaction().commit();
		return emp;
	}

	public Employeedto findbyID(int empID) {
		Employeedto emp = em.find(Employeedto.class, empID);
		if (emp != null) {
			return emp;
		}
		return null;
	}

	public Employeedto deleteEmployee(int empID) {
		Employeedto emp = em.find(Employeedto.class, empID);
		if (emp != null) {
			em.getTransaction().begin();
			em.remove(emp);
			em.getTransaction().commit();
			return emp;
		}
		return null;
	}

	public Employeedto updateEmployeedto(Employeedto emp, int empID) {
		Employeedto dbemp = em.find(Employeedto.class, empID);
		if (dbemp != null) {
			emp.setEmployee_id(empID);
			em.getTransaction().begin();
			em.merge(emp);
			em.getTransaction().commit();
			return emp;
		}
		return null;
	}
	

	public List<Employeedto> getallEmployee() {
		Query query = em.createQuery("select e from Employeedto e");
		return query.getResultList();
	}

	public Employeedto findbyEmail(String email) {
		Query query = em.createQuery("select e from Employeedto e where employee_email = ?1");
		query.setParameter(1, email);
		Employeedto emp = (Employeedto) query.getSingleResult();
		if (emp != null) {
			return emp;
		}
		return null;
	}
}
