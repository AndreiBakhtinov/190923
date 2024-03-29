CREATE TABLE `clients` (
  `id` int,
  `created_at` datetime,
  `username` varchar(255),
  `password` varchar(255),
  `email` varchar(255),
  `phone` varchar(255),
  `ccard_num` int
);

CREATE TABLE `employers` (
  `id` int,
  `created_at` datetime,
  `employee_name` varchar(255),
  `employee_lastname` varchar(255),
  `position` varchar(255),
  `is_active` bool,
  `email` varchar(255),
  `phone` varchar(255),
  `filial_id` int,
  `vacation_start` datetime,
  `vacation_end` datetime
);

CREATE TABLE `filial` (
  `id` int,
  `created_at` datetime,
  `address` varchar(255),
  `workschedule` datetime,
  `devices_capacity` int,
  `available_area` int,
  `is_active` bool
);

CREATE TABLE `devices` (
  `id` int,
  `created_at` datetime,
  `device_name` varchar(255),
  `device_type` int,
  `filial_id` int,
  `is_free` bool,
  `is_broken` bool,
  `last_checked` datetime
);

CREATE TABLE `orders` (
  `id` int,
  `created_at` datetime,
  `user_id` int,
  `filial_id` int,
  `device_id` int,
  `amount` float,
  `payment_received` bool,
  `order_completed` datetime
);

ALTER TABLE `filial` ADD FOREIGN KEY (`id`) REFERENCES `employers` (`id`);

ALTER TABLE `filial` ADD FOREIGN KEY (`id`) REFERENCES `devices` (`id`);

ALTER TABLE `filial` ADD FOREIGN KEY (`id`) REFERENCES `devices` (`filial_id`);

ALTER TABLE `clients` ADD FOREIGN KEY (`id`) REFERENCES `orders` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `clients` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`);

ALTER TABLE `employers` ADD FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`id`) REFERENCES `devices` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`);
