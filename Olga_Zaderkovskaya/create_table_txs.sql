create table txs(
id int primary key auto_increment,
created_at timestamp default current_timestamp,
amount double not null,
is_approved boolean default false,
sender_account_id int not null,
recipient_account_id int not null)




	




  








