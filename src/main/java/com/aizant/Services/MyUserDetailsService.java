package com.aizant.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.DAO.UserDAO;
import com.aizant.model.User;

@Service
@Transactional
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDAO userDao;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = userDao.getByUsername(username);
		if (user == null) {
			throw new UsernameNotFoundException("No user found with username: " + username);
		}
		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		
		System.out.println("GETTING USER" + user.getPassword());
		return new org.springframework.security.core.userdetails.User(user.getUsername(),
				user.getPassword(), enabled, accountNonExpired, credentialsNonExpired, accountNonLocked,
				getAuthorities(user.getRole()));
	}

	private static List<GrantedAuthority> getAuthorities(String role) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(role));
		return authorities;
	}

}