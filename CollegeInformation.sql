-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ci_system
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ci_system;
USE ci_system;

--
-- Table structure for table `ci_system`.`exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `student_id` int(10) unsigned NOT NULL default '0',
  `branch` varchar(45) NOT NULL default '',
  `department` varchar(45) NOT NULL default '',
  `year` varchar(45) NOT NULL default '',
  `subject` varchar(45) NOT NULL default '',
  `marks` varchar(45) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `FK_marks_1` (`student_id`),
  CONSTRAINT `FK_marks_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`exam`
--

/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` (`id`,`student_id`,`branch`,`department`,`year`,`subject`,`marks`,`status`) VALUES 
 (1,1,'CSE','CSE','2015','maths','250','PRESENT');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;


--
-- Table structure for table `ci_system`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL default '',
  `password` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`username`,`password`) VALUES 
 (1,'zafar','zzz');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `ci_system`.`s_attendance`
--

DROP TABLE IF EXISTS `s_attendance`;
CREATE TABLE `s_attendance` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `student_id` int(11) NOT NULL default '0',
  `att_date` date NOT NULL default '0000-00-00',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`s_attendance`
--

/*!40000 ALTER TABLE `s_attendance` DISABLE KEYS */;
INSERT INTO `s_attendance` (`id`,`student_id`,`att_date`,`status`) VALUES 
 (1,1,'2016-02-02','PRESENT');
/*!40000 ALTER TABLE `s_attendance` ENABLE KEYS */;


--
-- Table structure for table `ci_system`.`student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `gender` varchar(6) NOT NULL default '',
  `dob` date default NULL,
  `contact` varchar(20) NOT NULL default '0',
  `email` varchar(45) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `branch` varchar(45) NOT NULL default '',
  `department` varchar(45) NOT NULL default '',
  `year` varchar(20) NOT NULL default '0',
  `cast` varchar(45) NOT NULL default '',
  `sub_cast` varchar(45) NOT NULL default '',
  `admission_date` date NOT NULL default '0000-00-00',
  `cl_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`name`,`gender`,`dob`,`contact`,`email`,`address`,`branch`,`department`,`year`,`cast`,`sub_cast`,`admission_date`,`cl_date`) VALUES 
 (1,'fname','male','2015-05-05','8899552211','zafa2gmail.com','jalgaon','45452','aa','2026','mm','mm','2016-02-02','2015-05-05'),
 (2,'zafarkhan','male','2014-02-05','88995552211','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02'),
 (3,'satish','male','2015-05-05','8899552244','za@gmail.com','malkapur','it','it','2007','aa','aa','2015-01-01','2015-01-01'),
 (4,'fahim','male','2014-02-05','8899552244','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02'),
 (5,'za','male','2014-02-05','8855','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02'),
 (6,'za','male','2014-02-05','8855','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02'),
 (7,'as','male','2014-02-05','8855','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02'),
 (8,'zaf','male','2014-02-05','8855','asx@gmail.com','jalgaon','it','ZX','2008','muslim','muslim','2014-05-05','2009-02-02');
INSERT INTO `student` (`id`,`name`,`gender`,`dob`,`contact`,`email`,`address`,`branch`,`department`,`year`,`cast`,`sub_cast`,`admission_date`,`cl_date`) VALUES 
 (9,'karim','male','2015-02-05','7788995544','asd@gmail.com','jalgaon','it','ZX','dad','muslim','muslim','2014-05-05','2009-02-02');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Table structure for table `ci_system`.`t_attendance`
--

DROP TABLE IF EXISTS `t_attendance`;
CREATE TABLE `t_attendance` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `teacher_id` int(10) unsigned NOT NULL default '0',
  `att_date` date NOT NULL default '0000-00-00',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `FK_t_attendance_1` (`teacher_id`),
  CONSTRAINT `FK_t_attendance_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`t_attendance`
--

/*!40000 ALTER TABLE `t_attendance` DISABLE KEYS */;
INSERT INTO `t_attendance` (`id`,`teacher_id`,`att_date`,`status`) VALUES 
 (1,1,'2016-02-02','PRESENT');
/*!40000 ALTER TABLE `t_attendance` ENABLE KEYS */;


--
-- Table structure for table `ci_system`.`teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `gender` varchar(6) NOT NULL default '',
  `qualification` varchar(20) NOT NULL default '',
  `dob` date NOT NULL default '0000-00-00',
  `subject` varchar(45) NOT NULL default '',
  `contact_no` bigint(20) unsigned NOT NULL default '0',
  `email` varchar(45) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `jdate` date NOT NULL default '0000-00-00',
  `isactive` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_system`.`teacher`
--

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`id`,`name`,`gender`,`qualification`,`dob`,`subject`,`contact_no`,`email`,`address`,`jdate`,`isactive`) VALUES 
 (1,'fname','male','be','2026-05-05','math',88992255,'zafa2gmail.com','jalgaon','2016-05-05',''),
 (2,'fname','male','be','2026-05-05','math',88992255,'zafa2gmail.com','jalgaon','2016-05-05','');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
