-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2025 at 05:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it108`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `Description`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerId` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerId`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(40, 'La corne d\'abondance', 'Daniel Tonini', '67, avenue de l\'Europe', 'Versailles', '78000', 'France'),
(41, 'La maison d\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
(45, 'Let\'s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany'),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico'),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
(61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
(62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
(63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany'),
(64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
(65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
(66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
(67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
(68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
(69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
(70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
(71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
(72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
(73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
(74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
(75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
(76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
(77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
(78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
(79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
(80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico'),
(81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
(82, 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
(83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
(84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
(85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l\'Abbaye', 'Reims', '51100', 'France'),
(86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
(87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(91, 'Wolski Zbyszek', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `BirthDate` date NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, wh'),
(6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese '),
(7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London off'),
(8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
(10, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
(11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
(20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
(26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
(29, 10257, 77, 15),
(30, 10258, 2, 50),
(31, 10258, 5, 65),
(32, 10258, 32, 6),
(33, 10259, 21, 10),
(34, 10259, 37, 1),
(35, 10260, 41, 16),
(36, 10260, 57, 50),
(37, 10260, 62, 15),
(38, 10260, 70, 21),
(39, 10261, 21, 20),
(40, 10261, 35, 20),
(41, 10262, 5, 12),
(42, 10262, 7, 15),
(43, 10262, 56, 2),
(44, 10263, 16, 60),
(45, 10263, 24, 28),
(46, 10263, 30, 60),
(47, 10263, 74, 36),
(48, 10264, 2, 35),
(49, 10264, 41, 25),
(50, 10265, 17, 30),
(51, 10265, 70, 20),
(52, 10266, 12, 12),
(53, 10267, 40, 50),
(54, 10267, 59, 70),
(55, 10267, 76, 15),
(56, 10268, 29, 10),
(57, 10268, 72, 4),
(58, 10269, 33, 60),
(59, 10269, 72, 20),
(60, 10270, 36, 30),
(61, 10270, 43, 25),
(62, 10271, 33, 24),
(63, 10272, 20, 6),
(64, 10272, 31, 40),
(65, 10272, 72, 24),
(66, 10273, 10, 24),
(67, 10273, 31, 15),
(68, 10273, 33, 20),
(69, 10273, 40, 60),
(70, 10273, 76, 33),
(71, 10274, 71, 20),
(72, 10274, 72, 7),
(73, 10275, 24, 12),
(74, 10275, 59, 6),
(75, 10276, 10, 15),
(76, 10276, 13, 10),
(77, 10277, 28, 20),
(78, 10277, 62, 12),
(79, 10278, 44, 16),
(80, 10278, 59, 15),
(81, 10278, 63, 8),
(82, 10278, 73, 25),
(83, 10279, 17, 15),
(84, 10279, 19, 21),
(85, 10280, 24, 12),
(86, 10280, 36, 18),
(87, 10280, 49, 30),
(88, 10280, 75, 15),
(89, 10281, 38, 60),
(90, 10281, 53, 20),
(91, 10282, 28, 10),
(92, 10282, 43, 20),
(93, 10282, 66, 30),
(94, 10283, 31, 20),
(95, 10283, 40, 40),
(96, 10283, 69, 20),
(97, 10283, 73, 60),
(98, 10284, 33, 20),
(99, 10284, 62, 15),
(100, 10284, 64, 30),
(101, 10285, 36, 20),
(102, 10285, 59, 15),
(103, 10286, 29, 20),
(104, 10286, 60, 12),
(105, 10287, 23, 40),
(106, 10287, 46, 30),
(107, 10288, 10, 20),
(108, 10288, 24, 8),
(109, 10289, 11, 40),
(110, 10289, 20, 20),
(111, 10290, 10, 50),
(112, 10290, 35, 40),
(113, 10290, 49, 21),
(114, 10290, 76, 4),
(115, 10291, 13, 18),
(116, 10291, 44, 11),
(117, 10291, 51, 5),
(118, 10292, 20, 20),
(119, 10293, 18, 12),
(120, 10293, 24, 10),
(121, 10293, 63, 5),
(122, 10293, 75, 6),
(123, 10294, 1, 18),
(124, 10294, 17, 15),
(125, 10294, 43, 15),
(126, 10294, 60, 21),
(127, 10295, 18, 30),
(128, 10295, 51, 6),
(129, 10296, 24, 12),
(130, 10296, 54, 30),
(131, 10297, 1, 4),
(132, 10297, 55, 30),
(133, 10297, 62, 6),
(134, 10298, 36, 6),
(135, 10298, 67, 7),
(136, 10298, 70, 25),
(137, 10298, 71, 30),
(138, 10299, 41, 20),
(139, 10299, 51, 15),
(140, 10300, 4, 30),
(141, 10300, 65, 20),
(142, 10300, 68, 15),
(143, 10301, 40, 10),
(144, 10301, 56, 20),
(145, 10302, 17, 40),
(146, 10302, 28, 28),
(147, 10302, 43, 12),
(148, 10303, 40, 40),
(149, 10303, 65, 30),
(150, 10303, 68, 15),
(151, 10304, 49, 30),
(152, 10304, 59, 10),
(153, 10304, 71, 2),
(154, 10305, 18, 25),
(155, 10305, 36, 20),
(156, 10305, 69, 30),
(157, 10306, 1, 10),
(158, 10306, 29, 60),
(159, 10307, 9, 6),
(160, 10307, 13, 40),
(161, 10307, 70, 5),
(162, 10308, 5, 4),
(163, 10308, 60, 40),
(164, 10308, 71, 24),
(165, 10309, 16, 40),
(166, 10309, 42, 10),
(167, 10309, 62, 5),
(168, 10310, 20, 15),
(169, 10310, 31, 3),
(170, 10311, 72, 16),
(171, 10312, 13, 4),
(172, 10312, 19, 18),
(173, 10312, 42, 12),
(174, 10312, 60, 9),
(175, 10313, 1, 20),
(176, 10314, 18, 12),
(177, 10314, 41, 24),
(178, 10314, 42, 24),
(179, 10314, 44, 16),
(180, 10314, 59, 2),
(181, 10315, 33, 15),
(182, 10315, 74, 20),
(183, 10316, 69, 30),
(184, 10317, 24, 8),
(185, 10318, 7, 20),
(186, 10318, 31, 9),
(187, 10318, 59, 10),
(188, 10319, 1, 12),
(189, 10319, 17, 8),
(190, 10319, 67, 20),
(191, 10320, 24, 15),
(192, 10321, 35, 10),
(193, 10322, 52, 20),
(194, 10323, 15, 5),
(195, 10323, 25, 4),
(196, 10323, 39, 4),
(197, 10324, 16, 21),
(198, 10324, 35, 70),
(199, 10324, 46, 30),
(200, 10324, 59, 40),
(201, 10325, 6, 6),
(202, 10325, 13, 12),
(203, 10325, 14, 9),
(204, 10325, 31, 4),
(205, 10325, 72, 40),
(206, 10326, 4, 24),
(207, 10326, 57, 16),
(208, 10327, 2, 25),
(209, 10327, 11, 50),
(210, 10327, 30, 35),
(211, 10327, 58, 30),
(212, 10328, 59, 9),
(213, 10328, 65, 40),
(214, 10328, 68, 10),
(215, 10329, 19, 10),
(216, 10329, 30, 8),
(217, 10329, 38, 20),
(218, 10329, 56, 12),
(219, 10330, 26, 50),
(220, 10330, 72, 25),
(221, 10331, 54, 15),
(222, 10332, 18, 40),
(223, 10332, 42, 10),
(224, 10332, 47, 16),
(225, 10333, 14, 10),
(226, 10333, 21, 10),
(227, 10333, 71, 40),
(228, 10334, 52, 8),
(229, 10334, 68, 10),
(230, 10335, 2, 7),
(231, 10335, 31, 25),
(232, 10335, 32, 6),
(233, 10335, 51, 48),
(234, 10336, 4, 18),
(235, 10337, 23, 40),
(236, 10337, 26, 24),
(237, 10337, 36, 20),
(238, 10337, 37, 28),
(239, 10337, 72, 25),
(240, 10338, 17, 20),
(241, 10338, 30, 15),
(242, 10339, 4, 10),
(243, 10339, 17, 70),
(244, 10339, 62, 28),
(245, 10339, 72, 25),
(246, 10340, 19, 20),
(247, 10340, 69, 20),
(248, 10341, 2, 30),
(249, 10341, 24, 30),
(250, 10341, 70, 50),
(251, 10342, 11, 15),
(252, 10342, 54, 24),
(253, 10342, 66, 5),
(254, 10343, 11, 6),
(255, 10343, 28, 12),
(256, 10343, 59, 12),
(257, 10343, 71, 40),
(258, 10344, 17, 10),
(259, 10344, 34, 10),
(260, 10345, 30, 15),
(261, 10345, 47, 15),
(262, 10345, 56, 10),
(263, 10346, 11, 15),
(264, 10346, 50, 20),
(265, 10347, 19, 30),
(266, 10347, 35, 35),
(267, 10347, 58, 30),
(268, 10347, 70, 60),
(269, 10348, 26, 6),
(270, 10348, 40, 20),
(271, 10348, 42, 20),
(272, 10349, 16, 30),
(273, 10349, 32, 25),
(274, 10350, 19, 15),
(275, 10350, 23, 5),
(276, 10350, 60, 30),
(277, 10351, 20, 40),
(278, 10351, 26, 50),
(279, 10351, 54, 30),
(280, 10352, 11, 15),
(281, 10352, 31, 24),
(282, 10352, 39, 6),
(283, 10352, 49, 60),
(284, 10353, 6, 10),
(285, 10353, 28, 10),
(286, 10354, 16, 20),
(287, 10354, 31, 10),
(288, 10355, 24, 25),
(289, 10355, 57, 25),
(290, 10356, 16, 14),
(291, 10356, 31, 12),
(292, 10356, 45, 45),
(293, 10356, 60, 10),
(294, 10357, 47, 20),
(295, 10357, 59, 25),
(296, 10357, 70, 30),
(297, 10358, 26, 50),
(298, 10358, 52, 30),
(299, 10358, 70, 20),
(300, 10359, 32, 20),
(301, 10359, 62, 20),
(302, 10360, 25, 12),
(303, 10360, 75, 30),
(304, 10361, 75, 6),
(305, 10362, 4, 10),
(306, 10362, 5, 20),
(307, 10362, 7, 20),
(308, 10362, 8, 10),
(309, 10363, 16, 30),
(310, 10363, 24, 30),
(311, 10363, 30, 30),
(312, 10363, 74, 30),
(313, 10364, 2, 6),
(314, 10364, 41, 12),
(315, 10365, 17, 30),
(316, 10366, 12, 30),
(317, 10366, 31, 12),
(318, 10366, 33, 30),
(319, 10367, 54, 15),
(320, 10367, 56, 14),
(321, 10367, 65, 20),
(322, 10367, 75, 30),
(323, 10368, 21, 5),
(324, 10368, 28, 13),
(325, 10368, 57, 25),
(326, 10368, 64, 35),
(327, 10369, 29, 20),
(328, 10369, 56, 18),
(329, 10370, 1, 15),
(330, 10370, 64, 30),
(331, 10370, 74, 20),
(332, 10371, 36, 6),
(333, 10372, 20, 12),
(334, 10372, 38, 40),
(335, 10372, 60, 70),
(336, 10372, 72, 42),
(337, 10373, 58, 80),
(338, 10373, 71, 50),
(339, 10374, 31, 30),
(340, 10374, 58, 15),
(341, 10375, 14, 15),
(342, 10375, 54, 10),
(343, 10376, 31, 42),
(344, 10377, 28, 20),
(345, 10377, 39, 20),
(346, 10378, 71, 6),
(347, 10379, 41, 8),
(348, 10379, 63, 16),
(349, 10379, 65, 20),
(350, 10380, 30, 18),
(351, 10380, 53, 20),
(352, 10380, 60, 6),
(353, 10380, 70, 30),
(354, 10381, 74, 14),
(355, 10382, 5, 30),
(356, 10382, 18, 20),
(357, 10382, 29, 15),
(358, 10382, 33, 20),
(359, 10382, 74, 30),
(360, 10383, 13, 20),
(361, 10383, 50, 15),
(362, 10383, 56, 20),
(363, 10384, 20, 28),
(364, 10384, 60, 15),
(365, 10385, 7, 10),
(366, 10385, 60, 20),
(367, 10385, 68, 8),
(368, 10386, 24, 15),
(369, 10386, 34, 10),
(370, 10387, 24, 15),
(371, 10387, 28, 6),
(372, 10387, 59, 12),
(373, 10387, 71, 15),
(374, 10388, 45, 15),
(375, 10388, 52, 20),
(376, 10388, 53, 40),
(377, 10389, 10, 16),
(378, 10389, 55, 15),
(379, 10389, 62, 20),
(380, 10389, 70, 30),
(381, 10390, 31, 60),
(382, 10390, 35, 40),
(383, 10390, 46, 45),
(384, 10390, 72, 24),
(385, 10391, 13, 18),
(386, 10392, 69, 50),
(387, 10393, 2, 25),
(388, 10393, 14, 42),
(389, 10393, 25, 7),
(390, 10393, 26, 70),
(391, 10393, 31, 32),
(392, 10393, 75, 20),
(393, 10394, 13, 10),
(394, 10394, 62, 10),
(395, 10395, 46, 28),
(396, 10395, 53, 70),
(397, 10395, 69, 8),
(398, 10396, 23, 40),
(399, 10396, 71, 60),
(400, 10397, 21, 10),
(401, 10397, 51, 18),
(402, 10398, 35, 30),
(403, 10398, 55, 120),
(404, 10399, 68, 60),
(405, 10399, 71, 30),
(406, 10399, 76, 35),
(407, 10400, 29, 21),
(408, 10400, 35, 35),
(409, 10400, 49, 30),
(410, 10401, 30, 18),
(411, 10401, 56, 70),
(412, 10401, 65, 20),
(413, 10401, 71, 60),
(414, 10402, 23, 60),
(415, 10402, 63, 65),
(416, 10403, 16, 21),
(417, 10403, 48, 70),
(418, 10404, 26, 30),
(419, 10404, 42, 40),
(420, 10404, 49, 30),
(421, 10405, 3, 50),
(422, 10406, 1, 10),
(423, 10406, 21, 30),
(424, 10406, 28, 42),
(425, 10406, 36, 5),
(426, 10406, 40, 2),
(427, 10407, 11, 30),
(428, 10407, 69, 15),
(429, 10407, 71, 15),
(430, 10408, 37, 10),
(431, 10408, 54, 6),
(432, 10408, 62, 35),
(433, 10409, 14, 12),
(434, 10409, 21, 12),
(435, 10410, 33, 49),
(436, 10410, 59, 16),
(437, 10411, 41, 25),
(438, 10411, 44, 40),
(439, 10411, 59, 9),
(440, 10412, 14, 20),
(441, 10413, 1, 24),
(442, 10413, 62, 40),
(443, 10413, 76, 14),
(444, 10414, 19, 18),
(445, 10414, 33, 50),
(446, 10415, 17, 2),
(447, 10415, 33, 20),
(448, 10416, 19, 20),
(449, 10416, 53, 10),
(450, 10416, 57, 20),
(451, 10417, 38, 50),
(452, 10417, 46, 2),
(453, 10417, 68, 36),
(454, 10417, 77, 35),
(455, 10418, 2, 60),
(456, 10418, 47, 55),
(457, 10418, 61, 16),
(458, 10418, 74, 15),
(459, 10419, 60, 60),
(460, 10419, 69, 20),
(461, 10420, 9, 20),
(462, 10420, 13, 2),
(463, 10420, 70, 8),
(464, 10420, 73, 20),
(465, 10421, 19, 4),
(466, 10421, 26, 30),
(467, 10421, 53, 15),
(468, 10421, 77, 10),
(469, 10422, 26, 2),
(470, 10423, 31, 14),
(471, 10423, 59, 20),
(472, 10424, 35, 60),
(473, 10424, 38, 49),
(474, 10424, 68, 30),
(475, 10425, 55, 10),
(476, 10425, 76, 20),
(477, 10426, 56, 5),
(478, 10426, 64, 7),
(479, 10427, 14, 35),
(480, 10428, 46, 20),
(481, 10429, 50, 40),
(482, 10429, 63, 35),
(483, 10430, 17, 45),
(484, 10430, 21, 50),
(485, 10430, 56, 30),
(486, 10430, 59, 70),
(487, 10430, 76, 33),
(488, 10431, 2, 50),
(489, 10431, 16, 12),
(490, 10431, 36, 35),
(491, 10431, 59, 50),
(492, 10432, 38, 25),
(493, 10432, 63, 150),
(494, 10433, 53, 30),
(495, 10433, 69, 20),
(496, 10434, 12, 20),
(497, 10434, 13, 5),
(498, 10434, 72, 120),
(499, 10435, 7, 60),
(500, 10435, 18, 20),
(501, 10435, 51, 20),
(502, 10436, 31, 6),
(503, 10436, 58, 12),
(504, 10436, 72, 30),
(505, 10437, 10, 12),
(506, 10437, 31, 5),
(507, 10437, 77, 15),
(508, 10438, 70, 4),
(509, 10438, 72, 20),
(510, 10439, 13, 8),
(511, 10439, 21, 15),
(512, 10439, 33, 15),
(513, 10440, 10, 20),
(514, 10440, 26, 30),
(515, 10440, 45, 35),
(516, 10440, 46, 20),
(517, 10440, 76, 6),
(518, 10441, 56, 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrderDate` int(11) NOT NULL,
  `ShipperID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(10248, 90, 5, 1996, 3),
(10249, 81, 6, 1996, 1),
(10250, 34, 4, 1996, 2),
(10251, 84, 3, 1996, 1),
(10252, 76, 4, 1996, 2),
(10253, 34, 3, 1996, 2),
(10254, 14, 5, 1996, 2),
(10255, 68, 9, 1996, 3),
(10256, 88, 3, 1996, 2),
(10257, 35, 4, 1996, 3),
(10258, 20, 1, 1996, 1),
(10259, 13, 4, 1996, 3),
(10260, 55, 4, 1996, 1),
(10261, 61, 4, 1996, 2),
(10262, 65, 8, 1996, 3),
(10263, 20, 9, 1996, 3),
(10264, 24, 6, 1996, 3),
(10265, 7, 2, 1996, 1),
(10266, 87, 3, 1996, 3),
(10267, 25, 4, 1996, 1),
(10268, 33, 8, 1996, 3),
(10269, 89, 5, 1996, 1),
(10270, 87, 1, 1996, 1),
(10271, 75, 6, 1996, 2),
(10272, 65, 6, 1996, 2),
(10273, 63, 3, 1996, 3),
(10274, 85, 6, 1996, 1),
(10275, 49, 1, 1996, 1),
(10276, 80, 8, 1996, 3),
(10277, 52, 2, 1996, 3),
(10278, 5, 8, 1996, 2),
(10279, 44, 8, 1996, 2),
(10280, 5, 2, 1996, 1),
(10281, 69, 4, 1996, 1),
(10282, 69, 4, 1996, 1),
(10283, 46, 3, 1996, 3),
(10284, 44, 4, 1996, 1),
(10285, 63, 1, 1996, 2),
(10286, 63, 8, 1996, 3),
(10287, 67, 8, 1996, 3),
(10288, 66, 4, 1996, 1),
(10289, 11, 7, 1996, 3),
(10290, 15, 8, 1996, 1),
(10291, 61, 6, 1996, 2),
(10292, 81, 1, 1996, 2),
(10293, 80, 1, 1996, 3),
(10294, 65, 4, 1996, 2),
(10295, 85, 2, 1996, 2),
(10296, 46, 6, 1996, 1),
(10297, 7, 5, 1996, 2),
(10298, 37, 6, 1996, 2),
(10299, 67, 4, 1996, 2),
(10300, 49, 2, 1996, 2),
(10301, 86, 8, 1996, 2),
(10302, 76, 4, 1996, 2),
(10303, 30, 7, 1996, 2),
(10304, 80, 1, 1996, 2),
(10305, 55, 8, 1996, 3),
(10306, 69, 4, 1996, 3),
(10307, 48, 6, 1996, 2),
(10308, 2, 7, 1996, 3),
(10309, 37, 3, 1996, 1),
(10310, 77, 8, 1996, 2),
(10311, 18, 1, 1996, 3),
(10312, 86, 2, 1996, 2),
(10313, 63, 2, 1996, 2),
(10314, 65, 1, 1996, 2),
(10315, 38, 4, 1996, 2),
(10316, 65, 1, 1996, 2),
(10317, 48, 6, 1996, 2),
(10318, 38, 8, 1996, 2),
(10319, 80, 7, 1996, 2),
(10320, 87, 3, 1996, 2),
(10321, 38, 8, 1996, 2),
(10322, 58, 9, 1996, 2),
(10323, 39, 4, 1996, 2),
(10324, 71, 9, 1996, 2),
(10325, 39, 1, 1996, 2),
(10326, 8, 4, 1996, 2),
(10327, 24, 2, 1996, 2),
(10328, 28, 6, 1996, 2),
(10329, 75, 4, 1996, 2),
(10330, 46, 3, 1996, 2),
(10331, 9, 9, 1996, 2),
(10332, 51, 3, 1996, 2),
(10333, 87, 5, 1996, 2),
(10334, 84, 8, 1996, 2),
(10335, 37, 4, 1996, 2),
(10336, 60, 7, 1996, 2),
(10337, 25, 4, 1996, 2),
(10338, 55, 4, 1996, 2),
(10339, 51, 2, 1996, 2),
(10340, 20, 8, 1996, 2),
(10341, 17, 3, 1996, 2),
(10342, 40, 4, 1996, 2),
(10343, 47, 4, 1996, 2),
(10344, 71, 4, 1996, 2),
(10345, 79, 8, 1996, 2),
(10346, 34, 3, 1996, 2),
(10347, 7, 4, 1996, 2),
(10348, 84, 4, 1996, 2),
(10349, 76, 7, 1996, 2),
(10350, 12, 8, 1996, 2),
(10351, 7, 1, 1996, 2),
(10352, 63, 2, 1996, 2),
(10353, 28, 7, 1996, 2),
(10354, 73, 8, 1996, 2),
(10355, 39, 6, 1996, 2),
(10356, 20, 6, 1996, 2),
(10357, 58, 3, 1996, 2),
(10358, 4, 4, 1996, 2),
(10359, 47, 4, 1996, 2),
(10360, 41, 3, 1996, 2),
(10361, 36, 1, 1996, 2),
(10362, 20, 8, 1996, 2),
(10363, 40, 4, 1996, 2),
(10364, 87, 1, 1996, 2),
(10365, 37, 3, 1996, 2),
(10366, 54, 8, 1996, 2),
(10367, 25, 3, 1996, 2),
(10368, 33, 3, 1996, 2),
(10369, 89, 8, 1996, 2),
(10370, 87, 1, 1996, 2),
(10371, 75, 1, 1996, 2),
(10372, 65, 6, 1996, 2),
(10373, 63, 3, 1996, 2),
(10374, 85, 8, 1996, 2),
(10375, 49, 1, 1996, 2),
(10376, 80, 3, 1996, 2),
(10377, 52, 2, 1996, 2),
(10378, 5, 8, 1996, 2),
(10379, 44, 8, 1996, 2),
(10380, 5, 2, 1996, 2),
(10381, 69, 4, 1996, 2),
(10382, 69, 4, 1996, 2),
(10383, 46, 3, 1996, 2),
(10384, 44, 4, 1996, 2),
(10385, 63, 1, 1996, 2),
(10386, 63, 8, 1996, 2),
(10387, 67, 8, 1996, 2),
(10388, 66, 4, 1996, 2),
(10389, 11, 7, 1996, 2),
(10390, 15, 8, 1996, 2),
(10391, 61, 6, 1996, 2),
(10392, 81, 1, 1996, 2),
(10393, 80, 1, 1996, 2),
(10394, 65, 4, 1996, 2),
(10395, 85, 2, 1996, 2),
(10396, 46, 6, 1996, 2),
(10397, 7, 5, 1996, 2),
(10398, 37, 6, 1996, 2),
(10399, 67, 4, 1996, 2),
(10400, 49, 2, 1997, 2),
(10401, 86, 8, 1997, 2),
(10402, 76, 4, 1997, 2),
(10403, 30, 7, 1997, 2),
(10404, 80, 1, 1997, 2),
(10405, 55, 8, 1997, 2),
(10406, 69, 4, 1997, 2),
(10407, 48, 6, 1997, 2),
(10408, 2, 7, 1997, 2),
(10409, 37, 3, 1997, 2),
(10410, 77, 8, 1997, 2),
(10411, 18, 1, 1997, 2),
(10412, 86, 2, 1997, 2),
(10413, 63, 2, 1997, 2),
(10414, 65, 1, 1997, 2),
(10415, 38, 4, 1997, 2),
(10416, 65, 1, 1997, 2),
(10417, 48, 6, 1997, 2),
(10418, 38, 8, 1997, 2),
(10419, 80, 7, 1997, 2),
(10420, 87, 3, 1997, 2),
(10421, 38, 8, 1997, 2),
(10422, 58, 9, 1997, 2),
(10423, 39, 4, 1997, 2),
(10424, 71, 9, 1997, 2),
(10425, 39, 1, 1997, 2),
(10426, 8, 4, 1997, 2),
(10427, 24, 2, 1997, 2),
(10428, 28, 6, 1997, 2),
(10429, 75, 4, 1997, 2),
(10430, 46, 3, 1997, 2),
(10431, 9, 9, 1997, 2),
(10432, 51, 3, 1997, 2),
(10433, 87, 5, 1997, 2),
(10434, 84, 8, 1997, 2),
(10435, 37, 4, 1997, 2),
(10436, 60, 7, 1997, 2),
(10437, 25, 4, 1997, 2),
(10438, 55, 4, 1997, 2),
(10439, 51, 2, 1997, 2),
(10440, 20, 8, 1997, 2),
(10441, 17, 3, 1997, 2),
(10442, 40, 4, 1997, 2),
(10443, 47, 4, 1997, 2),
(10444, 71, 4, 1997, 2),
(10445, 79, 8, 1997, 2),
(10446, 34, 3, 1997, 2),
(10447, 7, 4, 1997, 2),
(10498, 37, 6, 1997, 2),
(10499, 67, 4, 1997, 2),
(10500, 49, 2, 1997, 2),
(10501, 86, 8, 1997, 2),
(10502, 76, 4, 1997, 2),
(10503, 30, 7, 1997, 2),
(10504, 80, 1, 1997, 2),
(10505, 55, 8, 1997, 2),
(10506, 69, 4, 1997, 2),
(10507, 48, 6, 1997, 2),
(10508, 2, 7, 1997, 2),
(10509, 37, 3, 1997, 2),
(10510, 77, 8, 1997, 2),
(10511, 18, 1, 1997, 2),
(10512, 86, 2, 1997, 2),
(10513, 63, 2, 1997, 2),
(10514, 65, 1, 1997, 2),
(10515, 38, 4, 1997, 2),
(10516, 65, 1, 1997, 2),
(10517, 48, 6, 1997, 2),
(10518, 38, 8, 1997, 2),
(10519, 80, 7, 1997, 2),
(10520, 87, 3, 1997, 2),
(10521, 38, 8, 1997, 2),
(10522, 58, 9, 1997, 2),
(10523, 39, 4, 1997, 2),
(10524, 71, 9, 1997, 2),
(10525, 39, 1, 1997, 2),
(10526, 8, 4, 1997, 2),
(10527, 24, 2, 1997, 2),
(10528, 28, 6, 1997, 2),
(10529, 75, 4, 1997, 2),
(10530, 46, 3, 1997, 2),
(10531, 9, 9, 1997, 2),
(10532, 51, 3, 1997, 2),
(10533, 87, 5, 1997, 2),
(10534, 84, 8, 1997, 2),
(10535, 37, 4, 1997, 2),
(10536, 60, 7, 1997, 2),
(10537, 25, 4, 1997, 2),
(10538, 55, 4, 1997, 2),
(10539, 51, 2, 1997, 2),
(10540, 20, 8, 1997, 2),
(10541, 17, 3, 1997, 2),
(10542, 40, 4, 1997, 2),
(10543, 47, 4, 1997, 2),
(10544, 71, 4, 1997, 2),
(10545, 79, 8, 1997, 2),
(10546, 34, 3, 1997, 2),
(10547, 7, 4, 1997, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18.00),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.00),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.00),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.00),
(13, 'Konbu', 6, 8, '2 kg box', 6.00),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.50),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.00),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.50),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.20),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81.00),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.00),
(22, 'Gustaf\'s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21.00),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9.00),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.50),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.00),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.90),
(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.60),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.50),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.00),
(33, 'Geitost', 15, 4, '500 g', 2.50),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.00),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.00),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19.00),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.00),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.50),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.00),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.40),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.00),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.00),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45),
(45, 'Røgede sild', 21, 8, '1k pkg.', 9.50),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.00),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.50),
(48, 'Chocolade', 22, 3, '10 pkgs.', 12.75),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.00),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.00),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.00),
(53, 'Perth Pasties', 24, 6, '48 pieces', 32.80),
(54, 'Tourtière', 25, 6, '16 pies', 7.45),
(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24.00),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.00),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.50),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.00),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.00),
(61, 'Sirop d\'érable', 29, 2, '24 - 500 ml bottles', 28.50),
(62, 'Tarte au sucre', 29, 3, '48 pies', 49.30),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.90),
(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.00),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.00),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.50),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.00),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.00),
(71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 21.50),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.80),
(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15.00),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.00),
(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75),
(76, 'Lakkalikööri', 23, 1, '500 ml', 18.00),
(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13.00);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735'),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011'),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54'),
(6, 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877'),
(7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia', '(03) 444-2343'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King\'s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448'),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden', '031-987 65 43'),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640'),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510'),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713'),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323'),
(15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010'),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA', '(503) 555-9931'),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67'),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68'),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '02134', 'USA', '(617) 555-3267'),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '0512', 'Singapore', '555-8787'),
(21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108'),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212'),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956'),
(24, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', '2042', 'Australia', '(02) 555-5914'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665'),
(27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07'),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06'),
(29, 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada', '(514) 555-2955');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `fk_orderdetails_products` (`ProductID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `orders_ibfk_3` (`ShipperID`),
  ADD KEY `orders` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `fk_products_categories_1` (`CategoryID`),
  ADD KEY `fk_products_suppliers_1` (`SupplierID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10548;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerId`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `orderdetails` (`ProductID`);

--
-- Constraints for table `shippers`
--
ALTER TABLE `shippers`
  ADD CONSTRAINT `shippers_ibfk_1` FOREIGN KEY (`ShipperID`) REFERENCES `orders` (`ShipperID`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `products` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
