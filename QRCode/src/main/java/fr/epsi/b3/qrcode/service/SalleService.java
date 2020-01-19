package fr.epsi.b3.qrcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.epsi.b3.qrcode.dao.SalleDao;
import fr.epsi.b3.qrcode.model.Reservation;
import fr.epsi.b3.qrcode.model.Salle;

@Service
public class SalleService {
	@Autowired
	private SalleDao salleDao;
	
	@Transactional(readOnly = true)
	public List<Salle> getListSalles() {
		return salleDao.getListSalles();
	}
	
	@Transactional(readOnly = true)
	public List<Reservation> getDetailsSalle(long id) {
		return salleDao.getDetailsSalle(id);
	}
}
