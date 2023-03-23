create table campaign (
    cf_id integer   NOT NULL,
    contact_id integer   NOT NULL,
    company_name varchar(75) NOT NULL,
    description varchar(200) NOT NULL,
    goal varchar(25) NOT NULL,
    pledged varchar(25) NOT NULL,
    outcome varchar(25) NOT NULL,
    backers_count int NOT NULL,
    country varchar(5)	NOT NULL,
    currency varchar(5)   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(15)   NOT NULL,
    subcategory_id varchar(20)   NOT NULL,
    primary key(cf_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id),
	foreign key(contact_id) references contacts(contact_id));
Select * from campaign;	

create table category(
	category_id varchar(20) NOT NULL,
    category_name varchar(50) NOT NULL,
	primary key(category_id));
Select * from category;
create table subcategory(
	subcategory_id varchar(20)   NOT NULL,
    subcategory_name varchar(50)   NOT NULL,
	primary key (subcategory_id));
Select * from subcategory
create table contacts (
    contact_id int   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(150)   NOT NULL,
    primary key (contact_id));
	
Select * from contacts;