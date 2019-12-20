CREATE TABLE `categories`(
 `id` int(11) NOT Null,
    `name` varchar(225) NOT Null
) ENGINE=INNODB DEFAULT charset=latin1;

CREATE TABLE `jobs`(
 `id` int(11) NOT Null,
    `category_id` int(11) NOT Null,
    `company` varchar(225) NOT Null,
    `job_title` varchar(225) NOT Null,
    `description` varchar(225) NOT Null,
    `salary` varchar(225) NOT Null,
    `location` varchar(225) NOT Null,
    `contact_user` varchar(225) NOT Null,
    `contact_email` varchar(225) NOT Null,
    `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=INNODB DEFAULT charset=latin1;

ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);
    
 ALTER TABLE `jobs`
 ADD PRIMARY KEY (`id`);
    
  ALTER TABLE `categories`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    
   ALTER TABLE `jobs`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
 
 ## Insert Categories
 
 INSERT INTO `categories` (`id`, `name`) 
 VALUES ('1', 'Frontend'), 
        ('2', 'Backend'), 
        ('3', 'Sales'),
        ('4', 'Devops'),
        ('5', 'UI/UX Designer'),
        ('6', 'Marketer')
 
 ## Insert Jobs
 
 INSERT INTO `jobs` (`id`, `category_id`, `company`, `job_title`, `description`, `salary`, `location`, `contact_user`, `contact_email`, `post_date`) 
 VALUES ('1', '1', 'Rappi', 'Junior React developer', 'You must know about: Nodejs and Javascript, Reactjs, RxJs, NxtJs, API REST, Express, and webpack', '60.000 USD/year', 'Bogota, Colombia', 'Rappi HR team', 'admin@rappi.com', current_timestamp()),
        ('2', '1', 'Uber', 'Senior Angular developer', 'You must know about: Nodejs and Javascript, Angular 4, API REST, Express, and webpack', '55.000 USD/year', 'Buenos Aires, Argentina', 'Uber HR team', 'admin@uber.com', current_timestamp()),
        ('3', '2', 'Tranquifinanzas', 'Ruby on Rails tester', 'You should be able to make TDD & BDD test. Part time', '25000 USD/year', 'Medellin, Colombia', 'Tranqui CEO', 'admin@tranqui.com.co', current_timestamp()),
        ('4', '6', 'Afilliatum', 'Senior digital marketer', 'We will ask you to do task for implement effective social campaigns to reach more potential clients', '58000 USD/year', 'Madrid, España', 'Afilliatum CTO', 'admin@afilliatum.com', current_timestamp())
     
 
