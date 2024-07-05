package controllers;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import empleado.Empleados;

public class EliminaEmpleados {

	public String deleteEmpleado(int id){
		//creamos un sessionfactory con el archivo de hibernate
		SessionFactory miFactory = new Configuration().configure("hibernate.cfg.xml").
				addAnnotatedClass(Empleados.class).buildSessionFactory();
		//iniciamos session
		Session session = miFactory.openSession();
		
		try {			
			//iniciamos el proceso
			session.beginTransaction();
			//Obtenemos el empleado que queremos eliminar
			Empleados empleado1 = session.get(Empleados.class, id);
			//remove, sustitúe ao anterior delete()
			session.remove(empleado1);
			//finalizamos con un commit
			session.getTransaction().commit();
			
			session.close();
			
			return "Empleado eliminado";
			
		}catch (Exception e) {
			e.printStackTrace();
			miFactory.close();
			
		}
		return "Error al eliminar empleado";
	}
}
