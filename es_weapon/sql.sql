CREATE TABLE IF NOT EXISTS `user_weapons` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `weapons` varchar(60) NOT NULL,
  `withdraw_cost` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;