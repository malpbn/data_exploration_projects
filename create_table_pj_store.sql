CREATE DATABASE "storeProjectPortfolio"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- Retail store with a scheme based on 6 entities/tables, which are: 1- order_details_id, 2- orders, 3- customers, 4- products, 5- shippers, 6- categories

CREATE TABLE public.order_details
(
    order_details_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    PRIMARY KEY (order_details_id)
);

ALTER TABLE IF EXISTS public.order_details
    OWNER to postgres;
	
-- 2. ORDERS

CREATE TABLE public.orders
(
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL,
    shipper_id integer NOT NULL,
    PRIMARY KEY (order_id)
);

ALTER TABLE IF EXISTS public.orders
    OWNER to postgres;
	
-- 3. customers

CREATE TABLE public.customers
(
    customer_id integer NOT NULL,
    customer_name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    postal_code character varying(50) NOT NULL,
    PRIMARY KEY (customer_id)
);

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;
	
-- 4. products

CREATE TABLE public.products
(
    product_id integer,
    product_name character varying(255) NOT NULL,
    category_id integer NOT NULL,
    unit integer NOT NULL,
    price numeric NOT NULL,
    PRIMARY KEY (product_id)
);

ALTER TABLE IF EXISTS public.products
    OWNER to postgres;

-- 5. shippers

CREATE TABLE public.shippers
(
    shipper_id integer NOT NULL,
    shipper_name character varying NOT NULL,
    PRIMARY KEY (shipper_id)
);

ALTER TABLE IF EXISTS public.shippers
    OWNER to postgres;
	
-- 6. categories

CREATE TABLE public.categories
(
    category_id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    description text NOT NULL,
    PRIMARY KEY (category_id)
);

ALTER TABLE IF EXISTS public.categories
    OWNER to postgres;
	
-- Now I'm going to insert Mockaroo data generated to the tables

INSERT INTO categories(category_id, category_name, description)

VALUES(1 , 'Milk Chocolate', 'Milk chocolate is a delightful treat that combines the smoothness of creamy milk with the rich sweetness of cocoa. Its velvety texture melts in your mouth, delivering a burst of indulgent flavors. A familiar taste.'),
(2 , 'Dark Chocolate', 'Dark chocolate, an exquisite delicacy, boasts an intense and sophisticated flavor profile. With a higher cocoa content and less added sugar, it presents a bolder, slightly bitter taste that appeals to the refined palate.'),
(3, 'White Chocolate', 'White chocolate, a creamy and luscious delight, enchants with its ivory appearance and rich, buttery taste. Unlike its dark and milk counterparts, white chocolate contains no cocoa solids but instead features a blend of cocoa butter, milk solids, and sweeteners.');


insert into shippers (shipper_id, shipper_name) values (50, 'Fae Hackinge');
insert into shippers (shipper_id, shipper_name) values (51, 'Abramo Harman');
insert into shippers (shipper_id, shipper_name) values (52, 'Glynnis Everit');
insert into shippers (shipper_id, shipper_name) values (53, 'Kirbee Pengelley');
insert into shippers (shipper_id, shipper_name) values (54, 'Rosie Helstrom');
insert into shippers (shipper_id, shipper_name) values (55, 'Danit Straun');
insert into shippers (shipper_id, shipper_name) values (56, 'Jackelyn Collyear');
insert into shippers (shipper_id, shipper_name) values (57, 'Mortimer Shearer');
insert into shippers (shipper_id, shipper_name) values (58, 'Sigfried Bartosik');
insert into shippers (shipper_id, shipper_name) values (59, 'Adeline Kalisch');
insert into shippers (shipper_id, shipper_name) values (60, 'Brita Mattholie');
insert into shippers (shipper_id, shipper_name) values (61, 'Petra Klausen');
insert into shippers (shipper_id, shipper_name) values (62, 'Michael Dory');
insert into shippers (shipper_id, shipper_name) values (63, 'Skell Kesten');
insert into shippers (shipper_id, shipper_name) values (64, 'Baxter Toghill');
insert into shippers (shipper_id, shipper_name) values (65, 'Nevile Holsey');
insert into shippers (shipper_id, shipper_name) values (66, 'Lulu Trainor');
insert into shippers (shipper_id, shipper_name) values (67, 'Selina Crottagh');
insert into shippers (shipper_id, shipper_name) values (68, 'Ansell Gorioli');
insert into shippers (shipper_id, shipper_name) values (69, 'Jobie Girardin');
insert into shippers (shipper_id, shipper_name) values (70, 'Worth Stut');
insert into shippers (shipper_id, shipper_name) values (71, 'Noak Towsey');
insert into shippers (shipper_id, shipper_name) values (72, 'Alick Sexon');
insert into shippers (shipper_id, shipper_name) values (73, 'Doralynn Hackwell');
insert into shippers (shipper_id, shipper_name) values (74, 'Shirley Brearley');
insert into shippers (shipper_id, shipper_name) values (75, 'Grete Prothero');
insert into shippers (shipper_id, shipper_name) values (76, 'Dulcea Folliss');
insert into shippers (shipper_id, shipper_name) values (77, 'Ida Varvell');
insert into shippers (shipper_id, shipper_name) values (78, 'Celeste Fitzpayn');
insert into shippers (shipper_id, shipper_name) values (79, 'Dudley Alldis');
insert into shippers (shipper_id, shipper_name) values (80, 'Nettle Nunnerley');
insert into shippers (shipper_id, shipper_name) values (81, 'Geri Longea');
insert into shippers (shipper_id, shipper_name) values (82, 'Pammie Tissier');
insert into shippers (shipper_id, shipper_name) values (83, 'Base Spring');
insert into shippers (shipper_id, shipper_name) values (84, 'Bernhard Pflieger');
insert into shippers (shipper_id, shipper_name) values (85, 'Felecia Pettis');
insert into shippers (shipper_id, shipper_name) values (86, 'Malva Siege');
insert into shippers (shipper_id, shipper_name) values (87, 'Amargo Cubuzzi');
insert into shippers (shipper_id, shipper_name) values (88, 'Josephina Larwood');
insert into shippers (shipper_id, shipper_name) values (89, 'Beitris Swapp');
insert into shippers (shipper_id, shipper_name) values (90, 'Aldric Blaase');
insert into shippers (shipper_id, shipper_name) values (91, 'Traver Stooders');
insert into shippers (shipper_id, shipper_name) values (92, 'Issy Panas');
insert into shippers (shipper_id, shipper_name) values (93, 'Tallulah Lamshead');
insert into shippers (shipper_id, shipper_name) values (94, 'Jarrett Hullock');
insert into shippers (shipper_id, shipper_name) values (95, 'Bertie Lotze');
insert into shippers (shipper_id, shipper_name) values (96, 'Ilene Penman');
insert into shippers (shipper_id, shipper_name) values (97, 'Raddy Salmon');
insert into shippers (shipper_id, shipper_name) values (98, 'Tremaine Radclyffe');
insert into shippers (shipper_id, shipper_name) values (99, 'Tami Coomes');
insert into shippers (shipper_id, shipper_name) values (100, 'Sophronia Clausius');


insert into customers (customer_id, customer_name, address, city, postal_code) values (700, 'Trudi Hawick', '4457 Russell Lane', 'Prokhladnyy', '366041');
insert into customers (customer_id, customer_name, address, city, postal_code) values (701, 'Pearle Fitzroy', '1 Spohn Terrace', 'Krzynowłoga Mała', '06-316');
insert into customers (customer_id, customer_name, address, city, postal_code) values (702, 'Nicky MacCracken', '1510 Westend Place', 'Kashiwazaki', '976-0034');
insert into customers (customer_id, customer_name, address, city, postal_code) values (703, 'Dimitry Phinnessy', '8591 Meadow Valley Terrace', 'Nueva Vida Sur', '6224');
insert into customers (customer_id, customer_name, address, city, postal_code) values (704, 'Sayer Clacson', '50741 Valley Edge Junction', 'Phú Mỹ', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (705, 'Garwin Marzele', '04476 Blackbird Trail', 'Tabasalu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (706, 'Marja Leppington', '28451 Burrows Center', 'Örnsköldsvik', '891 25');
insert into customers (customer_id, customer_name, address, city, postal_code) values (707, 'Deni Chippindall', '51 Armistice Crossing', 'Prilep', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (708, 'Clemmy Ferneley', '1485 Forest Run Hill', 'Melchor de Mencos', '17011');
insert into customers (customer_id, customer_name, address, city, postal_code) values (709, 'Gianni Anscott', '1 Nobel Trail', 'Tabuny', '658860');
insert into customers (customer_id, customer_name, address, city, postal_code) values (710, 'Barthel Debenham', '9 Hollow Ridge Drive', 'San José', '40602');
insert into customers (customer_id, customer_name, address, city, postal_code) values (711, 'Faun Chastaing', '13269 Fairview Crossing', 'Al Abyār', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (712, 'Harris Damrell', '0 Wayridge Parkway', 'Grekan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (713, 'Ashlin Ambler', '8 Elmside Lane', 'Yono', '707-0112');
insert into customers (customer_id, customer_name, address, city, postal_code) values (714, 'Isacco Seatter', '5 Forster Court', 'Deqing', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (715, 'Alexandro Catterson', '50 Dayton Road', 'Black River', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (716, 'Raviv Sibbons', '55 Londonderry Crossing', 'Portela', '2430-162');
insert into customers (customer_id, customer_name, address, city, postal_code) values (717, 'Allegra Gehrts', '3 La Follette Street', 'Banjar Dauhmargi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (718, 'Llywellyn Ravilus', '7 Eagle Crest Point', 'Qa‘ţabah', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (719, 'Annetta Grimsditch', '96606 Quincy Junction', 'Patitírion', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (720, 'Kirstin Rudgerd', '32 Norway Maple Alley', 'Nizhnepavlovka', '460508');
insert into customers (customer_id, customer_name, address, city, postal_code) values (721, 'Georgeta Sheards', '720 Mccormick Hill', 'Długosiodło', '07-210');
insert into customers (customer_id, customer_name, address, city, postal_code) values (722, 'Karee Van Haeften', '0956 Banding Crossing', 'Hushan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (723, 'Andriana McLeish', '2 Delladonna Alley', 'Okinawa Número Uno', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (724, 'Marlene Dalrymple', '38360 Tony Lane', 'Malawa', '2417');
insert into customers (customer_id, customer_name, address, city, postal_code) values (725, 'Cad Guerry', '058 Weeping Birch Pass', 'Gielniów', '26-434');
insert into customers (customer_id, customer_name, address, city, postal_code) values (726, 'Rogers Iianon', '938 Troy Circle', 'Estrada', '2525-474');
insert into customers (customer_id, customer_name, address, city, postal_code) values (727, 'Waneta Costellow', '5907 Westport Center', 'Tamiso', '2819');
insert into customers (customer_id, customer_name, address, city, postal_code) values (728, 'Marybelle Seely', '26 Chive Avenue', 'Słupsk', '76-280');
insert into customers (customer_id, customer_name, address, city, postal_code) values (729, 'Jillana Reis', '4 Hintze Avenue', 'Senhor da Serra', '3220-435');
insert into customers (customer_id, customer_name, address, city, postal_code) values (730, 'Pacorro Vicker', '68618 Stone Corner Lane', 'Jicun', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (731, 'Mandy Faye', '2 Novick Junction', 'Créteil', '94972 CEDEX 9');
insert into customers (customer_id, customer_name, address, city, postal_code) values (732, 'Ginni Fruchon', '4 Schmedeman Place', 'Mi’ersi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (733, 'Karel Disbrey', '17630 Hovde Junction', 'Savran’', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (734, 'Valaree Abramson', '635 Weeping Birch Parkway', 'Vaughan', 'M3N');
insert into customers (customer_id, customer_name, address, city, postal_code) values (735, 'Fonsie Stolte', '1 Pennsylvania Place', 'Gupakan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (736, 'Jacky Showell', '02 Graedel Center', 'Bodega', '6415');
insert into customers (customer_id, customer_name, address, city, postal_code) values (737, 'Lacie Abramovicz', '75909 Dexter Road', 'Nunguan', '9610');
insert into customers (customer_id, customer_name, address, city, postal_code) values (738, 'Mehetabel Scothron', '0864 Elmside Terrace', 'Koceljeva', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (739, 'Nedda Rickell', '43180 Sundown Road', 'Wellington', '6149');
insert into customers (customer_id, customer_name, address, city, postal_code) values (740, 'Emlynne Merrgen', '43 Dorton Point', 'Rubirizi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (741, 'Patrizia Giotto', '20 Stephen Avenue', 'Caeté', '34800-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (742, 'Lark Fontel', '7 Dayton Terrace', 'Majdal Banī Fāḑil', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (743, 'Ingunna Sharple', '38 Delaware Pass', 'Sangongqiao', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (744, 'Lib Mac Giany', '52 Messerschmidt Street', 'Zhendong', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (745, 'Hurleigh Jeram', '7261 Buell Road', 'Bécancour', 'G9H');
insert into customers (customer_id, customer_name, address, city, postal_code) values (746, 'Ephrayim Terbeek', '93 Red Cloud Parkway', 'Baishan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (747, 'Marylynne Yarnley', '38 Northport Alley', 'Jingpeng', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (748, 'Lyle Torregiani', '0 Morningstar Pass', 'Pancoran', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (749, 'Michael Chalkly', '477 Homewood Street', 'Meruge', '3405-354');
insert into customers (customer_id, customer_name, address, city, postal_code) values (750, 'Agnese Renzullo', '960 International Drive', 'Vërtop', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (751, 'Natassia Balle', '5917 Luster Way', 'Golmud', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (752, 'Demetria Stopp', '7 Clyde Gallagher Way', 'Rabig', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (753, 'Lilyan Tredgold', '46987 Onsgard Hill', 'Ōiso', '259-1220');
insert into customers (customer_id, customer_name, address, city, postal_code) values (754, 'Garrott Kimbley', '324 Cambridge Center', 'Carapelhos', '3070-605');
insert into customers (customer_id, customer_name, address, city, postal_code) values (755, 'Neely Scutt', '57524 Kensington Place', 'Yangdi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (756, 'Chandler Whelband', '0735 Calypso Court', 'Soisy-sous-Montmorency', '95234');
insert into customers (customer_id, customer_name, address, city, postal_code) values (757, 'Giraud Lohering', '89 Merrick Park', 'Klimavichy', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (758, 'Deny Clilverd', '16268 School Court', 'Batiano', '4115');
insert into customers (customer_id, customer_name, address, city, postal_code) values (759, 'Gabriel Stainson', '027 Shopko Terrace', 'Ngulahan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (760, 'Jaclin Doud', '0 Cody Parkway', 'Proletar', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (761, 'Maureen Clitherow', '3 Sloan Terrace', 'Nuing', '1707');
insert into customers (customer_id, customer_name, address, city, postal_code) values (762, 'Fernande Betton', '6 Twin Pines Circle', 'Mýki', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (763, 'Brandi Zmitruk', '6 Hanson Circle', 'Biting', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (764, 'Horten Garnsworth', '86 Logan Pass', 'Yayva', '618340');
insert into customers (customer_id, customer_name, address, city, postal_code) values (765, 'Ketti Leupoldt', '35054 Kensington Plaza', 'Log pri Brezovici', '1358');
insert into customers (customer_id, customer_name, address, city, postal_code) values (766, 'Nydia Wybourne', '19802 Granby Junction', 'Dharān Bāzār', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (767, 'Cristen Fulloway', '3 Judy Lane', 'Boco', '2425-405');
insert into customers (customer_id, customer_name, address, city, postal_code) values (768, 'Nerta Garman', '57 Goodland Plaza', 'Cipolletti', '8324');
insert into customers (customer_id, customer_name, address, city, postal_code) values (769, 'Carolyn Linstead', '34 Red Cloud Parkway', 'Bandungan Timur', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (770, 'Arnold Gerold', '07 Northfield Road', 'Pilníkov', '542 42');
insert into customers (customer_id, customer_name, address, city, postal_code) values (771, 'Paula Creaven', '74679 Sloan Way', 'Serhetabat', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (772, 'Wenonah Jeays', '9 Lunder Crossing', 'Rashaant', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (773, 'Briny Merriment', '12387 Riverside Trail', 'Al Manqaf', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (774, 'Arte Cunnane', '19 Mayer Drive', 'Manaus', '69000-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (775, 'Juliana Baudasso', '36985 Hovde Place', 'Higashimurayama-shi', '359-1144');
insert into customers (customer_id, customer_name, address, city, postal_code) values (776, 'Nina Casillis', '2 Hagan Hill', 'Krajan Curahcotok', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (777, 'Patricio Morkham', '58 Pennsylvania Pass', 'Shuihu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (778, 'Adriano Sitch', '9 Browning Street', 'Mandala', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (779, 'Raphaela Hantusch', '3 Mallory Terrace', 'Choujiang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (780, 'Finn Kingsman', '4519 Springs Alley', 'Mae Sai', '57130');
insert into customers (customer_id, customer_name, address, city, postal_code) values (781, 'Rana Able', '3 Little Fleur Street', 'Mahābād', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (782, 'Savina Enevoldsen', '3707 Mallory Crossing', 'Citatah Kaler', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (783, 'Arlen Doddrell', '7 Jay Parkway', 'Qaşr al Farāfirah', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (784, 'L;urette Gilburt', '69506 Mayfield Place', 'Seres', '7109');
insert into customers (customer_id, customer_name, address, city, postal_code) values (785, 'Ray Blant', '76 Sachs Park', 'Nizao', '11511');
insert into customers (customer_id, customer_name, address, city, postal_code) values (786, 'Carmella Aarons', '70 Orin Circle', 'Shiling', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (787, 'Aurel Klicher', '2421 Golf Course Way', 'Suzdal’', '601293');
insert into customers (customer_id, customer_name, address, city, postal_code) values (788, 'Locke Darter', '9864 Sloan Parkway', 'Dongping', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (789, 'Eloise Gunston', '67 Golden Leaf Avenue', 'Fanrong', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (790, 'Cammy McLukie', '32669 Talmadge Lane', 'Waterbury', '06705');
insert into customers (customer_id, customer_name, address, city, postal_code) values (791, 'Bert Lyffe', '0 7th Point', 'Janas', '2710-257');
insert into customers (customer_id, customer_name, address, city, postal_code) values (792, 'Towny Backhouse', '4 Acker Parkway', 'Shuangjie', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (793, 'Mack Hussy', '857 Merchant Park', 'Nglojo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (794, 'Sadella Austwick', '3 Union Court', 'Vir', '1241');
insert into customers (customer_id, customer_name, address, city, postal_code) values (795, 'Kara Arger', '18132 Milwaukee Avenue', 'Pueblo Nuevo', '52332');
insert into customers (customer_id, customer_name, address, city, postal_code) values (796, 'Durante Norman', '553 Ridge Oak Lane', 'Lumbang', '4014');
insert into customers (customer_id, customer_name, address, city, postal_code) values (797, 'Nerti Deignan', '367 Forest Dale Circle', 'Rueil-Malmaison', '92848 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (798, 'Spence Tissiman', '82 Clove Way', 'Miguel Hidalgo', '39120');
insert into customers (customer_id, customer_name, address, city, postal_code) values (799, 'Shoshanna Scotti', '40109 Dryden Parkway', 'Shiquan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (800, 'Natalie Phippin', '62 Mendota Lane', 'Đồng Mỏ', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (801, 'Pincas Moen', '0 Crest Line Parkway', 'Balangpule', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (802, 'Demetrius Naris', '66 Harper Avenue', 'Kuala Lumpur', '50782');
insert into customers (customer_id, customer_name, address, city, postal_code) values (803, 'Abbey Grouse', '87785 Spaight Circle', 'Kokas', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (804, 'Stacee Askwith', '67349 Hollow Ridge Way', 'Hongyanxi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (805, 'Maynard Uzielli', '93 Autumn Leaf Hill', 'Qiwen', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (806, 'Freddy Brandenberg', '191 Bayside Alley', 'Pisz', '12-201');
insert into customers (customer_id, customer_name, address, city, postal_code) values (807, 'Tobe Frodsam', '554 Old Gate Park', 'Sacramento', '94291');
insert into customers (customer_id, customer_name, address, city, postal_code) values (808, 'Cherilyn Tape', '57 Fisk Hill', 'Karlstad', '652 17');
insert into customers (customer_id, customer_name, address, city, postal_code) values (809, 'Cari Crates', '435 Luster Lane', 'Lagunillas', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (810, 'Kyla Bengefield', '773 Schurz Plaza', 'Liulin', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (811, 'Abigail Johns', '5338 Bay Pass', 'Novocheboksarsk', '429959');
insert into customers (customer_id, customer_name, address, city, postal_code) values (812, 'Dorey Yukhnev', '0040 Fordem Point', 'Poitiers', '86054 CEDEX 9');
insert into customers (customer_id, customer_name, address, city, postal_code) values (813, 'Frederico Ganders', '40 Melvin Avenue', 'Jati', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (814, 'Trevar Gossop', '8 Gulseth Drive', 'Suan Luang', '52120');
insert into customers (customer_id, customer_name, address, city, postal_code) values (815, 'Wendel Kahen', '6371 Johnson Alley', 'Lusigang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (816, 'Kassie Flooks', '1284 Manitowish Pass', 'Tarkwa', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (817, 'Katrine Shiell', '671 Bunker Hill Junction', 'Bulawayo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (818, 'Lisbeth Ridge', '2 Fieldstone Place', 'Lozova', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (819, 'Burch Mc Ilory', '109 Crest Line Avenue', 'Siuna', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (820, 'Zachery Alessandretti', '7047 Grim Terrace', 'Las Vegas', '89160');
insert into customers (customer_id, customer_name, address, city, postal_code) values (821, 'Burk Male', '826 Mandrake Circle', 'Sanli', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (822, 'Karol Gilder', '12 Brickson Park Plaza', 'Niandui', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (823, 'Wilmer Wandrich', '6 Maywood Park', 'Hetang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (824, 'Felecia Winborn', '58 Sutteridge Pass', 'Karolinka', '756 05');
insert into customers (customer_id, customer_name, address, city, postal_code) values (825, 'Darren Waterhouse', '48966 Sutteridge Plaza', 'Khanino', '301420');
insert into customers (customer_id, customer_name, address, city, postal_code) values (826, 'Joaquin Sweedland', '0 Lighthouse Bay Circle', 'Supu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (827, 'Sandy Babbidge', '82669 Harbort Circle', 'Kemisē', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (828, 'Mariele Solland', '8 Fair Oaks Road', 'Pule', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (829, 'Xerxes Sebert', '97 Doe Crossing Plaza', 'Hezuo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (830, 'Deloria Pulster', '79290 Holy Cross Park', 'Umm Ruwaba', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (831, 'Alexina Adrain', '8736 Oriole Hill', 'Isangel', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (832, 'Paxton Cookson', '03 Northland Point', 'Álli Meriá', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (833, 'Jade Quarry', '279 Autumn Leaf Lane', 'Fushan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (834, 'Gwyn Farnorth', '4 Nelson Plaza', 'Orange', '92668');
insert into customers (customer_id, customer_name, address, city, postal_code) values (835, 'Inigo Gillian', '26 Carioca Court', 'Pärnu-Jaagupi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (836, 'Moreen Simm', '9 Reinke Place', 'Newlands', '7700');
insert into customers (customer_id, customer_name, address, city, postal_code) values (837, 'Eduardo Mullally', '2911 Pawling Drive', 'Ban Ko Lan', '48180');
insert into customers (customer_id, customer_name, address, city, postal_code) values (838, 'Avis Schinetti', '6 Sundown Terrace', 'Prosyana', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (839, 'Leoline Sambedge', '85839 American Ash Center', 'Libei', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (840, 'Edlin Sage', '96117 Quincy Hill', 'Gouveia', '6290-311');
insert into customers (customer_id, customer_name, address, city, postal_code) values (841, 'Cordelie McKerrow', '76958 Center Alley', 'Daba', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (842, 'Susanna Ledamun', '3726 Reinke Avenue', 'Mingshui', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (843, 'Ker Warlaw', '281 Westend Way', 'Barcelona', '08075');
insert into customers (customer_id, customer_name, address, city, postal_code) values (844, 'Gabie Gilfillan', '0 Wayridge Plaza', 'Artjärvi', '16201');
insert into customers (customer_id, customer_name, address, city, postal_code) values (845, 'Morna Pude', '599 Ohio Avenue', 'North York', 'M3H');
insert into customers (customer_id, customer_name, address, city, postal_code) values (846, 'Marylynne McNaughton', '20110 Browning Center', 'Urzhar', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (847, 'Sherilyn Kopacek', '94040 Service Avenue', 'Granada', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (848, 'Jaime Jentgens', '62 Gina Court', 'Ermida', '3070-125');
insert into customers (customer_id, customer_name, address, city, postal_code) values (849, 'Adrian Retchless', '288 Springview Lane', 'Poiares', '5180-344');
insert into customers (customer_id, customer_name, address, city, postal_code) values (850, 'Rianon Batcock', '83488 Florence Alley', 'Laojun', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (851, 'Bennie Gilcriest', '1 Golden Leaf Junction', 'Bennäs', '02701');
insert into customers (customer_id, customer_name, address, city, postal_code) values (852, 'Euphemia Flahive', '5 Barnett Alley', 'Heshui', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (853, 'Aveline Stebbings', '645 Debra Point', 'Göteborg', '403 13');
insert into customers (customer_id, customer_name, address, city, postal_code) values (854, 'Joannes Dadge', '1 Eliot Lane', 'Agua Buena', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (855, 'Joyce Jacklin', '0 6th Point', 'Gagarawa', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (856, 'Darb Nattrass', '84 Nelson Trail', 'Liujiagou', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (857, 'Ethelred Kevlin', '9 Bunker Hill Junction', 'Soavinandriana', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (858, 'Smitty Wainman', '90156 Emmet Center', 'Toufang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (859, 'Lela Teml', '462 Doe Crossing Hill', 'Barreiras', '47800-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (860, 'Kitty Reichartz', '963 Meadow Ridge Trail', 'Doloon', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (861, 'Danica Bellas', '9523 Corben Park', 'Cuauhtemoc', '62767');
insert into customers (customer_id, customer_name, address, city, postal_code) values (862, 'Gretchen Welbourn', '01 Namekagon Hill', 'Guder Lao', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (863, 'Faustine Gwillim', '99660 Onsgard Lane', 'Kengyuan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (864, 'Kirk Hassell', '14668 Maple Wood Place', 'Ketawang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (865, 'Gianni MacCome', '95955 Huxley Court', 'Turośń Kościelna', '18-106');
insert into customers (customer_id, customer_name, address, city, postal_code) values (866, 'Griffin Radleigh', '42745 Park Meadow Avenue', 'Curahnongko', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (867, 'Bentlee Davidavidovics', '0238 Hansons Park', 'Angatel', '4335');
insert into customers (customer_id, customer_name, address, city, postal_code) values (868, 'Gerome Cuttle', '67941 Cordelia Terrace', 'Ivyanyets', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (869, 'Otes Dargavel', '2262 Bartillon Junction', 'Vénissieux', '69639 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (870, 'Eveline Rawcliff', '02329 Riverside Pass', 'Roissy Charles-de-Gaulle', '95933 CEDEX 2');
insert into customers (customer_id, customer_name, address, city, postal_code) values (871, 'Florry Sarge', '8348 Aberg Lane', 'Kavallári', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (872, 'Gaby Dollar', '389 Emmet Place', 'Pochinki', '607910');
insert into customers (customer_id, customer_name, address, city, postal_code) values (873, 'Scot Maxworthy', '353 Clarendon Junction', 'Tibakisa', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (874, 'Corrinne Penkman', '75152 Lake View Plaza', 'Nuits-Saint-Georges', '21704 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (875, 'Doti Stinchcombe', '80665 Charing Cross Trail', 'Hengxi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (876, 'Emmett Niccols', '74960 Acker Place', 'Leones', '2594');
insert into customers (customer_id, customer_name, address, city, postal_code) values (877, 'Marlo Ayars', '6477 Butterfield Point', 'Simpanganduwet', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (878, 'Cymbre Bembrigg', '2 International Point', 'Yunlu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (879, 'Ettore Chalfant', '0 Barnett Pass', 'Nerópolis', '75460-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (880, 'Audie Davidavidovics', '23280 Burrows Street', 'Sumberrejo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (881, 'Inger McColm', '92 Washington Circle', 'Las Mesas', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (882, 'Eilis McGilbon', '968 Emmet Drive', 'Tegalsari', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (883, 'Allayne Flavelle', '72919 Sutteridge Circle', 'Ōno-hara', '739-0559');
insert into customers (customer_id, customer_name, address, city, postal_code) values (884, 'Rem Crowcher', '974 Luster Point', 'Karbunara e Vogël', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (885, 'Dottie Marcone', '7393 Algoma Road', 'Wakefield', '7052');
insert into customers (customer_id, customer_name, address, city, postal_code) values (886, 'Monika Standbridge', '86964 Farmco Center', 'Zipaquirá', '250258');
insert into customers (customer_id, customer_name, address, city, postal_code) values (887, 'Damiano Cowthart', '894 Heffernan Road', 'Norrtälje', '761 51');
insert into customers (customer_id, customer_name, address, city, postal_code) values (888, 'Monro Greensall', '05 Declaration Alley', 'Milano', '20136');
insert into customers (customer_id, customer_name, address, city, postal_code) values (889, 'Henryetta Reck', '3 Manufacturers Lane', 'Heping', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (890, 'Devin Mowbury', '958 Redwing Drive', 'Tessaoua', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (891, 'Sawyere Frossell', '799 Larry Center', 'Puente Nacional', '684527');
insert into customers (customer_id, customer_name, address, city, postal_code) values (892, 'Isabeau Heighton', '23 Kingsford Way', 'Thị Trấn Tân Yên', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (893, 'Cinnamon Huntall', '34 High Crossing Plaza', 'Los Angeles', '90065');
insert into customers (customer_id, customer_name, address, city, postal_code) values (894, 'Adaline Epinay', '03226 Walton Parkway', 'Chengyang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (895, 'Vivyanne Glenn', '958 Division Hill', 'Pontinha', '1675-007');
insert into customers (customer_id, customer_name, address, city, postal_code) values (896, 'Conrad Wyatt', '393 Randy Terrace', 'Triwil', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (897, 'Tucky Jahan', '32273 Northland Pass', 'Serrana', '14150-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (898, 'Clio De Malchar', '8 Charing Cross Circle', 'Taizhou', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (899, 'Dick Perrelle', '21 Tennessee Circle', 'Gunungmalang Satu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (900, 'Serene Scoggan', '59 Fordem Parkway', 'Murça', '5155-505');
insert into customers (customer_id, customer_name, address, city, postal_code) values (901, 'Theodore Lillecrop', '81 Clarendon Park', 'Kaliningrad', '346527');
insert into customers (customer_id, customer_name, address, city, postal_code) values (902, 'Abbye Robel', '99914 Derek Circle', 'Nanjie', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (903, 'Padraig Gun', '0500 Lunder Avenue', 'Nal’chik', '361424');
insert into customers (customer_id, customer_name, address, city, postal_code) values (904, 'Sauncho Boulden', '38 Charing Cross Drive', 'Zhoutou', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (905, 'Candida Pringuer', '8009 Mayfield Way', 'Rouen', '76029 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (906, 'Hiram Castelli', '22159 Marquette Junction', 'Baton Rouge', '70836');
insert into customers (customer_id, customer_name, address, city, postal_code) values (907, 'Hyacinthia Rillatt', '2758 Mesta Center', 'Talovyy', '346536');
insert into customers (customer_id, customer_name, address, city, postal_code) values (908, 'Casandra Knottley', '38 Arrowood Court', 'El Refugio', '45310');
insert into customers (customer_id, customer_name, address, city, postal_code) values (909, 'Shepperd Westpfel', '3 Superior Trail', 'Amsterdam Nieuw West', '1069');
insert into customers (customer_id, customer_name, address, city, postal_code) values (910, 'Lesley Polfer', '52 Talmadge Hill', 'Drammen', '3012');
insert into customers (customer_id, customer_name, address, city, postal_code) values (911, 'Saunderson Robins', '959 Farwell Street', 'Sebuku', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (912, 'Reta Jarrel', '819 Jana Place', 'Kodinsk', '663490');
insert into customers (customer_id, customer_name, address, city, postal_code) values (913, 'Rickie Bishopp', '9 Bashford Trail', 'Esil', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (914, 'Zabrina Bernardos', '69 Golf Course Alley', 'Aracaju', '49000-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (915, 'Julie Jindrak', '3438 Becker Crossing', 'Kristianstad', '291 81');
insert into customers (customer_id, customer_name, address, city, postal_code) values (916, 'Jean Badini', '6435 Longview Alley', 'Uozu', '938-0049');
insert into customers (customer_id, customer_name, address, city, postal_code) values (917, 'Lonna Wick', '4334 Bowman Plaza', 'Morrinhos', '75650-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (918, 'Brennan Phripp', '37939 Bluestem Drive', 'Hakodate', '704-8124');
insert into customers (customer_id, customer_name, address, city, postal_code) values (919, 'Christel Walak', '9509 Fairfield Trail', 'Jiangkou', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (920, 'Farra Colegrove', '95 Cherokee Road', 'Cibanten', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (921, 'Leonanie Sjostrom', '09045 Anthes Parkway', 'Manoel Urbano', '69950-000');
insert into customers (customer_id, customer_name, address, city, postal_code) values (922, 'Jeanna Olman', '745 Garrison Trail', 'Zhongdong', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (923, 'Pepito Pursglove', '9966 Truax Center', 'Ribas', '4610-535');
insert into customers (customer_id, customer_name, address, city, postal_code) values (924, 'Vevay Oades', '91 Miller Place', 'Alor Setar', '05622');
insert into customers (customer_id, customer_name, address, city, postal_code) values (925, 'Otha Thorp', '80840 Hoard Point', 'Náfplio', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (926, 'Mellisent Hadfield', '169 Glendale Street', 'Höshööt', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (927, 'Hatti Boardman', '26 Steensland Junction', 'Zhugang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (928, 'Karleen Samett', '7522 Artisan Terrace', 'Quiaios', '3080-520');
insert into customers (customer_id, customer_name, address, city, postal_code) values (929, 'Barny Lowdes', '9 Sage Junction', 'Norak', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (930, 'Anastasia Cahan', '6 Dahle Road', 'Ngrejo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (931, 'Leonore Curuclis', '86 Glacier Hill Lane', 'Dongzaogang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (932, 'Lib Jacobovitch', '496 Stone Corner Court', 'Zgurovka', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (933, 'Zebulon Senogles', '73016 Bartillon Place', 'Lazurne', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (934, 'Ingram Canadine', '9 Weeping Birch Center', 'Nacka', '131 05');
insert into customers (customer_id, customer_name, address, city, postal_code) values (935, 'Trefor Kenealy', '11453 Becker Way', 'Buôn Ma Thuột', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (936, 'Fred Carey', '56145 Sachtjen Point', 'Pargas', '90020');
insert into customers (customer_id, customer_name, address, city, postal_code) values (937, 'Adair Kenworthey', '6 Waubesa Way', 'Daşoguz', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (938, 'Kassandra Callen', '899 Lukken Terrace', 'Kilindoni', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (939, 'Patrice Howman', '55 Walton Way', 'Veyno', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (940, 'Jermaine Oleshunin', '370 Sherman Terrace', 'Macha', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (941, 'Sibilla Gush', '92 Acker Alley', 'Langsa', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (942, 'Gris Currall', '0 Graedel Place', 'Kamogatachō-kamogata', '719-0302');
insert into customers (customer_id, customer_name, address, city, postal_code) values (943, 'Britteny Doerren', '551 Browning Crossing', 'Babatngon', '6520');
insert into customers (customer_id, customer_name, address, city, postal_code) values (944, 'Midge Bullier', '983 Grasskamp Way', 'Évreux', '27095 CEDEX 9');
insert into customers (customer_id, customer_name, address, city, postal_code) values (945, 'Florinda Pinkett', '48437 Mariners Cove Road', 'Guwoterus', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (946, 'Cornelle Glencorse', '420 Monterey Road', 'Carriedo', '4710');
insert into customers (customer_id, customer_name, address, city, postal_code) values (947, 'Hussein Espin', '785 North Court', 'Gus’-Khrustal’nyy', '601508');
insert into customers (customer_id, customer_name, address, city, postal_code) values (948, 'Welby Morit', '265 Fieldstone Circle', 'Ratoath', 'A85');
insert into customers (customer_id, customer_name, address, city, postal_code) values (949, 'Tana Osbourne', '99673 Dwight Alley', 'Enköping', '745 84');
insert into customers (customer_id, customer_name, address, city, postal_code) values (950, 'Ode Dilon', '033 Garrison Plaza', 'Aūa', '96799');
insert into customers (customer_id, customer_name, address, city, postal_code) values (951, 'Dunn McQuilkin', '544 Kedzie Hill', 'Le Havre', '76069 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (952, 'Julita Nucci', '98 Fuller Court', 'Al Muţayrifī', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (953, 'Jakie Jackes', '65 Arkansas Pass', 'Lesnoy', '623851');
insert into customers (customer_id, customer_name, address, city, postal_code) values (954, 'Arlyn Mendoza', '6639 Dahle Point', 'Estelí', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (955, 'Berenice Sudran', '06722 Roxbury Road', 'Yunxi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (956, 'Whitman Flory', '0 Hermina Junction', 'Wangchang', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (957, 'Wendell Roser', '3 Pankratz Parkway', 'Buenavista', '8601');
insert into customers (customer_id, customer_name, address, city, postal_code) values (958, 'Orelia Lubman', '9 Mayer Parkway', 'Campelos', '2565-035');
insert into customers (customer_id, customer_name, address, city, postal_code) values (959, 'Jacenta Ethridge', '47055 Evergreen Avenue', 'Maliiha', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (960, 'Pincus Bolzmann', '3 Stephen Pass', 'Berdyans’k', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (961, 'Virginia Leaburn', '5 Scofield Crossing', 'Sibanicú', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (962, 'Cassey Popeley', '202 Meadow Valley Crossing', 'Quxi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (963, 'Cherilynn Pimblett', '75 Swallow Lane', 'Borbon', '6008');
insert into customers (customer_id, customer_name, address, city, postal_code) values (964, 'Elihu Jzhakov', '4970 Wayridge Terrace', 'Novikovo', '659518');
insert into customers (customer_id, customer_name, address, city, postal_code) values (965, 'Lucias Mathias', '5773 Schiller Place', 'Al Manshāh', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (966, 'Breanne Pembery', '25 Aberg Court', 'Xintun', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (967, 'Husein Linforth', '28 East Terrace', 'Yuxin', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (968, 'Jeannine Millwall', '9 Leroy Street', 'Yuanqian', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (969, 'Maddi Woller', '2 Northland Road', 'Gominhães', '4800-424');
insert into customers (customer_id, customer_name, address, city, postal_code) values (970, 'Henka Puncher', '8 Mariners Cove Way', 'Río Grande', '9420');
insert into customers (customer_id, customer_name, address, city, postal_code) values (971, 'Laurette Biskupek', '53571 Melvin Point', 'Marseille', '13382 CEDEX 13');
insert into customers (customer_id, customer_name, address, city, postal_code) values (972, 'Godwin Habishaw', '0241 Hovde Terrace', 'Ust’-Omchug', '666137');
insert into customers (customer_id, customer_name, address, city, postal_code) values (973, 'Heather Holmyard', '18020 Myrtle Trail', 'Shibi', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (974, 'Loydie Thairs', '9 Walton Parkway', 'Kuching', '93916');
insert into customers (customer_id, customer_name, address, city, postal_code) values (975, 'Mattheus Burbury', '26 Stephen Center', 'Kosonsoy Shahri', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (976, 'Poul Kolczynski', '2280 Declaration Court', 'Koski Tl', '31501');
insert into customers (customer_id, customer_name, address, city, postal_code) values (977, 'Marne Lomis', '5086 Pawling Alley', 'Leleque', '9213');
insert into customers (customer_id, customer_name, address, city, postal_code) values (978, 'Delia Owbrick', '125 Menomonie Alley', 'Angelochóri', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (979, 'Valaria Fick', '6563 Petterle Pass', 'Junik', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (980, 'Fabiano Callaway', '29839 Goodland Lane', 'Mpraeso', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (981, 'Madeline Ferronel', '09389 Hovde Pass', 'Thanatpin', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (982, 'Leigha Portman', '31313 Main Alley', 'Saint-Gaudens', '31804 CEDEX');
insert into customers (customer_id, customer_name, address, city, postal_code) values (983, 'Fina Gummie', '63892 Carey Court', 'Przewóz', '68-132');
insert into customers (customer_id, customer_name, address, city, postal_code) values (984, 'Myles Gianolini', '31519 Green Lane', 'Stockholm', '103 04');
insert into customers (customer_id, customer_name, address, city, postal_code) values (985, 'Star Rudeforth', '815 Fair Oaks Road', 'Gamboula', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (986, 'Krysta Robinett', '34744 Hooker Plaza', 'Yakovlevskoye', '242791');
insert into customers (customer_id, customer_name, address, city, postal_code) values (987, 'Isaiah Ree', '29 Clarendon Drive', 'Dawan', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (988, 'Jany Vlies', '43335 Brentwood Pass', 'Oslo', '0968');
insert into customers (customer_id, customer_name, address, city, postal_code) values (989, 'Dov Barnes', '776 Pennsylvania Crossing', 'Jadowniki Mokre', '33-271');
insert into customers (customer_id, customer_name, address, city, postal_code) values (990, 'Ileane Fittall', '84 Fremont Plaza', 'Almirante', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (991, 'Lesley Huntley', '74858 Del Mar Drive', 'Główczyce', '76-220');
insert into customers (customer_id, customer_name, address, city, postal_code) values (992, 'Teddi Mindenhall', '1 Ohio Trail', 'Mingjiu', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (993, 'Gideon Btham', '41 Moland Park', 'Sydney South', '1235');
insert into customers (customer_id, customer_name, address, city, postal_code) values (994, 'Lida Cardenoso', '83 Upham Lane', 'Cama Juan', '1656');
insert into customers (customer_id, customer_name, address, city, postal_code) values (995, 'Goddart Krug', '98 Farwell Parkway', 'Zilupe', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (996, 'Javier Northbridge', '186 Superior Place', 'San Francisco', '36441');
insert into customers (customer_id, customer_name, address, city, postal_code) values (997, 'Marquita Stegell', '159 Springview Drive', 'Nowa Ruda', '57-403');
insert into customers (customer_id, customer_name, address, city, postal_code) values (998, 'Lynnet Peaker', '44235 Buell Plaza', 'Tilcara', '4624');
insert into customers (customer_id, customer_name, address, city, postal_code) values (999, 'Fifi Zamora', '858 3rd Pass', 'Gaotuo', null);
insert into customers (customer_id, customer_name, address, city, postal_code) values (1000, 'Tony Kearey', '1 Little Fleur Street', 'Ivanishchi', '601521');

ALTER TABLE IF EXISTS public.products
    ADD CONSTRAINT category_id FOREIGN KEY (category_id)
    REFERENCES public.categories (category_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

INSERT INTO products (product_id, product_name, category_id, unit, price)
VALUES (1001, 'Milkitoe', 1, 1, 5), (1002, 'Classic MilChoc', 1, 1, 4.99), 
(1003, 'Moonlat', 1, 1, 8), (1004, 'Creamyys', 1, 2, 15), (1005, 'Oscuro', 2, 2, 12),
(1006, 'Nottic', 2, 3, 20), (1007, 'Puro', 2, 4, 25), (1008, 'Loohti', 3, 1, 7),
(1009, 'Binni', 3, 3, 13.99), (1010, 'Layte Light', 3, 2, 20);

ALTER TABLE IF EXISTS public.orders
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id)
    REFERENCES public.customers (customer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.orders
    ADD CONSTRAINT shipper_id FOREIGN KEY (shipper_id)
    REFERENCES public.shippers (shipper_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


insert into orders (order_id, customer_id, order_date, shipper_id) values (2001, 715, '2023-03-09', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2002, 820, '2023-07-01', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2003, 772, '2023-01-30', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2004, 704, '2023-03-31', 100);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2005, 785, '2023-06-22', 95);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2006, 986, '2023-01-19', 56);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2007, 897, '2023-02-26', 67);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2008, 888, '2023-05-17', 78);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2009, 919, '2023-03-25', 99);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2010, 710, '2023-05-14', 100);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2011, 811, '2023-06-22', 51);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2012, 812, '2023-01-31', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2013, 933, '2023-03-07', 53);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2014, 704, '2023-01-20', 54);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2015, 715, '2023-05-02', 55);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2016, 706, '2023-02-08', 56);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2017, 777, '2023-06-01', 67);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2018, 785, '2023-02-02', 78);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2019, 986, '2023-02-21', 89);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2020, 888, '2023-05-12', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2021, 888, '2023-04-17', 51);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2022, 986, '2023-06-28', 62);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2023, 835, '2023-04-14', 93);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2024, 917, '2023-03-21', 74);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2025, 966, '2023-04-19', 55);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2026, 888, '2023-02-03', 86);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2027, 715, '2023-04-26', 67);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2028, 715, '2023-04-02', 98);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2029, 798, '2023-01-09', 69);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2030, 888, '2023-02-08', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2031, 966, '2023-04-01', 71);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2032, 966, '2023-06-17', 82);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2033, 715, '2023-01-21', 83);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2034, 835, '2023-05-14', 64);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2035, 876, '2023-06-11', 75);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2036, 924, '2023-06-18', 66);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2037, 934, '2023-03-03', 57);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2038, 856, '2023-06-04', 88);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2039, 823, '2023-03-02', 69);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2040, 888, '2023-06-07', 50);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2041, 715, '2023-03-03', 61);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2042, 966, '2023-02-16', 72);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2043, 967, '2023-05-03', 93);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2044, 921, '2023-06-19', 64);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2045, 765, '2023-06-21', 55);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2046, 715, '2023-04-02', 66);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2047, 966, '2023-04-12', 77);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2048, 888, '2023-03-31', 98);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2049, 865, '2023-02-09', 99);
insert into orders (order_id, customer_id, order_date, shipper_id) values (2050, 826, '2023-02-01', 50);

ALTER TABLE IF EXISTS public.order_details
    ADD CONSTRAINT order_id FOREIGN KEY (order_id)
    REFERENCES public.orders (order_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.order_details
    ADD CONSTRAINT product_id FOREIGN KEY (product_id)
    REFERENCES public.products (product_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
	
INSERT INTO order_details (order_details_id, order_id, product_id, quantity)
VALUES (4001, 2029, 1002, 8),
(4045, 2038, 1001, 12),
(4023, 2004, 1001, 19),
(4099, 2024, 1008, 8),
(4055, 2001, 1007, 9),
(4036, 2036, 1009, 8),
(4068, 2013, 1006, 11),
(4013, 2026, 1004, 10),
(4089, 2043, 1001, 6),
(4063, 2009, 1010, 15),
(4071, 2033, 1002, 8),
(4007, 2042, 1003, 14),
(4012, 2024, 1006, 7),
(4096, 2004, 1008, 11),
(4076, 2026, 1004, 17),
(4021, 2003, 1009, 10),
(4038, 2029, 1009, 15),
(4080, 2043, 1008, 14),
(4002, 2013, 1001, 11),
(4058, 2041, 1003, 9),
(4093, 2020, 1003, 11),
(4043, 2011, 1002, 18),
(4027, 2033, 1007, 20),
(4069, 2028, 1006, 5),
(4031, 2002, 1003, 14),
(4057, 2032, 1007, 15),
(4090, 2002, 1007, 9),
(4072, 2019, 1006, 16),
(4044, 2044, 1009, 10),
(4061, 2001, 1001, 17),
(4018, 2041, 1009, 7),
(4083, 2005, 1002, 17),
(4053, 2047, 1001, 11),
(4015, 2033, 1007, 19),
(4085, 2041, 1005, 18),
(4041, 2027, 1005, 13),
(4010, 2016, 1008, 11),
(4028, 2011, 1006, 19),
(4098, 2027, 1002, 10),
(4033, 2045, 1009, 13),
(4086, 2045, 1003, 19),
(4046, 2005, 1001, 8),
(4006, 2039, 1009, 16),
(4079, 2003, 1001, 8),
(4094, 2032, 1003, 10),
(4019, 2038, 1008, 10),
(4082, 2006, 1008, 13),
(4034, 2003, 1009, 10),
(4064, 2006, 1005, 11),
(4009, 2042, 1006, 8),
(4056, 2037, 1003, 13),
(4075, 2034, 1008, 15),
(4040, 2009, 1009, 13),
(4025, 2013, 1002, 18);
