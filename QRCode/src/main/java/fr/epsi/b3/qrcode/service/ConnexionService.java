package fr.epsi.b3.qrcode.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.epsi.b3.qrcode.dao.UserDao;
import fr.epsi.b3.qrcode.model.Utilisateur;

@Service
public class ConnexionService {

	@Autowired
	private UserDao userDao;

	@Transactional
	public Utilisateur getUser(String mail) {
		return userDao.getUser(mail);
	}
}
