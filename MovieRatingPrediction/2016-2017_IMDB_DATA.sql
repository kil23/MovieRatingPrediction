-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.14


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema movierating
--

CREATE DATABASE IF NOT EXISTS movierating;
USE movierating;

--
-- Definition of table `imdbdata`
--

DROP TABLE IF EXISTS `imdbdata`;
CREATE TABLE `imdbdata` (
  `Title` varchar(55) NOT NULL,
  `Director` varchar(52) NOT NULL,
  `Writer` varchar(30) DEFAULT NULL,
  `Actors` varchar(65) DEFAULT NULL,
  `Country` varchar(14) DEFAULT NULL,
  `Language` varchar(30) DEFAULT NULL,
  `Genres` varchar(41) DEFAULT NULL,
  `Rank` decimal(3,1) DEFAULT NULL,
  `Votes` varchar(7) DEFAULT NULL,
  `Dir_rating` varchar(7) DEFAULT NULL,
  `writer_rating` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imdbdata`
--

/*!40000 ALTER TABLE `imdbdata` DISABLE KEYS */;
INSERT INTO `imdbdata` (`Title`,`Director`,`Writer`,`Actors`,`Country`,`Language`,`Genres`,`Rank`,`Votes`,`Dir_rating`,`writer_rating`) VALUES 
 ('OK Jaanu (2017)','Shaad Ali','Mani Ratnam','Aditya Roy Kapoor, Shraddha Kapoor, Naseeruddin Shah','India','Hindi','Drama|Romance','5.1','2,656','5.1','5.1'),
 ('Kaabil (2017)','Sanjay Gupta','Sanjay Masoom','Hrithik Roshan, Yami Gautam, Ronit Roy','India','Hindi','Action|Crime|Thriller','7.1','20,416','7.1','7.1'),
 ('Raees (2017)','Rahul Dholakia','Rahul Dholakia','Raj Arjun, Shubham Chintamani, Shubham Tukaram','India','Hindi','Action|Crime|Thriller','7.0','32,849','7.0','7.0'),
 ('Jolly LLB 2 (2017)','Subhash Kapoor','Subhash Kapoor','Akshay Kumar, Huma Qureshi, Saurabh Shukla','India','Hindi Kashmiri','Comedy|Crime|Drama','7.3','14,851','7.3','7.3'),
 ('Rangoon (2017)','Vishal Bhardwaj','Matthew Robbins','Shahid Kapoor, Saif Ali Khan, Richard McCabe','India','Hindi','Action|Drama|History|Romance|War','5.8','2,762','5.8','5.8'),
 ('Phillauri (2017)','Anshai Lal','Anvita Dutt','Anushka Sharma Kohli, Diljit Dosanjh, Suraj Sharma','India','Hindi','Comedy|Drama|Fantasy|Horror|Romance','6.1','2,483','6.1','6.1'),
 ('Commando 2 (2017)','Deven Bhojani','Ritesh Shah','Vidyut Jammwal, Adah Sharma, Esha Gupta','India','Hindi','Action|Adventure|Crime|Thriller','5.2','1,897','5.2','6.0'),
 ('Badrinath Ki Dulhania (2017)','Shashank Khaitan','Shashank Khaitan','Varun Dhawan, Alia Bhatt, Sahil Vaid','India','Hindi','Comedy|Drama|Romance','6.2','6,792','6.2','6.2'),
 ('Machine (2017)','Abbas Alibhai Burmawalla,Mastan Alibhai Burmawalla','Sanjeev Kaul','Kiara Advani, Rishabh Arora, Mustafa Burmawala','India','Hindi','Action|Mystery|Romance|Thriller','2.6','452','2.6','2.6'),
 ('Naam Shabana (2017)','Shivam Nair','Neeraj Pandey','Tapsee Pannu, Akshay Kumar, Manoj Bajpayee','India','Hindi','Action|Adventure|Thriller','6.3','3,381','6.3','7.05'),
 ('Begum Jaan (2017)','Srijit Mukherji','PLAY Entertainment','Amitabh Bachchan, Vidya Balan, Naseeruddin Shah','India','Hindi','Action|Drama|History','5.6','1,907','5.6','5.6'),
 ('Noor (2017)','Sunhil Sippy','Saba Imtiaz','Sunny Leone, Sonakshi Sinha, Purab Kohli','India','Hindi','Comedy|Drama','3.9','992','3.9','3.9'),
 ('Baahubali 2: The Conclusion (2017)','S.S. Rajamouli','Vijayendra Prasad','Prabhas, Rana Daggubati, Anushka Shetty','India','Telugu Tamil Hindi Malayalam','Action|Drama|Fantasy','8.5','53,335','8.5','8.5'),
 ('Meri Pyaari Bindu (2017)','Akshay Roy','Suprotim Sengupta','Ayushmann Khurrana, Parineeti Chopra, Prabal Panjabi','India','Hindi','Comedy|Drama|Romance','5.7','2,150','5.7','5.7'),
 ('Sarkar 3 (2017)','Ram Gopal Varma','P. Jaya Kumar','Amitabh Bachchan, Abhishek Bachchan, Jackie Shroff','India','Hindi','Crime|Drama','4.8','1,348','5.0','4.8'),
 ('Half Girlfriend (2017)','Mohit Suri','Chetan Bhagat','Arjun Kapoor, Shraddha Kapoor, Seema Biswas','India','Hindi','Drama|Romance','4.0','4,055','4.0','4.0'),
 ('Hindi Medium (2017)','Saket Chaudhary','Saket Chaudhary','Irrfan Khan, Neha Dhupia, Saba Qamar','India','Hindi','Comedy|Drama','7.9','10,792','7.9','7.9'),
 ('Hanuman Da\' Damdaar (2017)','Ruchi Narain','Ajay Jhingran','Javed Akhtar, Balwinder Kaur Brar, Hussain Dalal','India','Hindi','Animation|Family','6.7','54','6.7','6.7'),
 ('Behen Hogi Teri (2017)','Ajay Pannalal','Sanchit Gupta','Rajkummar Rao, Shruti Haasan, Gautam Gulati','India','Hindi','Comedy','5.4','853','5.4','5.4'),
 ('Sachin (2017)','James Erskine','Siva Ananth','Sachin Tendulkar, Mahendra Singh Dhoni, Shantanu Shrikant Bhake','India','Hindi Marathi','Documentary|Biography|Drama|Sport','8.8','6,347','8.8','8.8'),
 ('Raabta (2017)','Dinesh Vijan','Garima','Deepika Padukone, Rajkummar Rao, Kriti Sanon','India','Hindi','Action|Comedy|Drama|Mystery|Romance','4.0','1,946','4.0','5.7'),
 ('Tubelight (2017)','Kabir Khan','Kabir Khan','Salman Khan, Sohail Khan, Om Puri','India','Hindi','Drama|War','4.2','10,016','4.2','4.2'),
 ('Jagga Jasoos (2017)','Anurag Basu','Anurag Basu','Ranbir Kapoor, Katrina Kaif, Saswata Chatterjee','India','Hindi','Action|Adventure|Comedy|Musical|Mystery','6.5','6,069','6.5','6.5'),
 ('Munna Michael (2017)','Sabir Khan','Vimi Datta','Nidhhi Agerwal, Sahil Anand, Jiiva','India','Hindi','Action|Drama|Musical|Romance','3.4','1,742','4.3','3.4'),
 ('Mubarakan (2017)','Anees Bazmee','Rupinder Chahal','Anil Kapoor, Arjun Kapoor, Ileana D\'Cruz','India','Hindi','Comedy|Romance','5.6','2,183','5.6','5.6'),
 ('Indu Sarkar (2017)','Madhur Bhandarkar','Madhur Bhandarkar','Kirti Kulhari, Neil Nitin Mukesh, Tota Roy Chowdhury','India','Hindi','Drama|History|Thriller','6.4','764','6.4','6.4'),
 ('Raag Desh (2017)','Tigmanshu Dhulia','Tigmanshu Dhulia','Kunal Kapoor, Amit Sadh, Mohit Marwah','India','Hindi','Action|Drama|History','8.4','286','8.4','8.4'),
 ('Jab Harry met Sejal (2017)','Imtiaz Ali','Imtiaz Ali','Shah Rukh Khan, Anushka Sharma Kohli, Björn Freiberg','India','Hindi','Comedy|Drama|Romance','5.5','13,719','5.5','5.5'),
 ('Toilet - Ek Prem Katha (2017)','Shree Narayan Singh','Garima','Akshay Kumar, Anupam Kher, Bhumi Pednekar','India','Hindi','Comedy|Drama','7.4','9,504','7.4','5.7'),
 ('Bareilly Ki Barfi (2017)','Ashwiny Iyer Tiwari','Bareilly Ki Barfi','Ayushmann Khurrana, Kriti Sanon, Rajkummar Rao','India','Hindi','Comedy|Romance','7.5','5,310','8.0','7.5'),
 ('A Gentleman (2017)','Krishna D.K.,Raj Nidimoru','Raj Nidimoru','Sidharth Malhotra, Jacqueline Fernandez, Darshan Kumar','India','Hindi','Action|Comedy|Thriller','6.5','3,455','6.5','6.5'),
 ('Babumoshai Bandookbaaz (2017)','Kushan Nandy','Ghalib Asadbhopali','Nawazuddin Siddiqui, Bidita Bag, Shradha Das','India','Hindi Bengali','Action|Crime|Thriller','7.1','676','7.1','7.1'),
 ('Qaidi Band (2017)','Habib Faisal','Habib Faisal','Aadar Jain, Anya Singh, Mikhail Yawalkar','India',NULL,'Drama|Music','5.3','155','5.3','5.3'),
 ('Baadshaho (2017)','Milan Luthria','Rajat Arora','Ajay Devgn, Ileana D\'Cruz, Emraan Hashmi','India','Hindi','Action|Adventure|Thriller','5.1','2,959','5.1','5.1'),
 ('Shubh Mangal Saavdhan (2017)','R.S. Prasanna','R.S. Prasanna','Ayushmann Khurrana, Bhumi Pednekar, Seema Bhargava','India','Hindi','Comedy|Romance','7.1','2,912','7.1','7.1'),
 ('Kaalakaandi (2018)','Akshat Verma','Akshat Verma','Saif Ali Khan, Neil Bhoopalam, Amyra Dastur','India','Hindi','Comedy','7.1','329','7.1','7.1'),
 ('Poster Boys (2017)','Shreyas Talpade','Bunty Rathore','Sunny Deol, Bobby Deol, Shreyas Talpade','India','Hindi','Comedy','5.7','937','5.7','5.7'),
 ('Simran (2017)','Hansal Mehta','Apurva Asrani','Kangana Ranaut, Sohum Shah, Esha Tewari','India','Hindi','Crime|Drama|Romance|Thriller','5.5','1,984','5.5','5.5'),
 ('Lucknow Central (2017)','Ranjit Tiwari','Aseem Arora','Farhan Akhtar, Diana Penty, Ronit Roy','India',NULL,'Action|Crime|Drama|Music|Thriller','6.1','1,456','6.1','6.1'),
 ('Bhoomi (2017)','Omung Kumar','Raaj Shaandilyaa','Sunny Leone, Sanjay Dutt, Aditi Rao Hydari','India','Hindi','Action|Crime|Drama|Thriller','5.3','1,009','6.3','5.3'),
 ('Haseena Parkar (2017)','Apoorva Lakhia','Suresh Nair','Shraddha Kapoor, Ankur Bhatia, Siddhant Kapoor','India',NULL,'Biography|Crime|Thriller','3.8','431','3.8','3.8'),
 ('Newton (2017)','Amit Masurkar','Amit Masurkar','Rajkummar Rao, Pankaj Tripathi, Anjali Patil','India','Hindi','Drama','7.9','6,050','7.9','7.9'),
 ('Judwaa 2 (2017)','David Dhawan','Yunus Sajawal','Salman Khan, Jacqueline Fernandez, Anupam Kher','India','Hindi','Action|Comedy','4.0','5,200','4.0','4.55'),
 ('Golmaal Again (2017)','Rohit Shetty','Yunus Sajawal','Ajay Devgn, Arshad Warsi, Tusshar Kapoor','India','Hindi','Action|Comedy|Fantasy|Horror','5.1','5,152','5.1','4.55'),
 ('Secret Superstar (2017)','Advait Chandan','Advait Chandan','Zaira Wasim, Meher Vij, Raj Arjun','India','Hindi','Drama|Family|Music|Musical','8.4','6,571','8.4','8.4'),
 ('Ittefaq (2017)','Abhay Chopra','Abhay Chopra','Sidharth Malhotra, Sonakshi Sinha, Akshaye Khanna','India','Hindi','Mystery|Thriller','7.3','3,775','7.3','7.3'),
 ('Tumhari Sulu (2017)','Suresh Triveni','Suresh Triveni','Vidya Balan, Neha Dhupia, Manav Kaul','India','Hindi','Comedy|Drama','7.0','1,091','7.0','7.0'),
 ('Fukrey Returns (2017)','Mrighdeep Lamba','Vipul Vig','Pulkit Samrat, Manjot Singh, Ali Fazal','India','Hindi','Comedy','7.0','1,915','7.0','7.0'),
 ('Tiger Zinda Hai (2017)','Ali Abbas Zafar','Neelesh Misra','Salman Khan, Katrina Kaif, Sajjad Delafrooz','India','Hindi English','Action|Adventure|Thriller','6.7','10,606','6.9','6.7'),
 ('Project Marathwada (2016)','Bhavin Wadia','Bhavin Wadia','Om Puri, Seema Biswas, Govind Namdeo','India','Hindi','Drama','8.1','8','8.1','8.1'),
 ('Raaz Reboot (2016)','Vikram Bhatt','Vikram Bhatt','Emraan Hashmi, Kriti Kharbanda, Suzanna Mukherjee','India','Hindi','Horror|Mystery|Romance|Thriller','4.5','1,269','4.45','4.33'),
 ('Raman Raghav 2.0 (2016)','Anurag Kashyap','Vasan Bala','Nawazuddin Siddiqui, Vicky Kaushal, Sobhita Dhulipala','India','Hindi','Crime|Drama|Thriller','7.3','8,036','7.3','7.3'),
 ('Rebellious Flower (2016)','Krishan Hooda','Jagdish Bharti','Prince Shah, Shashank Singh, Mantra','India','Hindi','Biography|Drama','7.0','199','7.0','7.0'),
 ('Rock On 2 (2016)','Shujaat Saudagar','Abhishek Kapoor','Farhan Akhtar, Shraddha Kapoor, Arjun Rampal','India','Hindi','Drama|Music','5.0','1,526','5.0','5.0'),
 ('Rocky Handsome (2016)','Nishikant Kamat','Ritesh Shah','John Abraham, Nishikant Kamat, Sharad Kelkar','India','Hindi','Action|Crime|Thriller','6.8','5,571','7.2','6.0'),
 ('Rough Book (2016)','Ananth Narayan Mahadevan','Sanjay Chauhan','Tannishtha Chatterjee, Mukesh Hariawala, Amaan Khan','India','Hindi','Drama','7.2','61','7.2','7.2'),
 ('Rustom (2016)','Dharmendra Suresh Desai','Vipul K. Rawal','Akshay Kumar, Ileana D\'Cruz, Esha Gupta','India','Hindi','Crime|Mystery|Thriller','7.1','16,699','5.6','7.1'),
 ('Saala Khadoos (2016)','Sudha Kongara','Sudha Kongara','Madhavan, Nassar, Radha Ravi','India','Hindi Tamil Tamil','Action|Drama|Sport','7.7','8,656','7.7','7.7'),
 ('Saansein: The Last Breath (2016)','Rajiv S. Ruia','Shiraz Ahmed','Sonarika Bhadoria, Amir Dalvi, Rajniesh Duggall','India','Hindi','Horror|Romance','3.9','75','4.0','3.9'),
 ('Saat Uchakkey (2016)','Sanjeev Sharma','Sandeep Saket','Manoj Bajpayee, Rajat Bhalla, Nitin Bhasin','India','Hindi','Comedy','5.7','425','5.7','5.7'),
 ('Sanam Re (2016)','Divya Khosla Kumar','Sanjeev Dutta','Rishi Kapoor, Pulkit Samrat, Yami Gautam','India','Hindi','Drama|Romance','3.1','2,262','3.1','3.1'),
 ('Sanam Teri Kasam (2016)','Radhika Rao,Vinay Sapru','Radhika Rao','Harshvardhan Rane, Mawra Hocane, Vijay Raaz','India','Hindi','Drama|Musical|Romance','7.3','6,839','7.3','7.3'),
 ('Santa Banta Pvt Ltd (2016)','Akashdeep','Akashdeep','Tinnu Anand, Vikas Bhalla, Vir Das','India','English Hindi','Action|Comedy','2.9','173','2.9','2.9'),
 ('Sarbjit (2016)','Omung Kumar','Utkarshini Vashishtha','Randeep Hooda, Aishwarya Rai Bachchan, Richa Chadha','India','Hindi','Biography|Drama|History|Musical','7.3','3,213','6.3','7.3'),
 ('Kyaa Kool Hain Hum 3 (2016)','Umesh','Mushtaq Sheikh','Tusshar Kapoor, Aftab Shivdasani, Krishna Abhishek','India','Hindi','Comedy|Horror','1.9','3,562','1.9','2.15'),
 ('Laal Rang (2016)','Syed Ahmad Afzal','Syed Ahmad Afzal','Randeep Hooda, Akshay Oberoi, Rajniesh Duggall','India','Hindi','Action|Crime|Drama|Thriller','8.3','3,109','8.3','8.3'),
 ('Love Games (2016)','Vikram Bhatt','Vikram Bhatt','Patralekhaa, Tara-Alisha Berry, Gauri Arora','India','Hindi','Thriller','4.4','596','4.45','4.33'),
 ('Love Ke Funday (2016)','Indervesh Yogee','Indervesh Yogee','Pooja Banerjee, Shaleen Bhanot, Samiksha Bhatnagar','India','Hindi','Comedy','7.9','8','7.9','7.9'),
 ('Love Shagun (2016)','Saandesh Nayak','Saandesh Nayak','Anuj Sachdeva, Nidhi Subbaiah, Manit Joura','India','Hindi','Comedy|Romance','5.9','78','5.9','5.9'),
 ('LoveShhuda (2016)','Vaibhav Misra','Vaibhav Misra','Kishore Bhatt, Tisca Chopra, Benaf Dadachanji','India','Hindi','Comedy|Romance','4.5','472','4.5','4.5'),
 ('Luv U Alia (2015)','Indrajit Lankesh','Sammy\'s Magic Cinema','V. Ravichandran, Chandan Kumar, Sudeep','India','Kannada Hindi Telugu','Family|Romance','5.5','67','5.5','5.5'),
 ('M Cream (2014)','Agneya Singh,Aban Raza','Agneya Singh','Tom Alter, Raaghav Chanana, Ira Dubey','India','English','Adventure|Comedy|Drama','5.7','194','5.7','5.7'),
 ('M.S. Dhoni: The Untold Story (2016)','Neeraj Pandey','Neeraj Pandey','Disha Patani, Anupam Kher, Sushant Singh Rajput','India','Hindi','Biography|Drama|Sport','7.8','24,361','7.8','7.05'),
 ('Madaari (2016)','Nishikant Kamat','Shailja Kejriwal','Irrfan Khan, Jimmy Shergill, Vishesh Bansal','India','Hindi','Adventure|Crime|Drama|Thriller','7.6','9,266','7.2','7.6'),
 ('Mastizaade (2016)','Milap Zaveri','Mushtaq Sheikh','Tusshar Kapoor, Vir Das, Sunny Leone','India','Hindi','Comedy','2.4','2,014','2.4','2.15'),
 ('Mirzya (2016)','Rakeysh Omprakash Mehra','Gulzar','Harshvardhan Kapoor, Saiyami Kher, Art Malik','India','Hindi','Drama|Musical|Romance','4.6','1,349','4.6','4.6'),
 ('Missing on a Weekend (2016)','Abhishek Jawkar','Abhishek Jawkar','Dishank Arora, Akash Bathija, Dibyendu Bhattacharya','India','Hindi','Thriller','5.0','31','5.0','5.0'),
 ('Moh Maya Money (2016)','Munish Bhardwaj','Munish Bhardwaj','Devendra Chowhan, Neha Dhupia, Vidushi Mehra','India','Hindi','Crime|Drama|Thriller','5.8','242','5.8','5.8'),
 ('Mohenjo Daro (2016)','Ashutosh Gowariker','Ashutosh Gowariker','Hrithik Roshan, Pooja Hegde, Kabir Bedi','India','Hindi','Action|Adventure|Drama|History|Romance','5.9','8,597','5.9','5.9'),
 ('Motu Patlu: King of Kings (2016)','Suhas Kadav','Kripa Shankar','Saurav Chakraborty, Vinay Pathak','India','Hindi','Comedy','7.5','64','7.5','7.5'),
 ('MSG the Warrior: Lion Heart (2016)','Gurmeet Ram Rahim Singh','Gurmeet Ram Rahim Singh','Ashok Insan, Bhushan Insan, Charanpreet Insan','India','Hindi','Adventure|Comedy|Crime|Drama|Horror','7.8','7,256','7.8','7.8'),
 ('Neerja (2016)','Ram Madhvani','Saiwyn Quadras','Sonam Kapoor, Shabana Azmi, Yogendra Tikku','India','Hindi English','Biography|Drama|Thriller','7.8','15,545','7.8','7.8'),
 ('Nil Battey Sannata (2015)','Ashwiny Iyer Tiwari','Nitesh Tiwari','Swara Bhaskar, Ratna Pathak Shah, Riya Shukla','India','Hindi','Drama|Family','8.5','3,486','8.0','8.5'),
 ('Kaptaan (2016)','Mandeep Kumar','Surmeet Maavi','Gippy Grewal, Monica Gill, Karishma Kotak','India','Panjabi','Comedy|Drama|Family|Music','6.5','152','6.5','6.5'),
 ('Kerry on Kutton (2016)','Ashok Yadav','Himanshu Onkar Tripathi','Satyajeet Dubey, Aradhana Jagota, Aditya Kumar','India','Hindi','Drama','5.6','159','5.6','5.6'),
 ('1:13:7 Ek Tera Saath (2016)','Arshad Siddiqui','Bobby Khan','Pankaj Berry, Anubhav Dhir, Hritu Dudani','India','Hindi','Horror','5.7','50','5.7','4.9'),
 ('Fitoor (2016)','Abhishek Kapoor','Charles Dickens','Aditya Roy Kapoor, Katrina Kaif, Tabu','India','Hindi Urdu','Drama|Romance','5.4','3,383','5.4','5.4'),
 ('Force 2 (2016)','Abhinay Deo','Jasmeet K. Reen','John Abraham, Sonakshi Sinha, Tahir Raj Bhasin','India','Hindi','Action|Thriller','6.3','3,532','6.3','6.3'),
 ('Freaky Ali (2016)','Sohail Khan','Sohail Khan','Nawazuddin Siddiqui, Arbaaz Khan, Amy Jackson','India','Hindi','Comedy|Sport','5.0','2,111','5.0','5.0'),
 ('Fredrick (2016)','Rajesh Butalia','Rajesh Butalia','Avinash Dhyani, Prashant Narayanan, Tulna Butalia','India','Hindi','Action|Thriller','5.1','10','5.1','5.1'),
 ('Fuddu (2016)','Sunil Subramani','Pawan Kumar Sharma','Shubham, Swati Kapoor, Uday Tikekar','India','Hindi','Comedy|Drama','5.8','113','5.8','5.8'),
 ('Gandhigiri (2016)','Sanoj Mishra','Kumar Manjul','Rishi Bhutani, Dolly Chawla, Meghna Haldar','India','Hindi','Drama','5.4','30','5.4','5.4'),
 ('Ghayal Once Again (2016)','Sunny Deol','Shaktimaan Talwar','Sunny Deol, Soha Ali Khan, Om Puri','India','Hindi','Action|Drama|Thriller','6.5','4,416','6.5','6.5'),
 ('Global Baba (2016)','Manoj Tiwari','Vishal Vijay Kumar','Pankaj Tripathi, Abhimanyu Singh, Sandeepa Dhar','India','Hindi','Thriller','5.6','120','5.6','5.6'),
 ('Great Grand Masti (2016)','Indra Kumar','Tushar Hiranandani','Urvashi Rautela, Riteish Deshmukh, Puja Bose','India','Hindi','Comedy|Drama|Fantasy|Horror','3.7','1,589','3.7','3.7'),
 ('Hai Apna Dil Toh Awara (2016)','Monjoy Joy Mukerji','Monjoy Joy Mukerji','Sahil Anand, Niyati Joshi, Vikram Kochhar','India','Hindi','Comedy','8.4','9','8.4','8.4'),
 ('Happy Bhag Jayegi (2016)','Mudassar Aziz','Mudassar Aziz','Diana Penty, Abhay Deol, Jimmy Shergill','India','Hindi','Comedy|Romance','6.4','3,887','6.4','6.4'),
 ('Housefull 3 (2016)','Sajid,Farhad Samji','K. Subhash','Akshay Kumar, Jacqueline Fernandez, Nargis Fakhri','India','Hindi','Action|Comedy','5.2','5,846','5.2','5.2'),
 ('Ishq Click (2016)','Anil Ballani','Rajeev Yogendra Nath','Sara Loren, Adhyayan Suman, Aaryansh Arora',NULL,'Hindi','Drama|Romance','4.2','69','4.2','4.2'),
 ('Ishq Forever (2016)','Sameer Sippy','Shabbir Boxwala','Mahesh Balraj, Krishna Chaturvedi, Javed Jaffrey','India','Hindi','Romance','3.9','72','3.9','3.9'),
 ('Ishq Junoon: The Heat is On (2016)','Sanjay Sharma','Pankaj Trivedi','Divya Singh, Rajbeer Singh, Reshad Delawar Khan',NULL,NULL,'Romance|Thriller','4.5','71','4.5','4.5'),
 ('Island City (2015)','Ruchika Oberoi','Ruchika Oberoi','Vinay Pathak, Amruta Subhash, Tannishtha Chatterjee','India','Hindi','Drama','6.7','225','6.7','6.7'),
 ('Jai Gangaajal (2016)','Prakash Jha','Prakash Jha','Priyanka Chopra, Prakash Jha, Manav Kaul','India','Hindi','Crime|Drama','5.7','2,129','5.7','5.7'),
 ('Jugni (2016)','Shefali Bhushan','Siddhant Behl','Sugandha Garg, Anurita Jha, Divya Unny','India','Hindi','Drama','6.1','117','6.1','6.1'),
 ('Julie 2 (2017)','Deepak S. Shivdasani','Deepak S. Shivdasani','Nishikant Kamat, Raai Laxmi, Rati Agnihotri','India','Hindi','Drama|Romance','2.9','183','2.9','2.9'),
 ('Junooniyat (2016)','Vivek Agnihotri','Vivek Agnihotri','Taran Bajaj, Manoj Bakshi, Madhuri D. Bandiwedkar','India','Hindi','Drama|Romance','4.3','470','5.65','5.65'),
 ('Kahaani 2 (2016)','Sujoy Ghosh','Sujoy Ghosh','Vidya Balan, Arjun Rampal, Jugal Hansraj','India','Hindi','Mystery|Thriller','6.6','3,667','6.6','6.6'),
 ('Dil Toh Deewana Hai (2016)','Raja Bundela','D.S. Productions','Zeenat Aman, Raj Babbar, Meenu Bhardwaj','India','Hindi','Drama|Romance','7.3','14','7.3','7.3'),
 ('Direct Ishq (2016)','Rajiv S. Ruia','Bobby Khan','Arjun Bijlani, Rajniesh Duggall, Rajkumar Kanojia','India','Hindi','Action|Comedy|Romance','4.1','53','4.0','4.9'),
 ('Dishoom (2016)','Rohit Dhawan','Rohit Dhawan','John Abraham, Varun Dhawan, Nargis Fakhri','India','Hindi','Action|Adventure|Comedy|Crime|Sport','5.1','4,773','5.1','5.1'),
 ('Do Lafzon Ki Kahani (2016)','Deepak Tijori','Girish Dhamija','Kajal Aggarwal, Anil George, Randeep Hooda','India','Hindi','Action|Drama|Romance','6.5','955','6.5','6.5'),
 ('Dongri Ka Raja (2016)','Hadi Abrar','M. Salim','Ronit Roy, Ashmit Patel, Gashmeer Mahajani','India','Hindi','Action|Drama|Romance','4.2','100','4.2','5.5'),
 ('1920 London (2016)','Dharmendra Suresh Desai','Vikram Bhatt','Sharman Joshi, Meera Chopra, Vishal Karwal','India','Hindi','Horror|Mystery','4.1','1,095','5.6','4.33'),
 ('31st October (2015)','Shivaji Lotan Patil','Harry Sachdeva','Soha Ali Khan, Lakha Lakhwinder Singh, Nagesh Bhonsle','India','Hindi Panjabi','Action|Drama|History|Thriller','5.8','147','5.8','5.8'),
 ('7 Hours to Go (2016)','Saurabh Varma','Saurabh Varma','Shiv Pandit, Sandeepa Dhar, Vipin Sharma','India','Hindi','Crime|Thriller','5.6','312','5.6','5.6'),
 ('A Flying Jatt (2016)','Remo','Remo','Tiger Shroff, Jacqueline Fernandez, Nathan Jones','India','Hindi','Action|Adventure|Comedy|Fantasy|Sci-Fi','3.5','2,302','3.5','3.5'),
 ('A Scandall (2016)','Ishaan Trivedi','Ishaan Trivedi','Johnny Baweja, Reeth Mazumder, Manav Kaul','India','Hindi','Thriller','4.4','85','4.4','4.4'),
 ('Ae Dil Hai Mushkil (2016)','Karan Johar','Karan Johar','Aishwarya Rai Bachchan, Ranbir Kapoor, Anushka Sharma Kohli','India','Hindi','Drama|Music|Musical|Romance','5.8','16,040','5.8','5.8'),
 ('Airlift (2016)','Raja Menon','Raja Menon','Akshay Kumar, Nimrat Kaur, Kumud Mishra','India','Hindi Malayalam Arabic','Action|Drama|History','8.2','42,882','8.2','8.2'),
 ('Baaghi (2016)','Sabir Khan','Sanjeev Datta','Shraddha Kapoor, Tiger Shroff, Sudheer Babu Posani','India','Hindi','Action|Romance','5.2','4,501','4.3','5.2'),
 ('Baar Baar Dekho (2016)','Nitya Mehra','Sri Rao','Sidharth Malhotra, Katrina Kaif, Sayani Gupta','India','Hindi English','Comedy|Drama|Romance|Sci-Fi','5.3','4,642','5.3','5.3'),
 ('Befikre (2016)','Aditya Chopra','Aditya Chopra','Ranveer Singh, Vaani Kapoor, Yun Lai','India','Hindi','Comedy|Drama|Romance','3.8','5,579','3.8','3.8'),
 ('Beiimaan Love (2016)','Rajeev Chaudhari','Rajeev Chaudhari','Sunny Leone, Rajeev Verma, Sahil Arora','India','Hindi English','Drama|Romance|Thriller','3.0','264','3.0','3.0'),
 ('BHK Bhalla@Halla.Kom (2016)','Rakesh Chaturvedi','Neeraj Badhwar','Rasika Agashe, Inshika Bedi, Sukhwinder Chahal','India','Hindi','Comedy','5.8','35','5.8','5.8'),
 ('Bollywood Diaries (2016)','K.D. Satyam','K.D. Satyam','Raima Sen, Salim Diwan, Ashish Vidyarthi','India','Hindi','Drama','5.9','206','5.9','5.9'),
 ('Brahman Naman (2016)','Qaushiq Mukherjee','Naman Ramachandran','Shashank Arora, Tanmay Dhanania, Chaitanya Varad','India UK','English','Comedy','5.7','1,148','5.7','5.7'),
 ('Buddha in a Traffic Jam (2016)','Vivek Agnihotri','Vivek Agnihotri','Aanchal Dwivedi, Mahie Gill, Pallavi Joshi','India','Hindi English','Crime|News|Thriller','7.0','1,258','5.65','5.65'),
 ('Budhia Singh: Born to Run (2016)','Soumendra Padhi','Soumendra Padhi','Manoj Bajpayee, Mayur Mahendra Patole, Gajraj Rao','India','Hindi','Biography|Drama|Sport','7.9','980','7.9','7.9'),
 ('Chaar Sahibzaade 2: Rise of Banda Singh Bahadur (2016)','Harry Baweja','Harry Baweja','Om Puri','India','Panjabi English Hindi','Animation','8.4','357','8.4','8.4'),
 ('Chalk N Duster (2016)','Jayant Gilatar','Ranjeev Verma','Richa Chadha, Shabana Azmi, Arya Babbar','India','Hindi Hindi','Drama','6.6','444','6.6','6.6'),
 ('Chauranga (2014)','Bikas Ranjan Mishra','Bikas Ranjan Mishra','Sanjay Suri, Tannishtha Chatterjee, Riddhi Sen','India','Hindi','Drama','6.6','233','6.6','6.6'),
 ('Dangal (2016)','Nitesh Tiwari','Piyush Gupta','Aamir Khan, Sakshi Tanwar, Fatima Sana Shaikh','India','Hindi','Action|Biography|Drama|Sport','8.6','81,235','8.6','8.6'),
 ('Days of Tafree (2016)','Krishnadev Yagnik','Anand Pandit Motion Pictures','Yash Soni, Ansh Bagri, Sarabjeet Bindra','India','Hindi','Comedy','7.6','185','7.6','7.6'),
 ('Dear Dad (2016)','Tanuj Bhramar','Indian Film Studios','Ekavali Khanna, Raman Singh Rawat, Himanshu Sharma','India','Hindi','Drama|Family','6.5','188','6.5','6.5'),
 ('Dear Zindagi (2016)','Gauri Shinde','Gauri Shinde','Alia Bhatt, Shah Rukh Khan, Kunal Kapoor','India','Hindi','Drama|Romance','7.7','27,096','7.7','7.7'),
 ('Dhanak (2015)','Nagesh Kukunoor','Nagesh Kukunoor','Krrish Chhabria, Hetal Gada, Vipin Sharma','India','Hindi','Drama','8.0','2,340','8.0','8.0'),
 ('Dhara 302 (2016)','Jitendra Singh Naruka','Jitendra Singh Naruka','Dipti, Pradeep Kabra, Rufy Khan','India','Hindi','Drama','5.0','12','5.0','5.0'),
 ('Shivaay (2016)','Ajay Devgn','Sandeep Shrivastava','Ajay Devgn, Abigail Eames, Erika Kaar','India','Hindi','Action|Adventure|Drama|Thriller','6.4','8,326','6.4','6.4'),
 ('Shorgul (2016)','Pranav Singh,Jitendra Tiwari','Shashie-Vermaa','Jimmy Shergill, Ashutosh Rana, Suha Gezen','India','Hindi','Drama','5.6','111','5.6','5.6'),
 ('Shortcut Safari (2016)','Amitabha Singh','Svani Parekh','Jimmy Shergill, Manmeet Singh','India','Hindi','Adventure|Drama|Mystery','7.0','29','7.0','7.0'),
 ('Sultan (2016)','Ali Abbas Zafar','Ali Abbas Zafar','Salman Khan, Anushka Sharma Kohli, Marko Zaror','India','Hindi','Action|Drama|Family|Sport','7.1','29,373','6.9','7.1'),
 ('Sunshine Music Tours & Travels (2016)','Shailendra Singh','Sehaj Maini','Ajit Singh Arora, Rahul Badesra, Nida Chakaborty','India','Hindi','Comedy','5.3','13','5.3','5.3'),
 ('Te3n (2016)','Ribhu Dasgupta','Bijesh Jayarajan','Amitabh Bachchan, Nawazuddin Siddiqui, Vidya Balan','India','Hindi','Drama|Mystery|Thriller','7.3','8,379','7.3','7.3'),
 ('Teraa Surroor (2016)','Shawn Arranha','Namrata Ramsay','Himesh Reshammiya, Farah Karimaee, Naseeruddin Shah','India','English Hindi','Action|Drama|Romance','2.7','711','2.7','2.7'),
 ('Tere Bin Laden Dead or Alive (2016)','Abhishek Sharma','Abhishek Sharma','Manish Paul, Pradhuman Singh, Sikander Kher','India','Hindi','Comedy','4.2','691','4.2','4.2'),
 ('The Blueberry Hunt (2016)','Anup Kurian','Anup Kurian','Kartik Elangovan, Vinay Forrt, Aahana Kumra','India','English Hindi','Thriller','5.6','168','5.6','5.6'),
 ('The Legend of Michael Mishra (2016)','Manish Jha','Anshuman Chaturvedi','Aditi Rao Hydari, Arshad Warsi, Boman Irani','India',NULL,'Comedy|Drama','4.6','320','4.6','4.6'),
 ('Tum Bin 2 (2016)','Anubhav Sinha','Anubhav Sinha','Neha Sharma, Aditya Seal, Aashim Gulati','India','Hindi','Drama|Romance','4.9','856','4.9','4.9'),
 ('Tutak Tutak Tutiya (2016)','Vijay','Vijay','Tamannaah Bhatia, Karishma Gulati, Esha Gupta','India','Hindi','Comedy|Horror','5.3','527','5.3','5.3'),
 ('Udta Punjab (2016)','Abhishek Chaubey','Sudip Sharma','Shahid Kapoor, Kareena Kapoor Khan, Alia Bhatt','India','Hindi Panjabi','Action|Crime|Drama','7.8','19,410','7.8','7.8'),
 ('Umrika (2015)','Prashant Nair','Prashant Nair','Aashish Bhatt, Uplaksh Kochhar, Megh Pant','India','Hindi','Comedy|Drama','6.7','722','6.7','6.7'),
 ('Veerappan (2016)','Ram Gopal Varma','Jai Priyadarshi','Sachiin Joshi, Sandeep Bharadwaj, Usha Jadhav','India','Hindi','Action|Biography|Crime','5.2','444','5.0','5.2'),
 ('Warrior Savitri (2016)','Param Gill','Param Gill','Niharica Raizada, Rajat Barmecha, Lucy Pinder','India','Hindi English','Action|Thriller','4.2','68','4.2','4.2'),
 ('Wah Taj (2016)','Ajit Sinha','M. Salim','Amitabh Bachchan, Krishna Bhatt, Yusuf Hussain','India','Hindi','Drama','6.8','35','6.8','5.5'),
 ('Wajah Tum Ho (2016)','Vishal Pandya','Sameer Arora','Zarine Khan, Sharman Joshi, Sherlyn Chopra','India','Hindi','Drama|Mystery|Romance|Thriller','4.4','787','4.4','4.4'),
 ('Wazir (2016)','Bejoy Nambiar','Vidhu Vinod Chopra','Amitabh Bachchan, Farhan Akhtar, Aditi Rao Hydari','India','Hindi','Action|Crime|Drama|Mystery|Thriller','7.1','14,127','7.1','7.1'),
 ('Yea Toh Two Much Ho Gayaa (2016)','Anwer Khan','Anwer Khan','Jimmy Shergill, Pooja Chopra, Arbaaz Khan','India','Hindi','Action|Drama','4.3','79','4.3','4.3'),
 ('Yeh Hai Lollipop (2016)','Manoj Sharma','Manoj Sharma','Om Puri, Chirag Thakkar, Shilpa Anand','India','Hindi','Comedy','8.6','13','8.6','8.6'),
 ('Zubaan (2015)','Mozez Singh','Sumit Roy','Raaghav Chanana, Manish Chaudhary, Sarah-Jane Dias','India','Hindi English Panjabi','Drama','6.3','176','6.3','6.3');
/*!40000 ALTER TABLE `imdbdata` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
