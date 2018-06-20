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
-- Create schema movieratingnew
--

CREATE DATABASE IF NOT EXISTS movieratingnew;
USE movieratingnew;

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
  `actor_likes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imdbdata`
--

/*!40000 ALTER TABLE `imdbdata` DISABLE KEYS */;
INSERT INTO `imdbdata` (`Title`,`Director`,`Writer`,`Actors`,`Country`,`Language`,`Genres`,`Rank`,`Votes`,`Dir_rating`,`writer_rating`,`actor_likes`) VALUES 
 ('OK Jaanu (2017)','Shaad Ali','Mani Ratnam','Aditya Roy Kapoor, Shraddha Kapoor, Naseeruddin Shah','India','Hindi','Drama|Romance','5.1','2656','5.1','5.1','3966'),
 ('Kaabil (2017)','Sanjay Gupta','Sanjay Masoom','Hrithik Roshan, Yami Gautam, Ronit Roy','India','Hindi','Action|Crime|Thriller','7.1','20416','6.4','7.1','22045556'),
 ('Raees (2017)','Rahul Dholakia','Rahul Dholakia','Raj Arjun, Shubham Chintamani, Shubham Tukaram','India','Hindi','Action|Crime|Thriller','7.0','32849','7.0','7.0','6687'),
 ('Jolly LLB 2 (2017)','Subhash Kapoor','Subhash Kapoor','Akshay Kumar, Huma Qureshi, Saurabh Shukla','India','Hindi Kashmiri','Comedy|Crime|Drama','7.3','14851','6.3','6.3','24368811'),
 ('Rangoon (2017)','Vishal Bhardwaj','Matthew Robbins','Shahid Kapoor, Saif Ali Khan, Richard McCabe','India','Hindi','Action|Drama|History|Romance|War','5.8','2762','5.8','5.8','12543500'),
 ('Phillauri (2017)','Anshai Lal','Anvita Dutt','Anushka Sharma Kohli, Diljit Dosanjh, Suraj Sharma','India','Hindi','Comedy|Drama|Fantasy|Horror|Romance','6.1','2483','6.1','6.1','24168'),
 ('Commando 2 (2017)','Deven Bhojani','Ritesh Shah','Vidyut Jammwal, Adah Sharma, Esha Gupta','India','Hindi','Action|Adventure|Crime|Thriller','5.2','1897','5.2','6.0','135336'),
 ('Badrinath Ki Dulhania (2017)','Shashank Khaitan','Shashank Khaitan','Varun Dhawan, Alia Bhatt, Sahil Vaid','India','Hindi','Comedy|Drama|Romance','6.2','6792','6.2','6.2','7928334'),
 ('Machine (2017)','Abbas Alibhai Burmawalla,Mastan Alibhai Burmawalla','Sanjeev Kaul','Kiara Advani, Rishabh Arora, Mustafa Burmawala','India','Hindi','Action|Mystery|Romance|Thriller','2.6','452','4.2','2.6','222544'),
 ('Naam Shabana (2017)','Shivam Nair','Neeraj Pandey','Tapsee Pannu, Akshay Kumar, Manoj Bajpayee','India','Hindi','Action|Adventure|Thriller','6.3','3381','6.3','7.05','2037'),
 ('Begum Jaan (2017)','Srijit Mukherji','PLAY Entertainment','Amitabh Bachchan, Vidya Balan, Naseeruddin Shah','India','Hindi','Action|Drama|History','5.6','1907','5.6','5.6','32949705'),
 ('Noor (2017)','Sunhil Sippy','Saba Imtiaz','Sunny Leone, Sonakshi Sinha, Purab Kohli','India','Hindi','Comedy|Drama','3.9','992','3.9','3.9','3150275'),
 ('Baahubali 2: The Conclusion (2017)','S.S. Rajamouli','Vijayendra Prasad','Prabhas, Rana Daggubati, Anushka Shetty','India','Telugu Tamil Hindi Malayalam','Action|Drama|Fantasy','8.5','53335','8.5','8.5','140097'),
 ('Meri Pyaari Bindu (2017)','Akshay Roy','Suprotim Sengupta','Ayushmann Khurrana, Parineeti Chopra, Prabal Panjabi','India','Hindi','Comedy|Drama|Romance','5.7','2150','5.7','5.7','4045891'),
 ('Sarkar 3 (2017)','Ram Gopal Varma','P. Jaya Kumar','Amitabh Bachchan, Abhishek Bachchan, Jackie Shroff','India','Hindi','Crime|Drama','4.8','1348','5.0','4.8','32949705'),
 ('Half Girlfriend (2017)','Mohit Suri','Chetan Bhagat','Arjun Kapoor, Shraddha Kapoor, Seema Biswas','India','Hindi','Drama|Romance','4.0','4055','5.3','4.0','4726093'),
 ('Hindi Medium (2017)','Saket Chaudhary','Saket Chaudhary','Irrfan Khan, Neha Dhupia, Saba Qamar','India','Hindi','Comedy|Drama','7.9','10792','7.9','7.9','3965'),
 ('Hanuman Da\' Damdaar (2017)','Ruchi Narain','Ajay Jhingran','Javed Akhtar, Balwinder Kaur Brar, Hussain Dalal','India','Hindi','Animation|Family','6.7','54','6.7','6.7','3908961'),
 ('Behen Hogi Teri (2017)','Ajay Pannalal','Sanchit Gupta','Shruti Haasan,Rajkummar Rao,  Gautam Gulati','India','Hindi','Comedy','5.4','853','5.4','5.4','178043'),
 ('Sachin (2017)','James Erskine','Siva Ananth','Sachin Tendulkar, Mahendra Singh Dhoni, Shantanu Shrikant Bhake','India','Hindi Marathi','Documentary|Biography|Drama|Sport','8.8','6347','8.8','8.8','23464249'),
 ('Raabta (2017)','Dinesh Vijan','Garima','Deepika Padukone, Rajkummar Rao, Kriti Sanon','India','Hindi','Action|Comedy|Drama|Mystery|Romance','4.0','1946','4.0','5.7','22836167'),
 ('Tubelight (2017)','Kabir Khan','Kabir Khan','Salman Khan, Sohail Khan, Om Puri','India','Hindi','Drama|War','4.2','10016','4.2','4.2','30504224'),
 ('Jagga Jasoos (2017)','Anurag Basu','Anurag Basu','Ranbir Kapoor, Katrina Kaif, Saswata Chatterjee','India','Hindi','Action|Adventure|Comedy|Musical|Mystery','6.5','6069','6.5','6.5','1114946'),
 ('Munna Michael (2017)','Sabir Khan','Vimi Datta','Nidhhi Agerwal, Sahil Anand, Jiiva','India','Hindi','Action|Drama|Musical|Romance','3.4','1742','4.3','3.4','24483'),
 ('Mubarakan (2017)','Anees Bazmee','Rupinder Chahal','Anil Kapoor, Arjun Kapoor, Ileana D\'Cruz','India','Hindi','Comedy|Romance','5.6','2183','5.6','5.6','2992670'),
 ('Indu Sarkar (2017)','Madhur Bhandarkar','Madhur Bhandarkar','Kirti Kulhari, Neil Nitin Mukesh, Tota Roy Chowdhury','India','Hindi','Drama|History|Thriller','6.4','764','6.4','6.4','20005'),
 ('Raag Desh (2017)','Tigmanshu Dhulia','Tigmanshu Dhulia','Kunal Kapoor, Amit Sadh, Mohit Marwah','India','Hindi','Action|Drama|History','8.4','286','8.4','8.4','565977'),
 ('Jab Harry met Sejal (2017)','Imtiaz Ali','Imtiaz Ali','Shah Rukh Khan, Anushka Sharma Kohli, Björn Freiberg','India','Hindi','Comedy|Drama|Romance','5.5','13719','6.3','6.3','32738956'),
 ('Toilet - Ek Prem Katha (2017)','Shree Narayan Singh','Garima','Akshay Kumar, Anupam Kher, Bhumi Pednekar','India','Hindi','Comedy|Drama','7.4','9504','7.4','5.7','24368811'),
 ('Bareilly Ki Barfi (2017)','Ashwiny Iyer Tiwari','Bareilly Ki Barfi','Ayushmann Khurrana, Kriti Sanon, Rajkummar Rao','India','Hindi','Comedy|Romance','7.5','5310','8.0','7.5','4045891'),
 ('A Gentleman (2017)','Krishna D.K.,Raj Nidimoru','Raj Nidimoru','Sidharth Malhotra, Jacqueline Fernandez, Darshan Kumar','India','Hindi','Action|Comedy|Thriller','6.5','3455','6.5','6.5','7179611'),
 ('Babumoshai Bandookbaaz (2017)','Kushan Nandy','Ghalib Asadbhopali','Nawazuddin Siddiqui, Bidita Bag, Shradha Das','India','Hindi Bengali','Action|Crime|Thriller','7.1','676','7.1','7.1','1809755'),
 ('Qaidi Band (2017)','Habib Faisal','Habib Faisal','Aadar Jain, Anya Singh, Mikhail Yawalkar','India',NULL,'Drama|Music','5.3','155','5.3','5.3','2456'),
 ('Baadshaho (2017)','Milan Luthria','Rajat Arora','Ajay Devgn, Ileana D\'Cruz, Emraan Hashmi','India','Hindi','Action|Adventure|Thriller','6.1','2959','6.1','6.1','8610766'),
 ('Shubh Mangal Saavdhan (2017)','R.S. Prasanna','R.S. Prasanna','Ayushmann Khurrana, Bhumi Pednekar, Seema Bhargava','India','Hindi','Comedy|Romance','7.1','2912','7.1','7.1','4045891'),
 ('Kaalakaandi (2018)','Akshat Verma','Akshat Verma','Saif Ali Khan, Neil Bhoopalam, Amyra Dastur','India','Hindi','Comedy','7.1','329','7.1','7.1','199828'),
 ('Poster Boys (2017)','Shreyas Talpade','Bunty Rathore','Sunny Deol, Bobby Deol, Shreyas Talpade','India','Hindi','Comedy','5.7','937','5.7','5.7','167332'),
 ('Simran (2017)','Hansal Mehta','Apurva Asrani','Kangana Ranaut, Sohum Shah, Esha Tewari','India','Hindi','Crime|Drama|Romance|Thriller','5.5','1984','5.5','5.5','15990'),
 ('Lucknow Central (2017)','Ranjit Tiwari','Aseem Arora','Farhan Akhtar, Diana Penty, Ronit Roy','India',NULL,'Action|Crime|Drama|Music|Thriller','6.1','1456','6.1','6.1','10933105'),
 ('Bhoomi (2017)','Omung Kumar','Raaj Shaandilyaa','Sunny Leone, Sanjay Dutt, Aditi Rao Hydari','India','Hindi','Action|Crime|Drama|Thriller','5.3','1009','6.3','5.3','3150275'),
 ('Haseena Parkar (2017)','Apoorva Lakhia','Suresh Nair','Shraddha Kapoor, Ankur Bhatia, Siddhant Kapoor','India',NULL,'Biography|Crime|Thriller','3.8','431','3.8','3.8','9168474'),
 ('Newton (2017)','Amit Masurkar','Amit Masurkar','Rajkummar Rao, Pankaj Tripathi, Anjali Patil','India','Hindi','Drama','7.9','6050','7.9','7.9','178043'),
 ('Judwaa 2 (2017)','David Dhawan','Yunus Sajawal','Salman Khan, Jacqueline Fernandez, Anupam Kher','India','Hindi','Action|Comedy','4.0','5200','4.0','4.8','30504224'),
 ('Golmaal Again (2017)','Rohit Shetty','Yunus Sajawal','Ajay Devgn, Arshad Warsi, Tusshar Kapoor','India','Hindi','Action|Comedy|Fantasy|Horror','5.1','5152','5.2','4.8','8610766'),
 ('Secret Superstar (2017)','Advait Chandan','Advait Chandan','Zaira Wasim, Meher Vij, Raj Arjun','India','Hindi','Drama|Family|Music|Musical','8.4','6571','8.4','8.4','18870'),
 ('Ittefaq (2017)','Abhay Chopra','Abhay Chopra','Sidharth Malhotra, Sonakshi Sinha, Akshaye Khanna','India','Hindi','Mystery|Thriller','7.3','3775','7.3','7.3','7179611'),
 ('Tumhari Sulu (2017)','Suresh Triveni','Suresh Triveni','Vidya Balan, Neha Dhupia, Manav Kaul','India','Hindi','Comedy|Drama','7.0','1091','7.0','7.0','246925'),
 ('Fukrey Returns (2017)','Mrighdeep Lamba','Vipul Vig','Pulkit Samrat, Manjot Singh, Ali Fazal','India','Hindi','Comedy','7.0','1915','7.0','7.0','371990'),
 ('Tiger Zinda Hai (2017)','Ali Abbas Zafar','Neelesh Misra','Salman Khan, Katrina Kaif, Sajjad Delafrooz','India','Hindi English','Action|Adventure|Thriller','6.7','10606','6.9','6.7','30504224'),
 ('Project Marathwada (2016)','Bhavin Wadia','Bhavin Wadia','Om Puri, Seema Biswas, Govind Namdeo','India','Hindi','Drama','8.1','8','8.1','8.1','18638'),
 ('Raaz Reboot (2016)','Vikram Bhatt','Vikram Bhatt','Emraan Hashmi, Kriti Kharbanda, Suzanna Mukherjee','India','Hindi','Horror|Mystery|Romance|Thriller','4.5','1269','4.45','4.375','1936043'),
 ('Raman Raghav 2.0 (2016)','Anurag Kashyap','Vasan Bala','Nawazuddin Siddiqui, Vicky Kaushal, Sobhita Dhulipala','India','Hindi','Crime|Drama|Thriller','7.3','8036','7.3','7.3','1809755'),
 ('Rebellious Flower (2016)','Krishan Hooda','Jagdish Bharti','Prince Shah, Shashank Singh, Mantra','India','Hindi','Biography|Drama','7.0','199','7.0','7.0','2686'),
 ('Rock On 2 (2016)','Shujaat Saudagar','Abhishek Kapoor','Farhan Akhtar, Shraddha Kapoor, Arjun Rampal','India','Hindi','Drama|Music','5.0','1526','5.0','5.0','10933105'),
 ('Rocky Handsome (2016)','Nishikant Kamat','Ritesh Shah','John Abraham, Nishikant Kamat, Sharad Kelkar','India','Hindi','Action|Crime|Thriller','6.8','5571','7.2','6.0','2195580'),
 ('Rough Book (2016)','Ananth Narayan Mahadevan','Sanjay Chauhan','Tannishtha Chatterjee, Mukesh Hariawala, Amaan Khan','India','Hindi','Drama','7.2','61','7.2','7.2','6181'),
 ('Rustom (2016)','Dharmendra Suresh Desai','Vipul K. Rawal','Akshay Kumar, Ileana D\'Cruz, Esha Gupta','India','Hindi','Crime|Mystery|Thriller','7.1','16699','5.6','7.1','24368811'),
 ('Saala Khadoos (2016)','Sudha Kongara','Sudha Kongara','Madhavan, Nassar, Radha Ravi','India','Hindi Tamil Tamil','Action|Drama|Sport','7.7','8656','7.7','7.7','2424025'),
 ('Saansein: The Last Breath (2016)','Rajiv S. Ruia','Shiraz Ahmed','Sonarika Bhadoria, Amir Dalvi, Rajniesh Duggall','India','Hindi','Horror|Romance','3.9','75','4.0','3.9','47740'),
 ('Saat Uchakkey (2016)','Sanjeev Sharma','Sandeep Saket','Manoj Bajpayee, Rajat Bhalla, Nitin Bhasin','India','Hindi','Comedy','5.7','425','5.7','5.7','851132'),
 ('Sanam Re (2016)','Divya Khosla Kumar','Sanjeev Dutta','Rishi Kapoor, Pulkit Samrat, Yami Gautam','India','Hindi','Drama|Romance','3.1','2262','3.1','3.1','3019674'),
 ('Sanam Teri Kasam (2016)','Radhika Rao,Vinay Sapru','Radhika Rao','Harshvardhan Rane, Mawra Hocane, Vijay Raaz','India','Hindi','Drama|Musical|Romance','7.3','6839','7.3','7.3','103128'),
 ('Santa Banta Pvt Ltd (2016)','Akashdeep','Akashdeep','Tinnu Anand, Vikas Bhalla, Vir Das','India','English Hindi','Action|Comedy','2.9','173','2.9','2.9','451'),
 ('Sarbjit (2016)','Omung Kumar','Utkarshini Vashishtha','Randeep Hooda, Aishwarya Rai Bachchan, Richa Chadha','India','Hindi','Biography|Drama|History|Musical','7.3','3213','6.3','7.3','695401'),
 ('Kyaa Kool Hain Hum 3 (2016)','Umesh','Mushtaq Sheikh','Tusshar Kapoor, Aftab Shivdasani, Krishna Abhishek','India','Hindi','Comedy|Horror','1.9','3562','1.9','2.15','405140'),
 ('Laal Rang (2016)','Syed Ahmad Afzal','Syed Ahmad Afzal','Randeep Hooda, Akshay Oberoi, Rajniesh Duggall','India','Hindi','Action|Crime|Drama|Thriller','8.3','3109','8.3','8.3','695401'),
 ('Love Games (2016)','Vikram Bhatt','Vikram Bhatt','Patralekhaa, Tara-Alisha Berry, Gauri Arora','India','Hindi','Thriller','4.4','596','4.45','4.375','9509'),
 ('Love Ke Funday (2016)','Indervesh Yogee','Indervesh Yogee','Pooja Banerjee, Shaleen Bhanot, Samiksha Bhatnagar','India','Hindi','Comedy','7.9','8','7.9','7.9','4646'),
 ('Love Shagun (2016)','Saandesh Nayak','Saandesh Nayak','Anuj Sachdeva, Nidhi Subbaiah, Manit Joura','India','Hindi','Comedy|Romance','5.9','78','5.9','5.9','6469'),
 ('LoveShhuda (2016)','Vaibhav Misra','Vaibhav Misra','Kishore Bhatt, Tisca Chopra, Benaf Dadachanji','India','Hindi','Comedy|Romance','4.5','472','4.5','4.5','5979'),
 ('Luv U Alia (2015)','Indrajit Lankesh','Sammy\'s Magic Cinema','V. Ravichandran, Chandan Kumar, Sudeep','India','Kannada Hindi Telugu','Family|Romance','5.5','67','5.5','5.5','19996'),
 ('M Cream (2014)','Agneya Singh,Aban Raza','Agneya Singh','Tom Alter, Raaghav Chanana, Ira Dubey','India','English','Adventure|Comedy|Drama','5.7','194','5.7','5.7','138'),
 ('M.S. Dhoni: The Untold Story (2016)','Neeraj Pandey','Neeraj Pandey','Disha Patani, Anupam Kher, Sushant Singh Rajput','India','Hindi','Biography|Drama|Sport','7.8','24361','7.8','7.05','1016923'),
 ('Madaari (2016)','Nishikant Kamat','Shailja Kejriwal','Irrfan Khan, Jimmy Shergill, Vishesh Bansal','India','Hindi','Adventure|Crime|Drama|Thriller','7.6','9266','7.2','7.6','3965'),
 ('Mastizaade (2016)','Milap Zaveri','Mushtaq Sheikh','Tusshar Kapoor, Vir Das, Sunny Leone','India','Hindi','Comedy','2.4','2014','2.4','2.15','405140'),
 ('Mirzya (2016)','Rakeysh Omprakash Mehra','Gulzar','Harshvardhan Kapoor, Saiyami Kher, Art Malik','India','Hindi','Drama|Musical|Romance','4.6','1349','4.6','4.6','62675'),
 ('Missing on a Weekend (2016)','Abhishek Jawkar','Abhishek Jawkar','Dishank Arora, Akash Bathija, Dibyendu Bhattacharya','India','Hindi','Thriller','5.0','31','5.0','5.0','15690'),
 ('Moh Maya Money (2016)','Munish Bhardwaj','Munish Bhardwaj','Devendra Chowhan, Neha Dhupia, Vidushi Mehra','India','Hindi','Crime|Drama|Thriller','5.8','242','5.8','5.8','100'),
 ('Mohenjo Daro (2016)','Ashutosh Gowariker','Ashutosh Gowariker','Hrithik Roshan, Pooja Hegde, Kabir Bedi','India','Hindi','Action|Adventure|Drama|History|Romance','5.9','8597','5.9','5.9','22045556'),
 ('Motu Patlu: King of Kings (2016)','Suhas Kadav','Kripa Shankar','Saurav Chakraborty, Vinay Pathak','India','Hindi','Comedy','7.5','64','7.5','7.5','46'),
 ('MSG the Warrior: Lion Heart (2016)','Gurmeet Ram Rahim Singh','Gurmeet Ram Rahim Singh','Ashok Insan, Bhushan Insan, Charanpreet Insan','India','Hindi','Adventure|Comedy|Crime|Drama|Horror','7.8','7256','7.8','7.8','655'),
 ('Neerja (2016)','Ram Madhvani','Saiwyn Quadras','Sonam Kapoor, Shabana Azmi, Yogendra Tikku','India','Hindi English','Biography|Drama|Thriller','7.8','15545','7.8','7.8','11530996'),
 ('Nil Battey Sannata (2015)','Ashwiny Iyer Tiwari','Nitesh Tiwari','Swara Bhaskar, Ratna Pathak Shah, Riya Shukla','India','Hindi','Drama|Family','8.5','3486','8.0','8.5','89636'),
 ('Kaptaan (2016)','Mandeep Kumar','Surmeet Maavi','Gippy Grewal, Monica Gill, Karishma Kotak','India','Panjabi','Comedy|Drama|Family|Music','6.5','152','6.5','6.5','2023404'),
 ('Kerry on Kutton (2016)','Ashok Yadav','Himanshu Onkar Tripathi','Satyajeet Dubey, Aradhana Jagota, Aditya Kumar','India','Hindi','Drama','5.6','159','5.6','5.6','2384'),
 ('1:13:7 Ek Tera Saath (2016)','Arshad Siddiqui','Bobby Khan','Pankaj Berry, Anubhav Dhir, Hritu Dudani','India','Hindi','Horror','5.7','50','5.7','4.9','68'),
 ('Fitoor (2016)','Abhishek Kapoor','Charles Dickens','Aditya Roy Kapoor, Katrina Kaif, Tabu','India','Hindi Urdu','Drama|Romance','5.4','3383','5.4','5.4','3966'),
 ('Force 2 (2016)','Abhinay Deo','Jasmeet K. Reen','John Abraham, Sonakshi Sinha, Tahir Raj Bhasin','India','Hindi','Action|Thriller','6.3','3532','6.3','6.3','2195580'),
 ('Freaky Ali (2016)','Sohail Khan','Sohail Khan','Nawazuddin Siddiqui, Arbaaz Khan, Amy Jackson','India','Hindi','Comedy|Sport','5.0','2111','5.0','5.0','1809755'),
 ('Fredrick (2016)','Rajesh Butalia','Rajesh Butalia','Avinash Dhyani, Prashant Narayanan, Tulna Butalia','India','Hindi','Action|Thriller','5.1','10','5.1','5.1','2688'),
 ('Fuddu (2016)','Sunil Subramani','Pawan Kumar Sharma','Shubham, Swati Kapoor, Uday Tikekar','India','Hindi','Comedy|Drama','5.8','113','5.8','5.8','2378'),
 ('Gandhigiri (2016)','Sanoj Mishra','Kumar Manjul','Rishi Bhutani, Dolly Chawla, Meghna Haldar','India','Hindi','Drama','5.4','30','5.4','5.4','2187'),
 ('Ghayal Once Again (2016)','Sunny Deol','Shaktimaan Talwar','Sunny Deol, Soha Ali Khan, Om Puri','India','Hindi','Action|Drama|Thriller','6.5','4416','6.5','6.5','167332'),
 ('Global Baba (2016)','Manoj Tiwari','Vishal Vijay Kumar','Pankaj Tripathi, Abhimanyu Singh, Sandeepa Dhar','India','Hindi','Thriller','5.6','120','5.6','5.6','13647'),
 ('Great Grand Masti (2016)','Indra Kumar','Tushar Hiranandani','Urvashi Rautela, Riteish Deshmukh, Puja Bose','India','Hindi','Comedy|Drama|Fantasy|Horror','3.7','1589','3.7','4.65','364209'),
 ('Hai Apna Dil Toh Awara (2016)','Monjoy Joy Mukerji','Monjoy Joy Mukerji','Sahil Anand, Niyati Joshi, Vikram Kochhar','India','Hindi','Comedy','8.4','9','8.4','8.4','11894'),
 ('Happy Bhag Jayegi (2016)','Mudassar Aziz','Mudassar Aziz','Diana Penty, Abhay Deol, Jimmy Shergill','India','Hindi','Comedy|Romance','6.4','3887','6.4','6.4','786670'),
 ('Housefull 3 (2016)','Sajid,Farhad Samji','K. Subhash','Akshay Kumar, Jacqueline Fernandez, Nargis Fakhri','India','Hindi','Action|Comedy','5.2','5846','5.2','5.2','24368811'),
 ('Ishq Click (2016)','Anil Ballani','Rajeev Yogendra Nath','Sara Loren, Adhyayan Suman, Aaryansh Arora',NULL,'Hindi','Drama|Romance','4.2','69','4.2','4.2','5981'),
 ('Ishq Forever (2016)','Sameer Sippy','Shabbir Boxwala','Mahesh Balraj, Krishna Chaturvedi, Javed Jaffrey','India','Hindi','Romance','3.9','72','3.9','3.9','1007'),
 ('Ishq Junoon: The Heat is On (2016)','Sanjay Sharma','Pankaj Trivedi','Divya Singh, Rajbeer Singh, Reshad Delawar Khan',NULL,NULL,'Romance|Thriller','4.5','71','4.5','4.5','15822'),
 ('Island City (2015)','Ruchika Oberoi','Ruchika Oberoi','Vinay Pathak, Amruta Subhash, Tannishtha Chatterjee','India','Hindi','Drama','6.7','225','6.7','6.7','244548'),
 ('Jai Gangaajal (2016)','Prakash Jha','Prakash Jha','Priyanka Chopra, Prakash Jha, Manav Kaul','India','Hindi','Crime|Drama','5.7','2129','5.7','5.7','21513550'),
 ('Jugni (2016)','Shefali Bhushan','Siddhant Behl','Sugandha Garg, Anurita Jha, Divya Unny','India','Hindi','Drama','6.1','117','6.1','6.1','259'),
 ('Julie 2 (2017)','Deepak S. Shivdasani','Deepak S. Shivdasani','Nishikant Kamat, Raai Laxmi, Rati Agnihotri','India','Hindi','Drama|Romance','2.9','183','2.9','2.9','931'),
 ('Junooniyat (2016)','Vivek Agnihotri','Vivek Agnihotri','Taran Bajaj, Manoj Bakshi, Madhuri D. Bandiwedkar','India','Hindi','Drama|Romance','4.3','470','5.65','5.65','7289'),
 ('Kahaani 2 (2016)','Sujoy Ghosh','Sujoy Ghosh','Vidya Balan, Arjun Rampal, Jugal Hansraj','India','Hindi','Mystery|Thriller','6.6','3667','6.6','6.6','246925'),
 ('Dil Toh Deewana Hai (2016)','Raja Bundela','D.S. Productions','Zeenat Aman, Raj Babbar, Meenu Bhardwaj','India','Hindi','Drama|Romance','7.3','14','7.3','7.3','485'),
 ('Direct Ishq (2016)','Rajiv S. Ruia','Bobby Khan','Arjun Bijlani, Rajniesh Duggall, Rajkumar Kanojia','India','Hindi','Action|Comedy|Romance','4.1','53','4.0','4.9','116179'),
 ('Dishoom (2016)','Rohit Dhawan','Rohit Dhawan','John Abraham, Varun Dhawan, Nargis Fakhri','India','Hindi','Action|Adventure|Comedy|Crime|Sport','5.1','4773','5.1','5.1','2195580'),
 ('Do Lafzon Ki Kahani (2016)','Deepak Tijori','Girish Dhamija','Kajal Aggarwal, Anil George, Randeep Hooda','India','Hindi','Action|Drama|Romance','6.5','955','6.5','6.5','1198382'),
 ('Dongri Ka Raja (2016)','Hadi Abrar','M. Salim','Ronit Roy, Ashmit Patel, Gashmeer Mahajani','India','Hindi','Action|Drama|Romance','4.2','100','4.2','5.5','286899'),
 ('1920 London (2016)','Dharmendra Suresh Desai','Vikram Bhatt','Sharman Joshi, Meera Chopra, Vishal Karwal','India','Hindi','Horror|Mystery','4.1','1095','5.6','4.375','68220'),
 ('31st October (2015)','Shivaji Lotan Patil','Harry Sachdeva','Soha Ali Khan, Lakha Lakhwinder Singh, Nagesh Bhonsle','India','Hindi Panjabi','Action|Drama|History|Thriller','5.8','147','5.8','5.8','1687092'),
 ('7 Hours to Go (2016)','Saurabh Varma','Saurabh Varma','Shiv Pandit, Sandeepa Dhar, Vipin Sharma','India','Hindi','Crime|Thriller','5.6','312','5.6','5.6','2917'),
 ('A Flying Jatt (2016)','Remo','Remo','Tiger Shroff, Jacqueline Fernandez, Nathan Jones','India','Hindi','Action|Adventure|Comedy|Fantasy|Sci-Fi','3.5','2302','4.55','3.5','1846627'),
 ('A Scandall (2016)','Ishaan Trivedi','Ishaan Trivedi','Johnny Baweja, Reeth Mazumder, Manav Kaul','India','Hindi','Thriller','4.4','85','4.4','4.4','191'),
 ('Ae Dil Hai Mushkil (2016)','Karan Johar','Karan Johar','Aishwarya Rai Bachchan, Ranbir Kapoor, Anushka Sharma Kohli','India','Hindi','Drama|Music|Musical|Romance','5.8','16040','5.8','5.8','80122'),
 ('Airlift (2016)','Raja Menon','Raja Menon','Akshay Kumar, Nimrat Kaur, Kumud Mishra','India','Hindi Malayalam Arabic','Action|Drama|History','8.2','42882','8.2','8.2','24368811'),
 ('Baaghi (2016)','Sabir Khan','Sanjeev Datta','Shraddha Kapoor, Tiger Shroff, Sudheer Babu Posani','India','Hindi','Action|Romance','5.2','4501','4.3','5.2','9168474'),
 ('Baar Baar Dekho (2016)','Nitya Mehra','Sri Rao','Sidharth Malhotra, Katrina Kaif, Sayani Gupta','India','Hindi English','Comedy|Drama|Romance|Sci-Fi','5.3','4642','5.3','5.3','7179611'),
 ('Befikre (2016)','Aditya Chopra','Aditya Chopra','Ranveer Singh, Vaani Kapoor, Yun Lai','India','Hindi','Comedy|Drama|Romance','3.8','5579','3.8','3.8','8524015'),
 ('Beiimaan Love (2016)','Rajeev Chaudhari','Rajeev Chaudhari','Sunny Leone, Rajeev Verma, Sahil Arora','India','Hindi English','Drama|Romance|Thriller','3.0','264','3.0','3.0','3150275'),
 ('BHK Bhalla@Halla.Kom (2016)','Rakesh Chaturvedi','Neeraj Badhwar','Rasika Agashe, Inshika Bedi, Sukhwinder Chahal','India','Hindi','Comedy','5.8','35','5.8','5.8','321'),
 ('Bollywood Diaries (2016)','K.D. Satyam','K.D. Satyam','Raima Sen, Salim Diwan, Ashish Vidyarthi','India','Hindi','Drama','5.9','206','5.9','5.9','1164644'),
 ('Brahman Naman (2016)','Qaushiq Mukherjee','Naman Ramachandran','Shashank Arora, Tanmay Dhanania, Chaitanya Varad','India UK','English','Comedy','5.7','1148','5.7','5.7','3246'),
 ('Buddha in a Traffic Jam (2016)','Vivek Agnihotri','Vivek Agnihotri','Aanchal Dwivedi, Mahie Gill, Pallavi Joshi','India','Hindi English','Crime|News|Thriller','7.0','1258','5.65','5.65','6'),
 ('Budhia Singh: Born to Run (2016)','Soumendra Padhi','Soumendra Padhi','Manoj Bajpayee, Mayur Mahendra Patole, Gajraj Rao','India','Hindi','Biography|Drama|Sport','7.9','980','7.9','7.9','851132'),
 ('Chaar Sahibzaade 2: Rise of Banda Singh Bahadur (2016)','Harry Baweja','Harry Baweja','Om Puri','India','Panjabi English Hindi','Animation','8.4','357','8.4','8.4','18638'),
 ('Chalk N Duster (2016)','Jayant Gilatar','Ranjeev Verma','Richa Chadha, Shabana Azmi, Arya Babbar','India','Hindi Hindi','Drama','6.6','444','6.6','6.6','171821'),
 ('Chauranga (2014)','Bikas Ranjan Mishra','Bikas Ranjan Mishra','Sanjay Suri, Tannishtha Chatterjee, Riddhi Sen','India','Hindi','Drama','6.6','233','6.6','6.6','135539'),
 ('Dangal (2016)','Nitesh Tiwari','Piyush Gupta','Aamir Khan, Sakshi Tanwar, Fatima Sana Shaikh','India','Hindi','Action|Biography|Drama|Sport','8.6','81235','8.6','8.6','22717347'),
 ('Days of Tafree (2016)','Krishnadev Yagnik','Anand Pandit Motion Pictures','Yash Soni, Ansh Bagri, Sarabjeet Bindra','India','Hindi','Comedy','7.6','185','7.6','7.6','4238'),
 ('Dear Dad (2016)','Tanuj Bhramar','Indian Film Studios','Ekavali Khanna, Raman Singh Rawat, Himanshu Sharma','India','Hindi','Drama|Family','6.5','188','6.5','6.5','232'),
 ('Dear Zindagi (2016)','Gauri Shinde','Gauri Shinde','Alia Bhatt, Shah Rukh Khan, Kunal Kapoor','India','Hindi','Drama|Romance','7.7','27096','7.7','7.7','15816709'),
 ('Dhanak (2015)','Nagesh Kukunoor','Nagesh Kukunoor','Krrish Chhabria, Hetal Gada, Vipin Sharma','India','Hindi','Drama','8.0','2340','8.0','8.0','150'),
 ('Dhara 302 (2016)','Jitendra Singh Naruka','Jitendra Singh Naruka','Dipti, Pradeep Kabra, Rufy Khan','India','Hindi','Drama','5.0','12','5.0','5.0','4364'),
 ('Shivaay (2016)','Ajay Devgn','Sandeep Shrivastava','Ajay Devgn, Abigail Eames, Erika Kaar','India','Hindi','Action|Adventure|Drama|Thriller','6.4','8326','6.4','6.4','8610766'),
 ('Shorgul (2016)','Pranav Singh,Jitendra Tiwari','Shashie-Vermaa','Jimmy Shergill, Ashutosh Rana, Suha Gezen','India','Hindi','Drama','5.6','111','5.6','5.6','944293'),
 ('Shortcut Safari (2016)','Amitabha Singh','Svani Parekh','Jimmy Shergill, Manmeet Singh','India','Hindi','Adventure|Drama|Mystery','7.0','29','7.0','7.0','944293'),
 ('Sultan (2016)','Ali Abbas Zafar','Ali Abbas Zafar','Salman Khan, Anushka Sharma Kohli, Marko Zaror','India','Hindi','Action|Drama|Family|Sport','7.1','29373','6.9','7.1','30504224'),
 ('Sunshine Music Tours & Travels (2016)','Shailendra Singh','Sehaj Maini','Ajit Singh Arora, Rahul Badesra, Nida Chakaborty','India','Hindi','Comedy','5.3','13','5.3','5.3','13'),
 ('Te3n (2016)','Ribhu Dasgupta','Bijesh Jayarajan','Amitabh Bachchan, Nawazuddin Siddiqui, Vidya Balan','India','Hindi','Drama|Mystery|Thriller','7.3','8379','7.3','7.3','32949705'),
 ('Teraa Surroor (2016)','Shawn Arranha','Namrata Ramsay','Himesh Reshammiya, Farah Karimaee, Naseeruddin Shah','India','English Hindi','Action|Drama|Romance','2.7','711','2.7','2.7','2968'),
 ('Tere Bin Laden Dead or Alive (2016)','Abhishek Sharma','Abhishek Sharma','Manish Paul, Pradhuman Singh, Sikander Kher','India','Hindi','Comedy','4.2','691','4.2','4.2','598601'),
 ('The Blueberry Hunt (2016)','Anup Kurian','Anup Kurian','Kartik Elangovan, Vinay Forrt, Aahana Kumra','India','English Hindi','Thriller','5.6','168','5.6','5.6','25'),
 ('The Legend of Michael Mishra (2016)','Manish Jha','Anshuman Chaturvedi','Aditi Rao Hydari, Arshad Warsi, Boman Irani','India',NULL,'Comedy|Drama','4.6','320','4.6','4.6','766210'),
 ('Tum Bin 2 (2016)','Anubhav Sinha','Anubhav Sinha','Neha Sharma, Aditya Seal, Aashim Gulati','India','Hindi','Drama|Romance','4.9','856','4.9','4.9','463753'),
 ('Tutak Tutak Tutiya (2016)','Vijay','Vijay','Tamannaah Bhatia, Karishma Gulati, Esha Gupta','India','Hindi','Comedy|Horror','5.3','527','5.3','5.3','2684923'),
 ('Udta Punjab (2016)','Abhishek Chaubey','Sudip Sharma','Shahid Kapoor, Kareena Kapoor Khan, Alia Bhatt','India','Hindi Panjabi','Action|Crime|Drama','7.8','19410','7.8','7.5','12543500'),
 ('Umrika (2015)','Prashant Nair','Prashant Nair','Aashish Bhatt, Uplaksh Kochhar, Megh Pant','India','Hindi','Comedy|Drama','6.7','722','6.7','6.7','166'),
 ('Veerappan (2016)','Ram Gopal Varma','Jai Priyadarshi','Sachiin Joshi, Sandeep Bharadwaj, Usha Jadhav','India','Hindi','Action|Biography|Crime','5.2','444','5.0','5.2','278'),
 ('Warrior Savitri (2016)','Param Gill','Param Gill','Niharica Raizada, Rajat Barmecha, Lucy Pinder','India','Hindi English','Action|Thriller','4.2','68','4.2','4.2','1902'),
 ('Wah Taj (2016)','Ajit Sinha','M. Salim','Amitabh Bachchan, Krishna Bhatt, Yusuf Hussain','India','Hindi','Drama','6.8','35','6.8','5.5','32949705'),
 ('Wajah Tum Ho (2016)','Vishal Pandya','Sameer Arora','Zarine Khan, Sharman Joshi, Sherlyn Chopra','India','Hindi','Drama|Mystery|Romance|Thriller','4.4','787','4.45','4.4','173703'),
 ('Wazir (2016)','Bejoy Nambiar','Vidhu Vinod Chopra','Amitabh Bachchan, Farhan Akhtar, Aditi Rao Hydari','India','Hindi','Action|Crime|Drama|Mystery|Thriller','7.1','14127','7.1','7.1','32949705'),
 ('Yea Toh Two Much Ho Gayaa (2016)','Anwer Khan','Anwer Khan','Jimmy Shergill, Pooja Chopra, Arbaaz Khan','India','Hindi','Action|Drama','4.3','79','4.3','4.3','944293'),
 ('Yeh Hai Lollipop (2016)','Manoj Sharma','Manoj Sharma','Om Puri, Chirag Thakkar, Shilpa Anand','India','Hindi','Comedy','8.6','13','8.6','8.6','18638'),
 ('Zubaan (2015)','Mozez Singh','Sumit Roy','Raaghav Chanana, Manish Chaudhary, Sarah-Jane Dias','India','Hindi English Panjabi','Drama','6.3','176','6.3','6.3','223'),
 ('Dum Laga Ke Haisha (2015)','Sharat Katariya','Sharat Katariya','Bhumi Pednekar, Ayushmann Khurrana, Sanjay Mishra','India','Hindi','Comedy|Drama|Romance','7.5','12341','7.5','7.5','138758'),
 ('Badlapur (2015)','Sriram Raghavan','Massimo Carlotto','Varun Dhawan, Nawazuddin Siddiqui, Yami Gautam','India','Hindi','Action|Drama|Thriller','7.5','16608','7.5','7.5','7928334'),
 ('Piku (2015)','Shoojit Sircar','Juhi Chaturvedi','Amitabh Bachchan, Deepika Padukone, Irrfan Khan','India','Hindi Bengali','Comedy|Drama','7.6','21113','7.6','7.6','32949705'),
 ('Gabbar is Back (2015)','Krish Jagarlamudi','A.R. Murugadoss','Akshay Kumar, Kareena Kapoor Khan, Shruti Haasan','India','Hindi','Action|Crime|Thriller','7.3','19138','7.3','7.3','24368811'),
 ('Titli (2014)','Kanu Behl','Kanu Behl','Shashank Arora, Ranvir Shorey, Shivani Raghuvanshi','India','Hindi','Action|Drama|Thriller','7.6','2898','7.6','7.6','3246'),
 ('Margarita with a Straw (2014)','Shonali Bose,Nilesh Maniyar','Shonali Bose','Kalki Koechlin, Revathy, Sayani Gupta','India','Hindi English','Drama','7.3','2429','7.3','7.3','278'),
 ('Tamasha (2015)','Imtiaz Ali','Imtiaz Ali','Deepika Padukone, Ranbir Kapoor, Piyush Mishra','India','Hindi','Comedy|Drama|Romance','7.2','16758','6.35','6.35','22836167'),
 ('Nh10 (2015)','Navdeep Singh','Sudip Sharma','Anushka Sharma Kohli, Ravi Beniwal, Siddharth Bharadwaj','India','Hindi','Adventure|Crime|Drama|Thriller','7.2','9994','7.2','7.5','24168'),
 ('Hunterrr (2015)','Harshavardhan Kulkarni','Harshavardhan Kulkarni','Gulshan Devaiah, Radhika Apte, Sai Tamhankar','India','Hindi','Comedy|Romance','7.0','4566','7.0','7.0','7442'),
 ('Brothers (2009)','Jim Sheridan','David Benioff','Jake Gyllenhaal, Natalie Portman, Tobey Maguire','USA','English','Drama|Thriller|War','7.1','96480','7.1','7.1','49931'),
 ('Bajirao Mastani (2015)','Sanjay Leela Bhansali','Nagnath S. Inamdar','Ranveer Singh, Priyanka Chopra, Deepika Padukone','India','Hindi','Action|Drama|History|Romance|War','7.2','24065','7.2','7.2','8524015'),
 ('Shamitabh (2015)','R. Balki','R. Balki','Amitabh Bachchan, Dhanush, Akshara Haasan','India','Hindi','Drama','6.8','6100','6.8','6.8','32949705'),
 ('Hamari Adhuri Kahani (2015)','Mohit Suri','Mahesh Bhatt','Rajkummar Rao, Vidya Balan, Emraan Hashmi','India','Hindi','Drama|Romance','6.7','4088','5.35','6.7','178043'),
 ('Dil Dhadakne Do (2015)','Zoya Akhtar','Zoya Akhtar','Anil Kapoor, Shefali Shah, Priyanka Chopra','India','Hindi','Drama|Family|Romance','6.8','11105','6.8','6.8','2992670'),
 ('Dilwale (2015)','Rohit Shetty','Yunus Sajawal','Shah Rukh Khan, Kajol, Kriti Sanon','India','Hindi','Action|Comedy|Drama|Romance','5.3','26415','5.2','4.8','32738956'),
 ('Kis Kisko Pyaar Karoon (2015)','Abbas Alibhai Burmawalla,Mastan Alibhai Burmawalla','Anukalp Goswami','Kapil Sharma, Simran Kaur Mundi, Manjari Phadnis','India','Hindi','Comedy','5.8','4827','4.2','5.8','11491543'),
 ('Singh Is Bliing (2015)','Prabhudheva','Chintan Gandhi','Akshay Kumar, Amy Jackson, Lara Dutta','India','Hindi','Action|Comedy','5.4','6137','5.4','5.4','24368811'),
 ('Jazbaa (2015)','Sanjay Gupta','Robin Bhatt','Aishwarya Rai Bachchan, Irrfan Khan, Shabana Azmi','India','Hindi','Action|Crime|Drama|Thriller','5.8','2729','6.45','5.8','80122'),
 ('Hawaizaada (2015)','Vibhu Puri','Saurabh Bhave','Naman Jain, Mithun Chakraborty, Krutika Deo','India','Hindi','Biography|Drama|Fantasy','5.6','1283','5.6','5.6','514'),
 ('Prem Ratan Dhan Payo (2015)','Sooraj R. Barjatya','Sooraj R. Barjatya','Salman Khan, Sonam Kapoor, Neil Nitin Mukesh','India','Hindi Tamil English French','Action|Drama|Family|Musical|Romance','4.7','13998','4.7','4.7','30504224'),
 ('Dharam Sankat Mein (2015)','Fuwad Khan','Sanjay Sharma','Naseeruddin Shah, Paresh Rawal, Annu Kapoor','India','Hindi','Comedy','6.3','1557','6.3','6.3','33214'),
 ('Any Body Can Dance 2 (2015)','Remo','Tushar Hiranandani','Shraddha Kapoor, Varun Dhawan, Lauren Gottlieb','India','Hindi','Biography|Drama|Musical','5.6','3957','4.55','4.65','9168474'),
 ('Ab Tak Chhappan 2 (2015)','Ejaz Gulab','Nilesh Girkar','Nana Patekar, Mohan Agashe, Gul Panag','India','Hindi','Crime|Thriller','5.8','956','5.8','5.8','41006'),
 ('Hate Story 3 (2015)','Vishal Pandya','Vikram Bhatt','Sharman Joshi, Zarine Khan, Karan Singh Grover','India','Hindi','Drama|Thriller','4.5','2334','4.45','4.375','68220'),
 ('Welcome to Karachi (2015)','Ashish R. Mohan','Kushal Ved Bakshi','Arshad Warsi, Jackky Bhagnani, Lauren Gottlieb','India','Urdu Hindi English','Adventure|Comedy|Crime|Thriller|War','4.4','774','4.4','4.4','1771732'),
 ('Guddu Rangeela (2015)','Subhash Kapoor','Subhash Kapoor','Arshad Warsi, Amit Sadh, Ronit Roy','India','Hindi','Comedy|Drama','5.3','729','6.3','6.3','1771732'),
 ('Sivaji (2007)','S. Shankar','Swanand Kirkire','Rajinikanth, Shriya Saran, Suman','India','Hindi','Action|Drama|Thriller','7.5','13660','7.5','7.5','4602637'),
 ('Ghajini (2008) ','A.R. Murugadoss','A.R. Murugadoss',' Aamir Khan, Asin, Jiah Khan ','India','HIndi','Action | Drama | Mystery | Thriller','7.3','46467','7.3','7.3','22717347');
/*!40000 ALTER TABLE `imdbdata` ENABLE KEYS */;


--
-- Definition of table `movie_history`
--

DROP TABLE IF EXISTS `movie_history`;
CREATE TABLE `movie_history` (
  `idMovie_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `poster` longtext,
  `genres` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMovie_history`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_history`
--

/*!40000 ALTER TABLE `movie_history` DISABLE KEYS */;
INSERT INTO `movie_history` (`idMovie_history`,`title`,`userid`,`poster`,`genres`) VALUES 
 (1,'Jolly LLB 2 (2017)','5','<img alt=\"Jolly LLB 2 Poster\"  class=\'img-responsive\' title=\"Jolly LLB 2 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMDY5MzFlYzEtNTg0YS00OGM5LWI1ZDMtZDkxN2Y2OTI1NGUxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjM1NjkwMDI@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Crime|Drama'),
 (2,'Badrinath Ki Dulhania (2017)','5','<img alt=\"Badrinath Ki Dulhania Poster\"  class=\'img-responsive\' title=\"Badrinath Ki Dulhania Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNTQ4MDY5OTE5Ml5BMl5BanBnXkFtZTgwNjA3MjQzMTI@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama|Romance'),
 (3,'OK Jaanu (2017)','5','<img alt=\"OK Jaanu Poster\"  class=\'img-responsive\' title=\"OK Jaanu Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMWQ2ZjE4ZTMtYjNlOS00MmJmLTkzOWMtOWMwOTg4N2M4YWI5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Romance'),
 (4,'Half Girlfriend (2017)','5','<img alt=\"Half Girlfriend Poster\"  class=\'img-responsive\' title=\"Half Girlfriend Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNGVkNTA4YzEtMzBjNC00NzFjLTljOGYtY2JiMmMyN2IzN2M4XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Romance'),
 (5,'Jab Harry met Sejal (2017)','5','<img alt=\"Jab Harry met Sejal Poster\"  class=\'img-responsive\' title=\"Jab Harry met Sejal Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMjIzMDI2NDUwOV5BMl5BanBnXkFtZTgwNzE2NjU3MjI@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama|Romance'),
 (6,'Toilet - Ek Prem Katha (2017)','5','<img alt=\"Toilet - Ek Prem Katha Poster\"  class=\'img-responsive\' title=\"Toilet - Ek Prem Katha Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTAxODQ2NDEwOTZeQTJeQWpwZ15BbWU4MDk5MDM3NjIy._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama'),
 (7,'Tumhari Sulu (2017)','5','<img alt=\"Tumhari Sulu Poster\"  class=\'img-responsive\' title=\"Tumhari Sulu Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTczZGY2NWYtNGRkYy00MDU0LWJhZTUtNmQyMjdjYmJmNDM5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama'),
 (8,'Sanam Re (2016)','5','<img alt=\"Sanam Re Poster\"  class=\'img-responsive\' title=\"Sanam Re Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMjE3NzljYWYtZDY3ZS00ZDQ4LTlmN2YtZWEyYzQ4YTc2YmM0XkEyXkFqcGdeQXVyNTIwODMzNjc@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Romance'),
 (9,'Sanam Teri Kasam (2016)','5','<img alt=\"Sanam Teri Kasam Poster\"  class=\'img-responsive\' title=\"Sanam Teri Kasam Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNGY1NWMxYzctMjQ5Ni00NjJiLTgyN2YtOTZlZWQ3OTcxZWFhXkEyXkFqcGdeQXVyNTIwODMzNjc@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Musical|Romance'),
 (10,'Fitoor (2016)','5','<img alt=\"Fitoor Poster\"  class=\'img-responsive\' title=\"Fitoor Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BOWVhMjhjZWUtYjNlYS00ZGE3LTg2NTMtM2RhNTE5NGM3YzZmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Romance'),
 (11,'Prem Ratan Dhan Payo (2015)','5','<img alt=\"Prem Ratan Dhan Payo Poster\"  class=\'img-responsive\' title=\"Prem Ratan Dhan Payo Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMjUzMjE1MzIxOF5BMl5BanBnXkFtZTgwMjgyMzc5NjE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Musical|Romance'),
 (12,'Dilwale (2015)','5','<img alt=\"Dilwale Poster\"  class=\'img-responsive\' title=\"Dilwale Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMjEyNzAyNjExN15BMl5BanBnXkFtZTgwNjM0MDczNzE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Comedy|Romance'),
 (13,'Dear Zindagi (2016)','5','<img alt=\"Dear Zindagi Poster\"  class=\'img-responsive\' title=\"Dear Zindagi Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZWQzYWI3ZGMtYzgyYy00OWZkLWEwODYtNGNiMTZhODBkNzUyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|Romance'),
 (14,'Kaabil (2017)','1','<img alt=\"Kaabil Poster\"  class=\'img-responsive\' title=\"Kaabil Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMWJkMjJiNzMtNzhmOC00MjQ3LTg5MmEtMTRkMTg1ZjQ2ZmM1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNDkxMzY0Mjk@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Crime|Thriller'),
 (15,'Commando 2 (2017)','1','<img alt=\"Commando 2 Poster\"  class=\'img-responsive\' title=\"Commando 2 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZGI1N2Q5NjktMDFiZC00NGQ0LTkzNzYtZmExZGEwODVhYjExL2ltYWdlXkEyXkFqcGdeQXVyNjE5MTgwOTU@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Crime|Thriller'),
 (16,'Baahubali 2: The Conclusion (2017)','1','<img alt=\"Baahubali 2: The Conclusion Poster\"  class=\'img-responsive\' title=\"Baahubali 2: The Conclusion Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMWRjOTAxMmQtMjViMC00OWU2LTlkZTQtNTYyYjhiZjMzYjg4XkEyXkFqcGdeQXVyODA2ODM3NDQ@._V1_UY268_CR2,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Fantasy'),
 (17,'Baadshaho (2017)','1','<img alt=\"Baadshaho Poster\"  class=\'img-responsive\' title=\"Baadshaho Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNGYxOGVmM2UtMTM0YS00MWRlLWI4MTctMzE0ZWQ2OGJmMzUxXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR11,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Thriller'),
 (18,'Golmaal Again (2017)','1','<img alt=\"Golmaal Again Poster\"  class=\'img-responsive\' title=\"Golmaal Again Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BYTJmNzczODUtYTFlZi00N2VkLWExYjItZTQyYWQ4NWRiYzk2XkEyXkFqcGdeQXVyNjQ3ODkxMjE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Comedy|Fantasy|Horror'),
 (19,'Tiger Zinda Hai (2017)','1','<img alt=\"Tiger Zinda Hai Poster\"  class=\'img-responsive\' title=\"Tiger Zinda Hai Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BYTZhMmE3NzgtYmM0My00NmYyLWFlZjItZTVhMjUwNmQyNzUxXkEyXkFqcGdeQXVyMTkzOTcxOTg@._V1_UY268_CR7,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Thriller'),
 (20,'Force 2 (2016)','1','<img alt=\"Force 2 Poster\"  class=\'img-responsive\' title=\"Force 2 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BYmI0ZmM3ZTItODhlOC00NjcwLWJlNzItNzFmMjIxZDY1MGY0XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Thriller'),
 (21,'Dishoom (2016)','1','<img alt=\"Dishoom Poster\"  class=\'img-responsive\' title=\"Dishoom Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNzk1ZjI5ZDktODFmZi00OWI1LWJlNzctZDI4OWJjMjUyZTAzXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Comedy|Crime|Sport'),
 (22,'Airlift (2016)','1','<img alt=\"Airlift Poster\"  class=\'img-responsive\' title=\"Airlift Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZGE1ZTZhNmQtYzhmNC00MjE4LTg4NDUtY2I4N2Y3OTgwZjljXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|History'),
 (23,'Baaghi (2016)','1','<img alt=\"Baaghi Poster\"  class=\'img-responsive\' title=\"Baaghi Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMjg1YmVmYTEtYWYyYi00MDY2LWI3NTgtZjI5MGI4OTI1YjlkXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UY268_CR17,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Thriller'),
 (24,'Sultan (2016)','1','<img alt=\"Sultan Poster\"  class=\'img-responsive\' title=\"Sultan Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNTAzZjVhYWQtMWZhZC00NjMyLTg4MjktNmUyZTI0MDE3NGFjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR6,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Sport'),
 (25,'Sachin (2017)','2','<img alt=\"Sachin Poster\"  class=\'img-responsive\' title=\"Sachin Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZWE4YTU2ZTUtYWIxYi00ZDRhLWFhODQtNDhmZWJiYWY3ZDgzXkEyXkFqcGdeQXVyNjI4OTI1NTc@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Documentary|Biography|Drama|Sport'),
 (26,'Saala Khadoos (2016)','2','<img alt=\"Saala Khadoos Poster\"  class=\'img-responsive\' title=\"Saala Khadoos Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BM2Q5YmM3YjMtOTE2Mi00MDg5LThkZjctYzUxOWU2ZTM1ZDk4XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Sport'),
 (27,'M.S. Dhoni: The Untold Story (2016)','2','<img alt=\"M.S. Dhoni: The Untold Story Poster\"  class=\'img-responsive\' title=\"M.S. Dhoni: The Untold Story Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BOTY5ODQxMTY3M15BMl5BanBnXkFtZTgwOTA3NTA4OTE@._V1_UY268_CR2,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Biography|Drama|Sport'),
 (28,'Freaky Ali (2016)','2','<img alt=\"Freaky Ali Poster\"  class=\'img-responsive\' title=\"Freaky Ali Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTM4NjVlMzAtZTkwOC00NjZlLWI4M2YtZTc5OTVhNjgzNzE0XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Sport'),
 (29,'Dishoom (2016)','2','<img alt=\"Dishoom Poster\"  class=\'img-responsive\' title=\"Dishoom Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNzk1ZjI5ZDktODFmZi00OWI1LWJlNzctZDI4OWJjMjUyZTAzXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Comedy|Crime|Sport'),
 (30,'Dangal (2016)','2','<img alt=\"Dangal Poster\"  class=\'img-responsive\' title=\"Dangal Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_UY268_CR4,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Biography|Drama|Sport'),
 (31,'Sultan (2016)','2','<img alt=\"Sultan Poster\"  class=\'img-responsive\' title=\"Sultan Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNTAzZjVhYWQtMWZhZC00NjMyLTg4MjktNmUyZTI0MDE3NGFjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR6,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Sport'),
 (32,'2.0','4','<img alt=\"2.0 Poster\"  class=\'img-responsive\' title=\"2.0 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZDE4MGI3MzgtZTYyYi00ZmMyLThlZWQtMDVjYTcxMzk1MmI3L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzg1ODc5NTc@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Sci-Fi'),
 (33,'Special Chabbis (2013)','4','<img alt=\"Special Chabbis Poster\"  class=\'img-responsive\' title=\"Special Chabbis Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTQ1NDI5MjMzNF5BMl5BanBnXkFtZTcwMTc0MDQwOQ@@._V1_UY268_CR2,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Crime|Thriller'),
 (34,'Tiger Zinda Hai (2017)','2','<img alt=\"Tiger Zinda Hai Poster\"  class=\'img-responsive\' title=\"Tiger Zinda Hai Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BYTZhMmE3NzgtYmM0My00NmYyLWFlZjItZTVhMjUwNmQyNzUxXkEyXkFqcGdeQXVyMTkzOTcxOTg@._V1_UY268_CR7,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Adventure|Thriller'),
 (35,'2.0','1','<img alt=\"2.0 Poster\"  class=\'img-responsive\' title=\"2.0 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZDE4MGI3MzgtZTYyYi00ZmMyLThlZWQtMDVjYTcxMzk1MmI3L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzg1ODc5NTc@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Sci-Fi'),
 (37,'Manikarnika: The Queen of Jhansi (2018)','4','<img alt=\"Manikarnika: The Queen of Jhansi Poster\"  class=\'img-responsive\' title=\"Manikarnika: The Queen of Jhansi Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMDFmNzFhZDQtMTRiNi00YzM4LTlmZDQtNWQ4OTAyZTM1NDAxXkEyXkFqcGdeQXVyMjY1Mzk2ODc@._V1_UY268_CR147,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Drama|History'),
 (40,'Badrinath Ki Dulhania (2017)','1','<img alt=\"Badrinath Ki Dulhania Poster\"  class=\'img-responsive\' title=\"Badrinath Ki Dulhania Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNTQ4MDY5OTE5Ml5BMl5BanBnXkFtZTgwNjA3MjQzMTI@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama|Romance'),
 (41,'Tees Maar Khan (2010)','6','<img alt=\"Tees Maar Khan Poster\"  class=\'img-responsive\' title=\"Tees Maar Khan Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNTk1NTM5NDYwNl5BMl5BanBnXkFtZTcwMDI2MTYxNA@@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Crime'),
 (42,'Padman (2018)','6','<img alt=\"Padman Poster\"  class=\'img-responsive\' title=\"Padman Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BODViYjQ0YTktMTM5NS00YTVkLWE5MmUtNGY1MzUwOGY0OTg2XkEyXkFqcGdeQXVyNjg5NzkxNTU@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Biography|Comedy|Drama'),
 (43,'Baby (2015)','6','<img alt=\"Baby Poster\"  class=\'img-responsive\' title=\"Baby Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BYTdhNjBjZDctYTlkYy00ZGIxLWFjYTktODk5ZjNlMzI4NjI3XkEyXkFqcGdeQXVyMjY1MjkzMjE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Thriller'),
 (44,'Khiladi 786 (2012)','6','<img alt=\"Khiladi 786 Poster\"  class=\'img-responsive\' title=\"Khiladi 786 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMWZkZmI5NTItMmM1YS00NDZmLWE2MTQtYmNhMDBjYzIwY2NiXkEyXkFqcGdeQXVyNjAwODQ2NzI@._V1_UY268_CR3,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Comedy|Musical'),
 (45,'Airlift (2016)','6','<img alt=\"Airlift Poster\"  class=\'img-responsive\' title=\"Airlift Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZGE1ZTZhNmQtYzhmNC00MjE4LTg4NDUtY2I4N2Y3OTgwZjljXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|History'),
 (46,'Rustom (2016)','6','<img alt=\"Rustom Poster\"  class=\'img-responsive\' title=\"Rustom Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNWFiMGZlMWUtYzBlNy00ZDlmLTg3YjYtNDBmOWQ4Y2ZjMjlkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Crime|Drama|Thriller'),
 (47,'Special Chabbis (2013)','6','<img alt=\"Special Chabbis Poster\"  class=\'img-responsive\' title=\"Special Chabbis Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTQ1NDI5MjMzNF5BMl5BanBnXkFtZTcwMTc0MDQwOQ@@._V1_UY268_CR2,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Crime|Thriller'),
 (48,'2.0','6','<img alt=\"2.0 Poster\"  class=\'img-responsive\' title=\"2.0 Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BZDE4MGI3MzgtZTYyYi00ZmMyLThlZWQtMDVjYTcxMzk1MmI3L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzg1ODc5NTc@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Sci-Fi'),
 (49,'Toilet - Ek Prem Katha (2017)','6','<img alt=\"Toilet - Ek Prem Katha Poster\"  class=\'img-responsive\' title=\"Toilet - Ek Prem Katha Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTAxODQ2NDEwOTZeQTJeQWpwZ15BbWU4MDk5MDM3NjIy._V1_UY268_CR9,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama'),
 (50,'Gabbar is Back (2015)','6','<img alt=\"Gabbar is Back Poster\"  class=\'img-responsive\' title=\"Gabbar is Back Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BOTMzMTcwNzAtY2VmMS00ZTk2LTg2ZjAtNzc2YTVkZDM5YjE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR1,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Crime|Thriller'),
 (51,'Student of the Year (2012)','6','<img alt=\"Student of the Year Poster\"  class=\'img-responsive\' title=\"Student of the Year Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BNjI1Nzk1ODEtMGZkYi00ZjZlLTg2ZTQtMDE5MjVhOGExYzRjXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama|Romance'),
 (52,'Ek Villain (2014)','6','<img alt=\"Ek Villain Poster\"  class=\'img-responsive\' title=\"Ek Villain Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTQzODMxNDU3MF5BMl5BanBnXkFtZTgwMDAzNjMxMjE@._V1_UY268_CR3,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Crime|Drama|Thriller'),
 (53,'Baar Baar Dekho (2016)','6','<img alt=\"Baar Baar Dekho Poster\"  class=\'img-responsive\' title=\"Baar Baar Dekho Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BOGU0NmI3MDAtZTIyNy00MDQxLWI1N2YtOTBhMjkyY2I4NzJlXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX182_CR0,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Comedy|Drama|Romance|Sci-Fi'),
 (54,'Sivaji (2007)','6','<img alt=\"Sivaji Poster\"  class=\'img-responsive\' title=\"Sivaji Poster\" src=\"https://ia.media-imdb.com/images/M/MV5BMTY0MDc1OTI1OF5BMl5BanBnXkFtZTgwMDU1NzE2NDE@._V1_UY268_CR4,0,182,268_AL__QL50.jpg\" itemprop=\"image\">','Action|Drama|Thriller');
/*!40000 ALTER TABLE `movie_history` ENABLE KEYS */;


--
-- Definition of table `moviedata`
--

DROP TABLE IF EXISTS `moviedata`;
CREATE TABLE `moviedata` (
  `idmoviedata` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(45) NOT NULL,
  `director_name` varchar(45) NOT NULL,
  `writer` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `mov_imdb_link` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `budget` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `language` varchar(45) NOT NULL,
  `genres` varchar(45) NOT NULL,
  `gross` varchar(45) NOT NULL,
  `director_likes` decimal(10,0) NOT NULL,
  `actor1` varchar(45) NOT NULL,
  `actor2` varchar(45) NOT NULL,
  `actor3` varchar(45) NOT NULL,
  `actor1_likes` decimal(10,0) NOT NULL,
  `actor2_likes` decimal(10,0) NOT NULL,
  `actor3_likes` decimal(10,0) NOT NULL,
  `imdb_rating` varchar(45) NOT NULL,
  `no_users_voted` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idmoviedata`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedata`
--

/*!40000 ALTER TABLE `moviedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `moviedata` ENABLE KEYS */;


--
-- Definition of table `splitresults`
--

DROP TABLE IF EXISTS `splitresults`;
CREATE TABLE `splitresults` (
  `split_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `splitresults`
--

/*!40000 ALTER TABLE `splitresults` DISABLE KEYS */;
INSERT INTO `splitresults` (`split_value`) VALUES 
 ('Comedy'),
 ('Crime'),
 ('Biography'),
 ('Comedy'),
 ('Drama'),
 ('Action'),
 ('Thriller'),
 ('Action'),
 ('Comedy'),
 ('Musical'),
 ('Action'),
 ('Drama'),
 ('History'),
 ('Crime'),
 ('Drama'),
 ('Thriller'),
 ('Crime'),
 ('Thriller'),
 ('Action'),
 ('Sci-Fi'),
 ('Comedy'),
 ('Drama'),
 ('Action'),
 ('Crime'),
 ('Thriller');
/*!40000 ALTER TABLE `splitresults` ENABLE KEYS */;


--
-- Definition of table `useraccounts`
--

DROP TABLE IF EXISTS `useraccounts`;
CREATE TABLE `useraccounts` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

/*!40000 ALTER TABLE `useraccounts` DISABLE KEYS */;
INSERT INTO `useraccounts` (`userid`,`fname`,`lname`,`phoneno`,`username`,`pass`) VALUES 
 (1,'admin','admin','1234567890','admin','ec13cf98e5ffc6f767b123229ae6f941'),
 (2,'Joe','Russo','7894561230','Joe','ec13cf98e5ffc6f767b123229ae6f941'),
 (4,'Tanmay','Kalbhor','3216549870','tanmay','ec13cf98e5ffc6f767b123229ae6f941'),
 (5,'john','john','1236985470','john','ec13cf98e5ffc6f767b123229ae6f941'),
 (6,'shubham','dhamale','9168538777','shubham','34cfbb2bc327a4deaea7df077f1632f7');
/*!40000 ALTER TABLE `useraccounts` ENABLE KEYS */;


--
-- Definition of function `SPLIT_STR`
--

DROP FUNCTION IF EXISTS `SPLIT_STR`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR`(
 x VARCHAR(9999),
 delim VARCHAR(12),
 pos INT
 ) RETURNS varchar(255) CHARSET latin1
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
delim, '') $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of function `stringSplit`
--

DROP FUNCTION IF EXISTS `stringSplit`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `stringSplit`(
x VARCHAR(9999),
delim VARCHAR(12),
pos INT) RETURNS varchar(255) CHARSET latin1
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1), delim, '') $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of function `substrCount`
--

DROP FUNCTION IF EXISTS `substrCount`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `substrCount`(s VARCHAR(9999), ss VARCHAR(255)) RETURNS tinyint(3) unsigned
    READS SQL DATA
BEGIN
DECLARE count TINYINT(3) UNSIGNED;
DECLARE offset INT(3) UNSIGNED;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET s = NULL;
SET count = 0;
SET offset = 1;
REPEAT
IF NOT ISNULL(s) AND offset > 0 THEN
SET offset = LOCATE(ss, s, offset);
IF offset > 0 THEN
SET count = count + 1;
SET offset = offset + 1;
END IF;
END IF;
UNTIL ISNULL(s) OR offset = 0 END REPEAT;
RETURN count;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `splitter`
--

DROP PROCEDURE IF EXISTS `splitter`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `splitter`(x varchar(9999), delim varchar(12))
BEGIN
SET @Valcount = substrCount(x,delim)+1;
SET @v1=0;


WHILE (@v1 < @Valcount) DO
set @val = stringSplit(x,delim,@v1+1);
INSERT INTO splitResults (split_value) VALUES (@val);
SET @v1 = @v1 + 1;
END WHILE;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
