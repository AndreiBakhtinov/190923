Table clients {
  id integer [primary key]
  client_name varchar
  phone varchar
  created_at timestamp
 }

Table managers {
  id integer [primary key]
  name varchar
  role varchar
  branch varchar
    }

Table branches {
  id integer [primary key]
  title varchar
  address varchar
  working_hours varchar
  quantity_of_items int
  status varchar
  }

Table items {
  id integer [primary key]
  item_title varchar
  status varchar
  }

Table orders{
id integer [primary key]
client_name varchar
created_at timestamp
item_title varchar
start_time timestamp
end_time timestamp
payment_status varchar
amount_paid double
}