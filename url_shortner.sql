SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: 'url_shortner'
--

-- --------------------------------------------------------

--
-- Table structure for table 'urls'
--

CREATE TABLE 'urls' (
  'id' int(10) NOT NULL,
  'long_url' varchar(255) NOT NULL,
  'short_code' varchar(50) NOT NULL,
  'created' datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table 'analytics'
--

CREATE TABLE 'analytics' (
  'id' int(10) NOT NULL,
  'url_id' int(10) NOT NULL,
  'created' datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------


--
-- Table structure for table 'user'
--

CREATE TABLE 'user' (
  'user_id' int(10) NOT NULL,
  'username' varchar(200) NOT NULL,
  'password' varchar(500) NOT NULL,
  'full_name' varchar(500) NOT NULL,
  'first_name' varchar(200) NOT NULL,
  'last_name' varchar(200) NOT NULL,
  'email' varchar(200) NOT NULL,
  'mobile_number' varchar(255) NOT NULL,
  'gender' int(10) NOT NULL,
  'status' int(10) NOT NULL,
  'is_admin' int(10) NOT NULL,
  'create_date' datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Indexes for table 'urls'
--
ALTER TABLE 'urls'
  ADD PRIMARY KEY ('id');

--
-- Indexes for table 'analytics''
--
ALTER TABLE 'analytics'
  ADD PRIMARY KEY ('id');


--
-- Indexes for table 'user'
--
ALTER TABLE 'user'
  ADD PRIMARY KEY ('user_id'),
  ADD UNIQUE KEY 'user_id' ('user_id'),
  ADD UNIQUE KEY 'user_id_2' ('user_id'),
  ADD UNIQUE KEY 'user_id_3' ('user_id'),
  ADD KEY 'user_id_4' ('user_id');


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table 'urls'
--
ALTER TABLE 'urls'
  MODIFY 'id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table 'analytics'
--
ALTER TABLE 'analytics'
  MODIFY 'id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- AUTO_INCREMENT for table 'user'
--
ALTER TABLE 'user'
  MODIFY 'user_id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
