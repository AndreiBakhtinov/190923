create table transactions (
 transaction_id int auto_increment primary key,
 sender_account_id int not null,
 recipient_account_id int not null,
 currency varchar (64) ,
 amount float,
 comment text,
 is_confirm bool,
 created_at timestamp default current_timestamp,
 foreign key (sender_account_id) references  accounts  (id),
    foreign key (recipient_account_id) references  accounts  (id)
 );
