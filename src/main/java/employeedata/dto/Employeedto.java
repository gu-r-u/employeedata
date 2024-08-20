package employeedata.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employeedto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int employee_id;
	private String employee_name;
	private String employee_email;
	private String employee_password;
	private long employee_cno;
	private String employee_city;

	public String getEmployee_email() {
		return employee_email;
	}

	public void setEmployee_email(String employee_email) {
		this.employee_email = employee_email;
	}

	public String getEmployee_password() {
		return employee_password;
	}

	public void setEmployee_password(String employee_password) {
		this.employee_password = employee_password;
	}

	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public String getEmployee_city() {
		return employee_city;
	}

	public void setEmployee_city(String employee_city) {
		this.employee_city = employee_city;
	}

	public long getEmployee_cno() {
		return employee_cno;
	}

	public void setEmployee_cno(long employee_cno) {
		this.employee_cno = employee_cno;
	}

	public Employeedto() {
		super();
	}

	public Employeedto(String employee_name, int employee_id, String employee_city, long employee_cno) {
		super();
		this.employee_name = employee_name;
		this.employee_id = employee_id;
		this.employee_city = employee_city;
		this.employee_cno = employee_cno;
	}

}
