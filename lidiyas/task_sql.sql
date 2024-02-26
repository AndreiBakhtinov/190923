create table txs (
id int primary key auto_increment,
created_at timestamp default current_timestamp,
amount double not null,
is_approved bool default false,
sender_account_id int not null,
recipient_account_id int not null,
foreign key (sender_account_id) references accounts(id),
foreign key (recipient_account_id) references accounts(id)

);
