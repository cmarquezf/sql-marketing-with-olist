CREATE TABLE `ClosedDeal` (
  `mql_id` varchar(75) NOT NULL,
  `seller_id` varchar(75) NOT NULL,
  `sdr_id` varchar(75) NOT NULL,
  `sr_id` varchar(75) NOT NULL,
  `won_date` datetime DEFAULT NULL,
  `business_segment` varchar(75) DEFAULT NULL,
  `lead_type` varchar(75) DEFAULT NULL,
  `lead_behaviour_profile` varchar(75) DEFAULT NULL,
  `has_company` varchar(75) DEFAULT NULL,
  `has_gtin` varchar(75) DEFAULT NULL,
  `average_stock` varchar(75) DEFAULT NULL,
  `business_type` varchar(75) DEFAULT NULL,
  `declared_product_catalog_size` int DEFAULT NULL,
  `declared_monthly_revenue` int DEFAULT NULL,
  PRIMARY KEY (`mql_id`,`seller_id`,`sdr_id`,`sr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Customer` (
  `customer_id` varchar(75) NOT NULL,
  `customer_unique_id` varchar(75) NOT NULL,
  `customer_zip_code_prefix` bigint DEFAULT NULL,
  `customer_city` varchar(75) DEFAULT NULL,
  `customer_state` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `MarketingQualifiedLead` (
  `mql_id` varchar(75) NOT NULL,
  `first_contact_date` date DEFAULT NULL,
  `landing_page_id` varchar(75) DEFAULT NULL,
  `origin` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`mql_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Order_` (
  `order_id` varchar(75) NOT NULL,
  `customer_id` varchar(75) DEFAULT NULL,
  `order_status` varchar(75) DEFAULT NULL,
  `order_purchase_timestamp` datetime DEFAULT NULL,
  `order_approved_at` datetime DEFAULT NULL,
  `order_delivered_carrier_date` datetime DEFAULT NULL,
  `order_delivered_customer_date` datetime DEFAULT NULL,
  `order_estimated_delivery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `OrderItem` (
  `order_id` varchar(75) NOT NULL,
  `order_item_id` bigint NOT NULL,
  `product_id` varchar(75) DEFAULT NULL,
  `seller_id` text,
  `shipping_limit_date` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `freight_value` double DEFAULT NULL,
  PRIMARY KEY (`order_id`,`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Payment` (
  `order_id` varchar(75) NOT NULL,
  `payment_sequential` int NOT NULL,
  `payment_type` text,
  `payment_installments` int DEFAULT NULL,
  `payment_value` double DEFAULT NULL,
  PRIMARY KEY (`order_id`,`payment_sequential`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Product` (
  `product_id` varchar(75) NOT NULL,
  `product_category_name` varchar(75) DEFAULT NULL,
  `product_name_lenght` int DEFAULT NULL,
  `product_description_lenght` int DEFAULT NULL,
  `product_photos_qty` int DEFAULT NULL,
  `product_weight_g` int DEFAULT NULL,
  `product_length_cm` int DEFAULT NULL,
  `product_height_cm` int DEFAULT NULL,
  `product_width_cm` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Review` (
  `review_id` varchar(75) NOT NULL,
  `order_id` varchar(75) DEFAULT NULL,
  `review_score` int DEFAULT NULL,
  `review_comment_title` varchar(75) DEFAULT NULL,
  `review_comment_message` varchar(2000) DEFAULT NULL,
  `review_creation_date` datetime DEFAULT NULL,
  `review_answer_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Seller` (
  `seller_id` varchar(75) NOT NULL,
  `seller_zip_code_prefix` bigint DEFAULT NULL,
  `seller_city` varchar(75) DEFAULT NULL,
  `seller_state` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;