

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
                         `id` int(11) NOT NULL,
                         `username` varchar(255) DEFAULT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         `creationDate` timestamp NULL DEFAULT current_timestamp(),
                         `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
    (1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-31 16:21:18', '2022-01-31 16:21:18');




CREATE TABLE `course` (
                          `id` int(11) NOT NULL,
                          `courseCode` varchar(255) DEFAULT NULL,
                          `courseName` varchar(255) DEFAULT NULL,
                          `courseUnit` varchar(255) DEFAULT NULL,
                          `noofSeats` int(11) DEFAULT NULL,
                          `creationDate` timestamp NULL DEFAULT current_timestamp(),
                          `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
                                                                                                                       (1, 'PHP01', 'PHP', '5', 10, '2022-02-10 17:23:28', NULL),
                                                                                                                       (2, 'C001', 'C++', '12', 25, '2022-02-11 00:52:46', '11-02-2022 06:23:06 AM');



CREATE TABLE `courseenrolls` (
                                 `id` int(11) NOT NULL,
                                 `studentRegno` varchar(255) DEFAULT NULL,
                                 `pincode` varchar(255) DEFAULT NULL,
                                 `session` int(11) DEFAULT NULL,
                                 `department` int(11) DEFAULT NULL,
                                 `level` int(11) DEFAULT NULL,
                                 `semester` int(11) DEFAULT NULL,
                                 `course` int(11) DEFAULT NULL,
                                 `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
                                                                                                                                        (1, '10806121', '822894', 1, 1, 2, 3, 1, '2022-02-11 00:59:33'),
                                                                                                                                        (2, '10806121', '822894', 1, 1, 1, 2, 2, '2022-02-11 01:01:07');


CREATE TABLE `department` (
                              `id` int(11) NOT NULL,
                              `department` varchar(255) DEFAULT NULL,
                              `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
                                                                  (1, 'IT', '2022-02-10 17:23:04'),
                                                                  (2, 'HR', '2022-02-10 17:23:09');



CREATE TABLE `level` (
                         `id` int(11) NOT NULL,
                         `level` varchar(255) DEFAULT NULL,
                         `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
                                                        (1, '1', '2022-02-11 00:59:02'),
                                                        (2, '2', '2022-02-11 00:59:02'),
                                                        (3, '3', '2022-02-11 00:59:09');



CREATE TABLE `news` (
                        `id` int(11) NOT NULL,
                        `newstitle` varchar(255) DEFAULT NULL,
                        `newsDescription` mediumtext DEFAULT NULL,
                        `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
                                                                             (2, 'Test News', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-02-10 17:36:50'),
                                                                             (3, 'New Course Started C#', 'This is sample text for testing.', '2022-02-11 00:54:38');



CREATE TABLE `semester` (
                            `id` int(11) NOT NULL,
                            `semester` varchar(255) DEFAULT NULL,
                            `creationDate` timestamp NULL DEFAULT current_timestamp(),
                            `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
                                                                              (1, '1', '2022-02-10 17:22:49', NULL),
                                                                              (2, '2', '2022-02-10 17:22:55', NULL),
                                                                              (3, '3', '2022-02-11 00:51:43', NULL);



CREATE TABLE `session` (
                           `id` int(11) NOT NULL,
                           `session` varchar(255) DEFAULT NULL,
                           `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
    (1, '2022', '2022-02-10 17:10:59');



CREATE TABLE `students` (
                            `StudentRegno` varchar(255) NOT NULL,
                            `studentPhoto` varchar(255) DEFAULT NULL,
                            `password` varchar(255) DEFAULT NULL,
                            `studentName` varchar(255) DEFAULT NULL,
                            `pincode` varchar(255) DEFAULT NULL,
                            `session` varchar(255) DEFAULT NULL,
                            `department` varchar(255) DEFAULT NULL,
                            `semester` varchar(255) DEFAULT NULL,
                            `cgpa` decimal(10,2) DEFAULT NULL,
                            `creationdate` timestamp NULL DEFAULT current_timestamp(),
                            `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
    ('10806121', '', 'f925916e2754e5e03f75dd58a5733251', 'John Doe', '822894', NULL, NULL, NULL, '7.10', '2022-02-11 00:53:31', NULL);



CREATE TABLE `userlog` (
                           `id` int(11) NOT NULL,
                           `studentRegno` varchar(255) DEFAULT NULL,
                           `userip` binary(16) DEFAULT NULL,
                           `loginTime` timestamp NULL DEFAULT current_timestamp(),
                           `logout` varchar(255) DEFAULT NULL,
                           `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
                                                                                            (1, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:55:07', NULL, 1),
                                                                                            (2, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:00', NULL, 1),
                                                                                            (3, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:22', '11-02-2022 06:31:26 AM', 1);


ALTER TABLE `admin`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `course`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `courseenrolls`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `department`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `level`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `news`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `semester`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `session`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `students`
    ADD PRIMARY KEY (`StudentRegno`);


ALTER TABLE `userlog`
    ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `course`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `courseenrolls`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `department`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `level`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `news`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `semester`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `session`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `userlog`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
