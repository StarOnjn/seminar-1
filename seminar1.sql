-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2015 at 05:44 AM
-- Server version: 5.5.35
-- PHP Version: 5.4.4-14+deb7u8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seminar1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Jela`
--

CREATE TABLE IF NOT EXISTS `Jela` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IME` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CIJENA` int(11) NOT NULL,
  `OPIS` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `OPIS_ENG` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SLIKA` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Jela`
--

INSERT INTO `Jela` (`ID`, `IME`, `CIJENA`, `OPIS`, `OPIS_ENG`, `SLIKA`) VALUES
(1, 'Sarma', 28, 'Priprema se od mješanog mesa, mljevenog ili rezanog te pomiješanog sa rižom i umotano u list kupusa. Bogatijeg okusa kada odstoji par dana. Često se priprema u zimsko razdoblje. Preporučeni prilog: kruh.', 'Preparation of mixed meat, minced or chopped and mixed with rice and wrapped in a cabbage leaf. Richer taste when left to rest for a few days. It is often prepared in the winter period. Recommended side dish: bread.', '/img/sarma.jpg'),
(2, 'Zagorski štrukli', 25, 'Tradicionalno jelo Hrvatskog zagorja te sjeverne hrvatske. Priprema se od vučenog tijesta punjenog svježim kravljim sirom. Štrukli mogu biti slatki ili slani, kuhani ili pečeni, te se poslužiti kao predjelo ili glavno jelo.', 'A traditional dish of the Croatian Zagorje and the northern Croatia. Preparation of extruded dough filled with fresh cow''s cheese. Štrukli can be sweet or salty, boiled or baked, and served as an appetizer or main course.', '/img/zagorski_strukli.jpg'),
(3, 'Pašticada', 65, 'Tradicionalno Dalmatinsko jelo od goveđeg buta. U istovremeno slatko, kiselo i gorkom gustom umaku. Svako područje pa i obitelj ima svoju omiljenu varijantu okusa i svaka je savršena na svoj način. Poslužuje se uz domaće njoke i po želji džem od brusnice.', 'The traditional Dalmatian dish of sirloin. With thick sause that is at the same time sweet, sour and bitter. Each area and the family has their favorite flavors and each variant is perfect in its own way . It is served with homemade gnocchi and optionally with cranberries jam.', '/img/pasticada.jpg'),
(4, 'Škampi na buzaru', 65, 'Škampi kuhani u umaku od rajčice, bijelog vina sa dodatkom češnjaka, peršina i maslinogov ulja. Najbolje poslužiti sa kruhom ili rižom. Uz škampe je potrebna i zdjelica sa  vodom u kojoj je iscjeđen limun te puno ubrusa budući da se jedu rukama.', 'Shrimp cooked in sauce made of tomatos, white wine, and the addition of garlic, parsley and olive oil. Best served with bread or rice. With shrimps we need bowl of water in which the squeezed lemon and lots of napkins as they should be eaten with hands.', '/img/skampi_na_buzaru.jpg'),
(5, 'Teletina ispod peke', 75, 'Tradicionalno jelo dalmatinske kuhinje. Teletina se sa raznim povrćem peće ispod peke na žaru. ', 'A traditional dish of Dalmatian cuisine . Veal with various vegetables baked under the lid on the grill .', '/img/teletina_ispod_peke.jpg'),
(6, 'Salata od hobotnice', 36, 'Kaže se da se hobotnica treba kuhati zajedno sa kamenom. Kada kamen omekša onda još 1h pa je i hobotnica gotova.\r\nOva salata je savršena za rashladiti tople ljetne dane.', 'It is said that the octopus should be cooked together with a stone. When stone softens then one more hour and the octopus done.\r\nThis salad is perfect for cool summer days.', '/img/salata_od_hobotnice.jpg'),
(7, 'Riba (razna) na gradele', 40, 'Riba se stavlja na gradele i premazuje ružmarinom koj je predhodno natopljen u maslinovom ulju.Kad je riba pečena,  prelije posebnom mješavinom domaćeg maslinovog ulja, octa, sitno sjeckanog češnjaka, peršina, soli i papra.\r\nStara dalmatinska poslovica kaže: riba tri puta pliva: prvi put u moru, drugi put u ulju, a treći put u vinu.', 'The fish is put on the grill and coated with rosemary, which was previously soaked in olive oil. When the fish is cooked, pour a special blend of homemade olive oil, vinegar, finely chopped garlic, parsley, salt and pepper.\r\nOld Dalmatian proverb says: fish swims three times: the first time in the sea, the second time in oil, and the third time in wine.', '/img/riba_na_gradele.jpg'),
(8, 'Janjetina sa ražnja', 75, 'Svaka prava fešta nije prava ako se ne okrene bar jedno janje. Ni Vucin koncert nije dobar ako ljude u prvim redovima ne poprska bar malo masti.', 'This is lamb, cute when it run outside but even better to eat. Dish best server anytime anywhere. Party just doesn''t feel right without it.', '/img/janjetina_sa_raznja.jpg'),
(9, 'Čobanac', 36, 'Čobanac je tradicionalno slavonsko jelo koje se priprema u loncu, diskutabilno bi ga mogli nazvati varivom. Sadrži više vrsta mesa. U juhu, se među ostalim, dodaje ljute paprike i jede se sa noklicama ili krumpirom.', 'Čobanac the traditional Slavonian dish prepared in a pot, arguable we could call it a stew. It contains several types of meat. In the soup, among other things,  hot pepper is added. Čobanac is served and eaten with noodles or potatoes.', '/img/cobanac.jpg'),
(10, 'Tikvice punjene krumpirom', 19, 'Da se i vegetarijanci i ostali ne ljubitelji mesa ne osjećaju zapostavljeno, u ponudi su se našle i tikvice sa krumpirom. Vjerojatno je jestivo, ima i tikvica.', 'Something for vegeterians. It might be good, it is zucchini with the potato. ', '/img/tikvice_punjene_krumpirom.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Pica`
--

CREATE TABLE IF NOT EXISTS `Pica` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IME` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CIJENA` int(11) NOT NULL,
  `OPIS` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `OPIS_ENG` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SLIKA` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Pica`
--

INSERT INTO `Pica` (`ID`, `IME`, `CIJENA`, `OPIS`, `OPIS_ENG`, `SLIKA`) VALUES
(1, 'Zlatni pan', 14, '', '', ''),
(2, 'Coca-Cola', 12, '', '', ''),
(3, 'Kava', 8, '', '', ''),
(4, 'Čaj', 8, '', '', ''),
(5, 'Bijelo vino', 80, '', '', ''),
(6, 'Crno vino', 80, '', '', ''),
(7, 'Mineralna voda', 20, '', '', ''),
(8, 'Voda', 10, '', '', ''),
(9, 'Gusti sok', 15, '', '', ''),
(10, 'Pelinkovac', 6, '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
