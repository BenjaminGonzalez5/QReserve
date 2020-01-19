package fr.epsi.b3.qrcode.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.epsi.b3.qrcode.model.Utilisateur;

@Repository
public class UserDao {

	@PersistenceContext
	private EntityManager em;

	public Utilisateur getUser(String mail) {
		return em.createQuery("select u from Utilisateur u where u.mail = :paramMail", Utilisateur.class)
				.setParameter("paramMail", mail).getSingleResult();
	}

	public void createUser(Utilisateur user) {
		em.persist(user);
	}

}
