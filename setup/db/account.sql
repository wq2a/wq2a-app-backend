CREATE TABLE IF NOT EXISTS users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  ip_address VARCHAR(45) DEFAULT NULL,
  username VARCHAR(100) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  salt VARCHAR(255) DEFAULT NULL,
  first_name VARCHAR(50) DEFAULT NULL,
  last_name VARCHAR(50) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  phone VARCHAR(20) DEFAULT NULL,
  active TINYINT DEFAULT 0,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_date TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS roles (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  description VARCHAR(100) DEFAULT NULL,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_date TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)ENGINE=InnoDB  AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS companies (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  description VARCHAR(100) DEFAULT NULL,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_date TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

create table if not exists users_roles_companies (
  id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT(11),
  role_id INT(11),
  company_id INT(11),
  begin_date TIMESTAMP NULL,
  end_date TIMESTAMP NULL,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_date TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  create_by_user_id INT(11) REFERENCES users(id),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),
  FOREIGN KEY (company_id) REFERENCES companies(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
