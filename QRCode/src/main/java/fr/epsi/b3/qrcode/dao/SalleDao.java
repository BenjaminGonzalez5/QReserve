package fr.epsi.b3.qrcode.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.epsi.b3.qrcode.model.Reservation;
import fr.epsi.b3.qrcode.model.Salle;

@Repository
public class SalleDao {

	@PersistenceContext
	private EntityManager em;

	public List<Salle> getListSalles() {
		return em.createQuery("select s from Salle s", Salle.class).getResultList();
	}

	public List<Reservation> getDetailsSalle(long id) {
		return em.createQuery("select r from Reservation r where salle_id = ?1", Reservation.class).setParameter(1, id)
				.getResultList();
	}
}
