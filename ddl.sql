create table Customer{
	customer_id varchar2(15) not null constraint cust_pk primary key,
	customer_name varchar2(25),
	customer_account varchar2(15),
	customer_password varchar2(15)
}
create table OrderItem{
	item_id varchar2(15) not null constraint item_pk primary key,
	unit_price long,
	quantity number,
	item_description varchar2(40),
	order_id varchar2(15) not null,
	constraint item_fk foreign key (order_id) references SalesOrder(order_id)
}
create table SalesOrder{
	order_id varchar2(15) not null constraint order_pk primary key,
	order_date date
	contact_id varchar2(15) not null,
	constraint order_fk foreign key (contact_id) references Contact(contact_id)
}
create table Contact{
	contact_id varchar2(15) not null constraint contact_pk primary key,
	phone_number long,
	dest_address varchar2(30),
	receiver_name varchar2(15),
	customer_id varchar2 not null,
	constraint order_fk foreign key (customer_id) references Customer(customer_id)
}
create table Product{
	product_id varchar2(15) not null constraint product_pk primary key,
	product_name varchar2(15),
	product_type varchar2(10)
}

