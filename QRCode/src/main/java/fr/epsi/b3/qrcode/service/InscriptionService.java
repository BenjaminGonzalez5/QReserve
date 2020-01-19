package fr.epsi.b3.qrcode.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.epsi.b3.qrcode.dao.UserDao;
import fr.epsi.b3.qrcode.model.Utilisateur;

@Service
public class InscriptionService {

	@Autowired
	private UserDao userDao;

	@Transactional
	public void createUser(DonneesPersonnellesDto donneesPersonnellesDto) {
		Utilisateur user = new Utilisateur(donneesPersonnellesDto.getMdp(), donneesPersonnellesDto.getNom(),
				donneesPersonnellesDto.getPrenom(), donneesPersonnellesDto.getMail(),
				donneesPersonnellesDto.getTelephone());
		userDao.createUser(user);
	}
}
