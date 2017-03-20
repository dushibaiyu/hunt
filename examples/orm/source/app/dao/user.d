﻿module app.dao.user;
import app.entity.user;

import hunt.orm.entity;
import entity;

class UserDao
{
	static long registerUser()
	{
		EntityManager manager = entityManagerFactory.createEntityManager();
		scope(exit){manager.close();}
		User user = new User();
		user.name = "donglei";
		auto x = manager.save(user);
		return x.get!long;
	}

	static void updateUserName(long uid, string newName)
	{
		User user = new User();
		user.name = newName;
		user.id=uid;
		EntityManager manager = entityManagerFactory.createEntityManager();
		scope(exit){manager.close();}
		manager.update(user);
	}


}

