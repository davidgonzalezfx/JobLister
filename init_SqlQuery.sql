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
    `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
) ENGINE=INNODB DEFAULT charset=latin1;

ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);
    
 ALTER TABLE `jobs`
 ADD PRIMARY KEY (`id`);
    
  ALTER TABLE `categories`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    
   ALTER TABLE `jobs`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
