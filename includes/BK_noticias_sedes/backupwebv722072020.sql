-- MySQL dump 10.13  Distrib 5.5.59, for Linux (x86_64)
--
-- Host: localhost    Database: web_v7
-- ------------------------------------------------------
-- Server version	5.5.52

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `id_carreras` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_carrera` varchar(50) NOT NULL,
  PRIMARY KEY (`id_carreras`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'Ciencias Contables'),(2,'Ciencias Administrativas'),(3,'Ing. Comercial'),(4,'Comercio Exterior'),(5,'Marketing'),(6,'Hotelería y Turísmo'),(7,'Adm. Agroecologica e Industrial'),(8,'Derecho'),(9,'Analisis de sistemas informaticos'),(10,'Ing. Sistemas Informaticos'),(11,'Psicologia Edu, Cli y Emp.'),(12,'Enfermería'),(13,'Ciencias de la Educación'),(14,'Matematicas'),(15,'Educación Parvularia'),(16,'Ciencias de la comunicación social'),(17,'Otros');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Noticias destacadas'),(2,'Actividades de extensión'),(3,'Seminarios'),(4,'Charlas'),(5,'Conferencias'),(6,'Actividades académicas'),(7,'Fimas de convenios'),(8,'Vicerrectoría de Vinculación'),(9,'Defenza de trabajo de culminación de carrera');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid`
--

DROP TABLE IF EXISTS `covid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covid` (
  `id_covid` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_covid` varchar(200) DEFAULT NULL,
  `texto_covid` longtext,
  `fecha_covid` date DEFAULT NULL,
  `enlace` longtext,
  `estado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_covid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid`
--

LOCK TABLES `covid` WRITE;
/*!40000 ALTER TABLE `covid` DISABLE KEYS */;
INSERT INTO `covid` VALUES (1,'Centro del Recursos de Coronavirus - Fuente: Universidad Johns Hopkins','<center><iframe src=\"https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6\" width=\"800\" height=\"600\"> </iframe></center>','2020-03-29','https://coronavirus.jhu.edu/map.html','publicado'),(2,'Brote de enfermedad por coronavirus (COVID-19)  -  Fuente: OMS','<center><iframe src=\"https://www.who.int/es/emergencies/diseases/novel-coronavirus-2019\" width=\"800\" height=\"600\"> </iframe></center>','2020-03-29','https://www.who.int/es','publicado'),(3,'Mapa de casos confirmados de COVID-19 de la OMS (en inglés) - Fuente: OMS','<center><iframe src=\"https://experience.arcgis.com/experience/685d0ace521648f8a5beeeee1b9125cd\" width=\"800\" height=\"600\"> </iframe></center>','2020-03-30','https://covid19-evidence.paho.org/','publicado'),(4,'Distribución geográfica del brote de la enfermedad por el Coronavirus (COVID-19) en las Américas - Fuente: OMS','<center><iframe src=\"https://who.maps.arcgis.com/apps/webappviewer/index.html?id=2203b04c3a5f486685a15482a0d97a87&amp;extent=-20656313.6818%2C-3596894.43\" width=\"800\" height=\"600\"> </iframe></center>','2020-03-31','https://bvsalud.org/vitrinas/es/post_vitrines/nuevo_coronavirus/','publicado'),(5,'Documentos técnicos y evidencia de investigación sobre COVID-19 - Fuente: OPS','<center><iframe src=\"https://covid19-evidence.paho.org/handle/20.500.12663/357/discover?filtertype=language&filter_relational_operator=equals&filter=Espa%C3%B1ol\" width=\"800\" height=\"600\"> </iframe></center>','2020-03-31','https://covid19-evidence.paho.org/handle/20.500.12663/357','publicado'),(6,'ITALIA: Equipos de enfermería para trabajar con pacientes infectados de COVID-19','<center><iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FSalaDePrensa.Formosa%2Fvideos%2F2232708247024087%2F&show_text=0&width=800\" width=\"600\" height=\"400\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe></center>','2020-03-31','https://www.facebook.com/SalaDePrensa.Formosa/videos/2232708247024087/','publicado'),(7,'Método de cuidado a pacientes COVID-19','<!--<center><iframe src=\"https://drive.google.com/file/d/1bOZpLTevsZkIvMetK_yIH4og3zIf1-2O/preview\" width=\"600\" height=\"400\"></iframe></center>-->\r\n<div class=\"embed-responsive embed-responsive-16by9\">\r\n  <iframe class=\"embed-responsive-item\" src=\"https://drive.google.com/file/d/1bOZpLTevsZkIvMetK_yIH4og3zIf1-2O/preview\" allowfullscreen></iframe>\r\n</div>','2020-04-01','https://drive.google.com/file/d/1bOZpLTevsZkIvMetK_yIH4og3zIf1-2O/view','publicado'),(8,'Técnicas de cómo colocarse los equipos de protección individual en sus diversos niveles 4 y 5. Técnica de lavado de manos','<!--<h2>Nivel 5</h2>\r\n<center><video autobuffer=\"true\" x-webkit-airplay=\"allow\" controlslist=\"nodownload\" disablepictureinpicture=\"\" class=\"_2c9v _53mv\" controls=\"\" playinfullscreen=\"false\" src=\"https://video.fasu9-1.fna.fbcdn.net/v/t42.9040-2/94661878_2780104382276316_3428623421179691008_n.mp4?_nc_cat=102&amp;_nc_sid=985c63&amp;efg=eyJ2ZW5jb2RlX3RhZyI6ImxlZ2FjeV9zZCJ9&amp;_nc_ohc=nelLBLYYWfQAX-zWTLQ&amp;_nc_ht=video.fasu9-1.fna&amp;oh=62acfb70b03cd53c33d2c487d8a4184b&amp;oe=5EA1C7F4\" width=\"600\" height=\"400\"></video></center>\r\n<br>\r\n<h2>Retirar los equipos en el Nivel 4</h2>\r\n<center><video autobuffer=\"true\" x-webkit-airplay=\"allow\" controlslist=\"nodownload\" disablepictureinpicture=\"\" class=\"_2c9v _53mv\" controls=\"\" playinfullscreen=\"false\" src=\"https://video.fasu9-1.fna.fbcdn.net/v/t42.9040-2/93934167_217211002907492_7735122270577754112_n.mp4?_nc_cat=111&amp;_nc_sid=985c63&amp;efg=eyJ2ZW5jb2RlX3RhZyI6ImxlZ2FjeV9zZCJ9&amp;_nc_ohc=_qxH6s8fXjgAX858Dqc&amp;_nc_ht=video.fasu9-1.fna&amp;oh=7b4d1d950c44904658ec67618835d932&amp;oe=5EA1D4E2\" width=\"600\" height=\"400\"></video></center>\r\n<br>\r\n<h2> Nivel 4</h2>\r\n<center><video autobuffer=\"true\" x-webkit-airplay=\"allow\" controlslist=\"nodownload\" disablepictureinpicture=\"\" class=\"_2c9v _53mv\" controls=\"\" playinfullscreen=\"false\" src=\"https://video.fasu9-1.fna.fbcdn.net/v/t42.9040-2/93934167_217211002907492_7735122270577754112_n.mp4?_nc_cat=111&amp;_nc_sid=985c63&amp;efg=eyJ2ZW5jb2RlX3RhZyI6ImxlZ2FjeV9zZCJ9&amp;_nc_ohc=_qxH6s8fXjgAX858Dqc&amp;_nc_ht=video.fasu9-1.fna&amp;oh=7b4d1d950c44904658ec67618835d932&amp;oe=5EA1D4E2\" width=\"600\" height=\"400\"></video></center>\r\n<br>\r\n<h2>Lavado de manos</h2>\r\n<center><video autobuffer=\"true\" x-webkit-airplay=\"allow\" controlslist=\"nodownload\" disablepictureinpicture=\"\" class=\"_2c9v _53mv\" controls=\"\" playinfullscreen=\"false\" src=\"https://video.fasu9-1.fna.fbcdn.net/v/t42.9040-2/93890037_580789759458270_6192387189133803520_n.mp4?_nc_cat=102&amp;_nc_sid=985c63&amp;efg=eyJ2ZW5jb2RlX3RhZyI6ImxlZ2FjeV9zZCJ9&amp;_nc_ohc=fm_MQ2VhvjgAX-I4gBL&amp;_nc_ht=video.fasu9-1.fna&amp;oh=73f8ba771002319236cdb27c64ee97dd&amp;oe=5EA1D3DE\" width=\"600\" height=\"400\"></video></center>\r\n-->','2020-04-23','https://m.facebook.com/217403471768463/videos/156190139152938/?refsrc=https%3A%2F%2Fm.facebook.com%2Fstory.php&_rdr','publicado'),(9,'COMUNICACIÓN - COVID19','<div class=\"embed-responsive embed-responsive-21by9\">\r\n  <iframe class=\"embed-responsive-item\" src=\"https://www.mspbs.gov.py/comunicacion-covid19.html\"></iframe>\r\n</div>','2020-05-08','https://www.mspbs.gov.py/comunicacion-covid19.html','publicado'),(10,'Datos del MSPBS','<div class=\"embed-responsive embed-responsive-21by9\">\r\n  <iframe class=\"embed-responsive-item\" src=\"https://www.mspbs.gov.py/covid-19.php\"></iframe>\r\n</div>','2020-06-29','https://www.mspbs.gov.py/covid-19.php','publicado');
/*!40000 ALTER TABLE `covid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id_noticias` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) DEFAULT NULL,
  `id_sede` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `texto` longtext,
  `enlace` longtext,
  `fecha_publicacion` date DEFAULT NULL,
  `estado` enum('publicado','pendiente','anulado') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_noticias`),
  KEY `FK_SEDE` (`id_sede`),
  KEY `FK_CATEGORIA` (`id_categoria`),
  KEY `FK_USER` (`id_user`),
  CONSTRAINT `fk_cat` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sed` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id_sede`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_use` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,7,42,'Firma de Convenio con la Municipalidad de Fernando de la Mora','upload/81711209_1259001307623479_1724671029973876736_o.jpg','En la maÃ±ana de hoy, miÃ©rcoles 8 de enero en la Municipalidad de Fernando de la Mora se llevÃ³ a cabo la firma de convenio entre la UTIC, representada por el Prof. Dr. Hugo Ferreira GonzÃ¡lez, Rector; y la Municipalidad de la ciudad de Fernando de la Mora, representada por el Lic. Alcides Riveros, Intendente Municipal. El convenio fue realizado con el fin de contribuir al mejoramiento cultural, econÃ³mico y social de los miembros de la comunidad Fernandina, propiciando y fortaleciendo emprendimientos, programas y proyectos educativos. A travÃ©s de la misma, la UTIC otorgarÃ¡ mÃ¡s de 100 beneficios a estudiantes, a ser otorgados a ciudadanos residentes de la ciudad de Fernando de la Mora, de escasos recursos econÃ³micos y con buen rendimiento acadÃ©mico, quienes serÃ¡n seleccionados por la SecretarÃ­a de la Juventud. AdemÃ¡s, la Municipalidad podrÃ¡ admitir a los estudiantes de la UTIC en calidad de pasantes, de acuerdo a la disponibilidad de vacancias y atendiendo al rendimiento acadÃ©mico de los postulantes. Estuvieron presentes ademÃ¡s la Lic. Diana Riveros, Directora de Desarrollo Social Comunitario; el Abog. Celso NÃºÃ±ez, Secretario General de la Municipalidad; y el Abg. Ryan Ferreira, Director de la UTIC Sede Fernando de la Mora.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1259001267623483&__xts__%5B0%5D=68.ARA4enTitJ8OHerXAl8eeRrqXURJ3_JTPG98-K4lZk5c1T-b0wpJLmwydGpBevYv1ysm8zVZDH2SNIB1tnNrF6K05siJ2NMuiI1sQteSb0TChoGjzndtSE4rg6pD2s7QiVI4nZUH7Q7eLRnm5CDVjeO_8HPv-n5RUXyNl9Edw0hA0FRWsLtfr9CPWA3M57NE_9KPhCtpXb8VJ3Kb9Fr9ivfV0Xawd1jRUVnJIo7Aj0F0apClJG241NNS3osZ_ZhVsYkdf-f0H5dj0N8F2hb9wajpfK_hij5AKzlJSNaqfYHqDtzZdNkAwJ7M8BTCogpQIF2LwPjTYk56ol-BeequE12a3CCsZiThtz8h1O5DNdruw-BqjnEmKiP0rYitm-rXqq2bG1GHKnmpE-tlOJRRqzPINAMQTbFqJQt0CSu8GyOjiRWwelofHgteMmRBY9r3C4N8xCC1VEkdbwge1NYv&__xts__%5B1%5D=68.ARCnj2oLnKHjvKrD3c5iZnOgUtuPNZD27j9hU-bQJI8dRC2q38BbUQAs6LXTb5ibPwGszhcrTghSQFS4OVrXwRwdaDMHvzL1aJ97xuxA1tSVMFTsNQtICx5wBfdDhUZ-gvqldYWF5FApDDPngHYkhoh89ImJmC4qDiSxcBBefmuNjkE9WmI4zStfSzkHf6lxHW_R2x7Usa7ohZyCNSWBHKZjpWIMzgeUB3vb25TRcUo0NMiHXumD5ShRaIOuVu1aiD9RbCWI8E3d63qZhH95fJAgYBdJjOb6Fa-16UohMaLRGA_-V9jkqWgWDMB-PfHVn6BW7FJlSl0SFPFCHwQDNqCaPUGujhX6GLGSklIkWIbYYExxMXXC9U_Y5fyQplevvRSO53rqWy0HbUP1cXzkRBexRm52MUC3Fpq35KLcqJMyRMze6GauMnBC8HF5Wm9lvpve6VVd8FJ7SwDCDuYw&__tn__=-UC-R','2020-01-08','anulado',3),(2,6,42,'PsicologÃ­a UPD','upload/85042609_1286661061524170_6780655536678371328_o.jpg','En la noche de hoy, lunes 10 de febrero en la UTIC Sede Fernando de la Mora se llevÃ³ a cabo el festejo del \"Ãšltimo Primer DÃ­a\" de los estudiantes del Ãºltimo aÃ±o de la carrera de Licenciatura en PsicologÃ­a con la materia \"PsicopatologÃ­a I\" a cargo de la Prof. Lic. Sicilia GonzÃ¡lez, docente. Estuvieron presentes el Prof Abg. Ryan Ferreira, Director de la Sede; asÃ­ como docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1286659618190981&__tn__=-UC-R','2020-02-10','anulado',3),(3,4,42,'Charla Tributaria Informativa','upload/87026857_1294393687417574_9124720872903409664_o.jpg','En la tarde de ayer, miÃ©rcoles 19 de febrero en el Centro de Actividades \"Maestra Arsenia GonzÃ¡lez de Ferreira\" de la UTIC Sede Fernando de la Mora, se llevÃ³ a cabo la Charla Tributaria Informativa sobre \"Reforma tributaria y sus implicancias para contribuyentes de servicios personales y MIPYMES\", a cargo del C.P. Adolfo RodrÃ­guez. ParticipÃ³ en la misma el Prof. Abg. Ryan Ferreira, Director de Sede; la Prof. Lic. Victoria Castiglioni, Coordinadora de la carrera de Ciencias Contables; la Prof. Lic. Marlene Maciel, Coordinadora de la carrera de Ciencias Administrativas; el Mg. Depilar Aquino, Presidente del Consejo de AdministraciÃ³n de la Coomutic LTDA; la Sra. RocÃ­o LÃ³pez, Coordinadora de Bienestar Institucional, asÃ­ como docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1294392170751059&__tn__=-UC-R','2020-02-19','anulado',3),(4,1,42,'ConmemoraciÃ³n al DÃ­a de la Mujer Paraguaya','upload/87983833_1298157460374530_5713149575695433728_o.jpg','El dÃ­a de hoy, lunes 24 de febrero, los funcionarios de la UTIC Sede Fernando de la Mora han llevado a cabo un homenaje especial a las mujeres, otorgando un presente en su dÃ­a.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1297623983761211&__tn__=-UC-R','2020-03-06','anulado',3),(5,1,42,'Apertura del Consultorio JurÃ­dico Gratuito','upload/89229213_1303582226498720_1243052720458301440_o.jpg','En la noche de ayer, lunes 02 de marzo en la Biblioteca del Bicentenario de la UTIC Sede Fernando de la Mora se llevÃ³ a cabo la apertura oficial de las actividades del Consultorio JurÃ­dico Gratuito. Dio apertura a la actividad la Abg. Cecilia PÃ©rez, Ministra de Justicia. La misma contÃ³ con la participaciÃ³n de la Dra. Lys Genes, Directora de Carrera; del Abg. Ryan Ferreira, Director de Sede; la Lic. Shirley Gabriaguez, Coordinadora AcadÃ©mica; el Abg. Oscar BenÃ­tez, Coordinador de la carrera de Derecho de la sede; la Abg. Synthia Chamorro, Tutora del Consultorio JurÃ­dico Gratuito; asÃ­ como docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1303576909832585&__tn__=-UC-R','2020-03-02','anulado',3),(6,7,42,'Firma de Convenios de CooperaciÃ³n Interistitucional','upload/89246256_1303847513138858_6466846942356832256_o.jpg','El dÃ­a de hoy, martes 03 de marzo en la Biblioteca del Bicentenario de la UTIC Sede Fernando de la Mora, se llevÃ³ a cabo la firma de convenios marco de cooperaciÃ³n interistitucional entre la Universidad TecnolÃ³gica Intercontinental, representada por el Prof. Dr. Hugo Hugo Ferreira GonzÃ¡lez, Rector de la UTIC; y las empresas Super Box S.A., representada por C.P.N. Elvio Ignacio Aguilera MorÃ­nigo; Estudio Contable LV, representada por la Lic. Liz MarÃ­a Villalba; Mundonegocios S.A., representada por la C.P.N. Liliana Leiva; Simcad & CÃ­a., representada por la C.P.N. Perla Martens; y Estudios Contables M&G, representada por la C.P.N. Dolly BenÃ­tez Vera. Participaron en la misma el Prof. Lic. Ãngel Torres, Decano de la Facultad de Ciencias Empresariales; el Abg. Ryan Ferreira, Director de Sede; la Lic. Victoria Castiglioni, Coordinadora de la carrera de Ciencias Contables; asÃ­ como docentes y funcionarios de las instituciones.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1303846819805594&__tn__=-UC-R','2020-03-03','anulado',3),(7,5,42,'Apertura AcadÃ©mica y Conferencia de Responsabilidad Social - Noche','upload/89560141_1305089713014638_2060024786569920512_o.jpg','En la noche de ayer, miÃ©rcoles 04 de marzo en el Centro de Actividades \"Maestra Arsenia GonzÃ¡lez de Ferreira\" de la UTIC Sede Fernando de la Mora, se llevÃ³ a cabo la apertura acadÃ©mica con la conferencia sobre \"Responsabilidad Social y Desarrollo Sustentable frente a los retos del siglo XXI\", a cargo del Prof. Dr. Hugo Ferreira GonzÃ¡lez, Rector. Estuvieron presentes el Dr. Amado VerÃ³n, Vicerrector JurÃ­dico; la Dra. Leticia Aquino, Decana de la Facultad de TecnologÃ­a InformÃ¡tica; el Lic. Ãngel Torres, Decano de la Facultad de Ciencias Empresariales; la Dra. Lys Genes, Directora de la carrera de Derecho; el Ing. Julio MorÃ­nigo, Director de la carrera de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos; el Abg. Ryan Ferreira, Director de sede; la Lic. Shirley Gabriaguez, Coordinadora AcadÃ©mica; la Lic. Marlene Maciel, Coordinadora de la carrera de Ciencias Administrativas; la Lic. Victoria Castiglioni, Coordinadora de la carrera de Ciencias Contables; el Abg. Oscar BenÃ­tez, Coordinador de la carrera de Derecho; RocÃ­o LÃ³pez, Coordinadora de Bienestar Institucional; Liz Paola Peralta, Coordinadora Administrativa; asÃ­ como docentes, estudiantes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1305087543014855&__tn__=-UC-R','2020-03-04','anulado',3),(8,5,42,'Apertura AcadÃ©mica y Conferencia-Responsabilidad Social - MaÃ±ana','upload/87605878_1305271049663171_1426097109853011968_o.jpg','En la maÃ±ana de hoy, jueves 05 de marzo en la Biblioteca del Bicentenario de la UTIC Sede Fernando de la Mora, se llevÃ³ a cabo la apertura acadÃ©mica con la conferencia sobre \"Responsabilidad Social y Desarrollo Sustentable frente a los retos del siglo XXI\", a cargo del Prof. Dr. Hugo Ferreira GonzÃ¡lez, Rector. Estuvieron presentes el Dr. Ricardo BenÃ­tez, Vicerrector de InvestigaciÃ³n CientÃ­fica y TecnolÃ³gica; el Dr. JosÃ© AsunciÃ³n GonzÃ¡lez, Vicerrector PedagÃ³gico; el Lic. RaÃºl Salinas, Vicerrector de VinculaciÃ³n; la Dra. Reinelda Alderete, Decana de la Facultad de Ciencias de la Salud; la Dra. Leticia Aquino, Decana de la Facultad TecnologÃ­a InformÃ¡tica; el Ing. Claudio DÃ­az, Director de la carrera de IngenierÃ­a Comercial; la Lic. Melva GÃ³mez, Directora de la carrera de Licenciatura en PsicologÃ­a; el Abg. Ryan Ferreira, Director de sede; la Lic. Shirley Gabriaguez, Coordinadora AcadÃ©mica; la Lic. Marlene Maciel, Coordinadora de la carrera de Ciencias Administrativas; RocÃ­o LÃ³pez, Coordinadora de Bienestar Institucional; Liz Paola Peralta, Coordinadora Administrativa; estudiantes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/utic.mora.1/photos/?tab=album&album_id=1305270716329871&__tn__=-UC-R','2020-03-05','anulado',3),(9,6,3,'UPD Administracion','upload/84494526_2756961741062551_3702853178904018944_o.jpg','En la noche del miÃ©rcoles 05 de febrero en la UTIC Sede Empresariales y Posgrado de AsunciÃ³n se llevÃ³ a cabo el festejo del \"Ãšltimo Primer DÃ­a\" de los estudiantes del quinto aÃ±o de la carrera de Licenciatura en Ciencias Administrativas e IngenierÃ­a Comercial, quienes iniciaron el mÃ³dulo de \" Marketing I\", a cargo del Prof. Ing. RubÃ©n FernÃ¡ndez, docente. En la misma, la Prof. Lic. Cynthia Mieres Directora de la sede, brindÃ³ unas palabras de felicitaciones y aliento para los futuros profesionales. Â¡Felicitaciones!','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2756961537729238&__tn__=-UC-R','2020-02-05','anulado',3),(10,1,4,'Defensa de los Trabajos de CulminaciÃ³n de Carrera','upload/87034496_2778769735548418_4115862177594736640_n.jpg','En la maÃ±ana del lunes, 09 de diciembre en la UTIC Sede Derecho e InformÃ¡tica de AsunciÃ³n, se llevÃ³ a cabo la defensa de los Trabajos de CulminaciÃ³n de Carrera de los estudiantes de la carrera de Derecho de las sedes de AsunciÃ³n, San Lorenzo, CaaguazÃº y Pedro Juan Caballero. La mesa de defensa estuvo conformada por los doctores Hugo Ferreira GonzÃ¡lez y Amado VerÃ³n Duarte y la MagÃ­ster Teresita SÃ¡nchez. Â¡Felicitaciones a los nuevos profesionales!','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2778769605548431&__tn__=-UC-R','2019-12-09','anulado',3),(11,6,3,'UPD 2020','upload/87063336_2786735364751855_3551864307987775488_o.jpg','En la noche del jueves 20 de febrero en la UTIC Sede Empresariales y Posgrado de AsunciÃ³n se llevÃ³ a cabo el festejo del \"Ãšltimo Primer DÃ­a\" de los estudiantes del quinto aÃ±o de las carreras de Licenciatura en Ciencias Contables, Ciencias Administrativas e IngenierÃ­a Comercial, quienes iniciaron el mÃ³dulo de \"Contabilidad IV - Bancos y Seguros\", a cargo del Prof. Lic. Arnaldo RamÃ³n Uliambre, docente. En la misma, la Lic. Jakheline PavÃ³n, Coordinadora AcadÃ©mica, brindÃ³ unas palabras de felicitaciones y aliento para los futuros profesionales.','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2786731991418859&__tn__=-UC-R','2020-02-20','anulado',3),(12,6,4,'UPD Derecho','upload/87272896_2794187354006656_7895933035915247616_o.jpg','En la noche de hoy, lunes 24 de febrero en la UTIC Sede Derecho e InformÃ¡tica de AsunciÃ³n se llevÃ³ a cabo el festejo del \"Ãšltimo Primer DÃ­a\" de los estudiantes del quinto aÃ±o de la carrera de Derecho, quienes iniciaron el mÃ³dulo de \"TÃ©cnica de litigaciÃ³n 2\", a cargo de la Abg. Mg. MarÃ­a Elena Genes, docente. Participaron de la misma, la Mg. Teresita SÃ¡nchez, Coordinadora de Carrera, asÃ­ como tambiÃ©n el nuevo Director de la sede, el Lic. Osvaldo Acosta, quien brindÃ³ unas palabras de felicitaciones y aliento para los futuros profesionales.','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2794186887340036&__tn__=-UC-R','2020-02-24','anulado',3),(13,1,4,'PresentaciÃ³n de la nueva DirecciÃ³n de sede','upload/87828848_2794198630672195_7870875711379079168_o.jpg','En la noche de hoy, lunes 24 de febrero en la UTIC Sede Derecho e InformÃ¡tica de AsunciÃ³n se llevÃ³ a cabo la presentaciÃ³n de la nueva autoridad, el Lic. Osvaldo Acosta, quien ocupa el cargo de Director de Sede. Estuvieron presentes estudiantes de todas las carreras, autoridades, funcionarios y docentes de la instituciÃ³n.','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2794198297338895&__tn__=-UC-R','2020-02-24','anulado',3),(14,6,3,'PresentaciÃ³n de Proyecto','upload/87422320_2814861228605935_8040565024520929280_o.jpg','En la noche de ayer, miÃ©rcoles 04 de marzo en el SalÃ³n Auditorio de la UTIC sede Empresariales y Postgrado, se llevÃ³ a cabo la PresentaciÃ³n de Trabajos PrÃ¡cticos \"Estructura Organizacional\" de una empresa real o ficticia dentro del marco de la materia AdministraciÃ³n General ,dirigida por la Prof. Lic. Veridiana Jara. La presentaciÃ³n estuvo a cargo de los estudiantes de las carreras de Licenciatura en Ciencias Contables; Licenciatura en Ciencias Administrativas e IngenierÃ­a Comercial. Estuvieron presentes la Lic. Cynthia Mieres, Directora de la sede; la Lic. Jakheline PavÃ³n, Coordinadora AcadÃ©mica; asÃ­ como docentes, estudiantes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/UTICAsuncion/photos/?tab=album&album_id=2814860645272660&__tn__=-UC-R','2020-03-04','anulado',3),(15,6,10,'UD AnÃ¡lisis de Sistemas InformÃ¡ticos','upload/83871797_2442935532635422_2847629318010437632_o.jpg','En la noche de ayer, martes 21 de enero en la UTIC Sede San Lorenzo se llevÃ³ a cabo el festejo del \"Ãšltimo dÃ­a\" de los estudiantes de la carrera de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos, quienes culminaron el mÃ³dulo de \"Taller de AnÃ¡lisis y ProgramaciÃ³n II\", a cargo del Prof. Ing. Charles Cabrera, docente. Estuvieron presentes la Prof. Lic. Liz Rolon, Coordinadora de la carrera; y la Sra. Lucia Colarte, Coordinadora de Bienestar Estudiantil, quienes desearon buenos augurios en el inicio de la etapa de Trabajo de CulminaciÃ³n de Carrera. Â¡Felicitaciones!','https://www.facebook.com/pg/uticsedesanlorenzo/photos/?tab=album&album_id=2442935099302132&__tn__=-UC-R','2020-01-21','anulado',3),(16,4,10,'CapacitaciÃ³n sobre primeros auxilios','upload/87988609_2468913316704310_2843898666467459072_o.jpg','En la noche del viernes, 21 de febrero en la UTIC Sede San Lorenzo, se llevÃ³ acabo la CapacitaciÃ³n sobre Primeros Auxilios con los Bomberos Voluntarios de la SÃ©ptima CompaÃ±Ã­a de San Lorenzo. La capacitaciÃ³n estuvo a cargo del CapitÃ¡n Inspector Gabriel Lird y la BVC. Cristina DÃ­az. Estuvieron presentes la Srta. LucÃ­a Colarte, Coordinadora de Bienestar Institucional; docentes y estudiantes de las carreras de Licenciatura en Ciencias Contables y Ciencias Administrativas.','https://www.facebook.com/pg/uticsedesanlorenzo/photos/?tab=album&album_id=2468912970037678&__tn__=-UC-R','2020-02-21','anulado',3),(17,4,10,'Charla sobre Historia la Triple Alianza y el Tratado de ItaipÃº','upload/88012062_2470569076538734_5260746759008681984_o.jpg','En la noche de ayer, martes 25 de febrero en la UTIC Sede San Lorenzo se llevÃ³ acabo la Charla sobre la Historia de la Triple Alianza y el Tratado de ItaipÃº. La disertaciÃ³n estuvo a cargo del Dr. Timoteo GonzÃ¡lez GalvÃ¡n y el senador Miguel Fulgencio RodrÃ­guez. Estuvieron presentes la Srta. LucÃ­a Colarte, Coordinadora de Bienestar Institucional; el coordinado de la carrera el Abg. Pedro AcuÃ±a; docentes y estudiantes de la UTIC.','https://www.facebook.com/pg/uticsedesanlorenzo/photos/?tab=album&album_id=2470569036538738&__tn__=-UC-R','2020-02-25','anulado',3),(18,5,20,'Sesquicentenario de la Guerra contra la Triple Alianza','upload/87360370_2564285867127812_5164242262661529600_o.jpg','El dÃ­a lunes, 02 de marzo en la UTIC Sede Ã‘emby, se llevÃ³ a cabo la Conferencia Magistral sobre el \"Sesquicentenario de la Guerra contra la Triple Alianza\" a cargo del Dr. Erasmo GonzÃ¡lez. AdemÃ¡s se realizÃ³ el lanzamiento del Club de Lectura para los estudiantes del primer aÃ±o de Licenciatura en Ciencias Contables, Licenciatura en Ciencias Administrativas e Ing Comercial, como proyecto dentro de la asignatura de MetodologÃ­a del Trabajo Intelectual. Participaron de la actividad la Prof. Ing. Diana FernÃ¡ndez, Directora de Sede; la Esp. Vanina Heredia, Coordinadora AcadÃ©mica, docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/UTIC-%C3%91emby-1608392969383778/photos/?tab=album&album_id=2564285780461154&__tn__=-UC-R','2020-03-02','anulado',3),(19,4,20,'Conversatorio sobre la Reforma Tributaria','upload/87454590_2565986913624374_952535055178137600_o.jpg','En dÃ­a de ayer, miÃ©rcoles 4 de marzo en la UTIC sede Ã‘emby se llevo a cabo el Conversatorio sobre la Reforma Tributaria, a cargo de la Esp. Carmen Cantero, Asesora Tributaria del Digesto del Poder Legislativo. Cabe destacar que la Especialista Carmen Cantero es egresada de la Carrera Ciencias Contables de la Sede Ã‘emby. Participaron de la misma la Ing Diana FernÃ¡ndez, Directora de sede; asÃ­ como Docente y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/UTIC-%C3%91emby-1608392969383778/photos/?tab=album&album_id=2565986886957710&__tn__=-UC-R','2020-03-04','anulado',3),(20,1,9,'Donaciones por parte de la familia Paredes','upload/84192699_2200784540224784_535493494513336320_o.jpg','En la tarde de hoy, martes 28 de enero la UTIC Luque recibiÃ³ donaciones por parte de la familia Paredes, libros para aumentar el acervo bibliogrÃ¡fico de la sede.\r\n\r\nAgradecemos a la familia Paredes por la donaciÃ³n que han realizado.','https://www.facebook.com/utic.sedeluque/photos/a.1435073656795880/2200784536891451/?type=3&theater','2020-01-28','anulado',3),(21,6,9,'Apertura AcadÃ©mica Luque 2020','upload/89154307_2224614964508408_6924535759978364928_o.jpg','El dÃ­a de ayer, lunes 02 de marzo en la UTIC Sede Luque se llevÃ³ a cabo la apertura acadÃ©mica para los estudiantes del primer aÃ±o de las distintas carreras. Estuvo presente la Ing. Cinthia Molinas; Coordinadora de Bienestar Institucional; asÃ­ como docentes, funcionarios y estudiantes de la instituciÃ³n. Â¡Ã‰xitos a los nuevos estudiantes!','https://www.facebook.com/pg/utic.sedeluque/photos/?tab=album&album_id=2224614494508455&__tn__=-UC-R','2020-03-02','anulado',3),(22,6,9,'Visita guiada a la DirecciÃ³n Nacional del Centro de CapacitaciÃ³n','upload/89309860_2226350521001519_458046923404738560_o.jpg','El dÃ­a de ayer, jueves 05 de marzo se llevÃ³ a cabo una visita guiada a la DirecciÃ³n Nacional del Centro de CapacitaciÃ³n, por los estudiantes de las carreras de Licenciatura en Ciencias Administrativas, Licenciatura en Ciencias Contables y Derecho, como parte de las actividades de extensiÃ³n universitaria. Estuvieron acompaÃ±ados por el Lic. Leonardo Ramos, Director de la sede; la Ing. Cinthia Molinas, Coordinadora de Bienestar Institucional; el Prof. Abg. MatÃ­as Vera, docente y los estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.sedeluque/photos/?tab=album&album_id=2226346904335214&__tn__=-UC-R','2020-03-05','anulado',3),(23,6,36,'Minga Ambiental en la sede CapiatÃ¡.','upload/83599905_2516968208574114_3658908886007545856_o.jpg','El dÃ­a viernes, 17 de enero los estudiantes de la carrera de Licenciatura en EnfermerÃ­a y funcionarios de la UTIC Sede CapiatÃ¡ participaron de la Minga Ambiental realizando bÃºsqueda activa de posibles criaderos y las actividades de limpieza con el objetivo de eliminar los criaderos de los vectores transmisores del dengue, zika y chikungunya.','https://www.facebook.com/pg/uticsedecapiata/photos/?tab=album&album_id=2516968008574134&__tn__=-UC-R','2020-01-17','anulado',3),(24,7,36,'Firma de Convenio con la Municipalidad de CapiatÃ¡','upload/83722041_2522960617974873_6312252665438928896_o.jpg','El dÃ­a de hoy, viernes 31 de enero en de la UTIC Sede CapiatÃ¡ se llevÃ³ a cabo la firma de convenio marco de cooperaciÃ³n interistitucional entre la Universidad TecnolÃ³gica Intercontinental y la Municipalidad de la ciudad de CapiatÃ¡. Los representantes que firmaron el convenio fueron el Prof. Dr. Hugo Hugo Ferreira GonzÃ¡lez, Rector de la UTIC y la Lic. Castorina Chamorro, Directora de Cultura Municipalidad de CapiatÃ¡. Participaron la Prof. Ing. Carolina RolÃ³n, Directora de Sede; la Abg. Synthia Chamorro, Tutora del Consultorio JurÃ­dico; la Lic. Margarita Rachith; docentes y funcionarios de la instituciones','https://www.facebook.com/pg/uticsedecapiata/photos/?tab=album&album_id=2522960431308225&__tn__=-UC-R','2020-01-31','anulado',3),(25,6,36,'UD EnfermerÃ­a','upload/83955140_2525765987694336_7658201369106448384_o.jpg','El dÃ­a de ayer, lunes 03 de febrero en la UTIC Sede CapiatÃ¡, se llevÃ³ a cabo el festejo por el UD de los estudiantes de la carrera de la Licenciatura en EnfermerÃ­a, quienes culminaron el mÃ³dulo de â€œInvestigaciÃ³n en EnfermerÃ­aâ€ a cargo de la Mg. Magdalena RodrÃ­guez, docente. Estuvieron presentes la Prof. Ing. Carolina RolÃ³n, Directora de Sede; el Prof. Lic. Diego Medina, Coordinador de la carrera; asÃ­ como docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/uticsedecapiata/photos/?tab=album&album_id=2525763847694550&__tn__=-UC-R','2020-02-03','anulado',3),(26,6,36,'ConmemoraciÃ³n al DÃ­a Mundial de Lucha contra el CÃ¡ncer Infantil','upload/87045745_2540160772921524_4807647620749066240_o.jpg','El dÃ­a de ayer, 20 de febrero en el Instituto Nacional del CÃ¡ncer - â€œINCANâ€, los estudiantes de la UTIC Sede CapiatÃ¡ del segundo aÃ±o del turno noche de la carrera de Licenciatura en EnfermerÃ­a, realizaron una extensiÃ³n universitaria en ConmemoraciÃ³n al DÃ­a Mundial de Lucha contra el CÃ¡ncer Infantil, visitaron y compartieron con los pacientes internados llevando frutas y golosinas. TambiÃ©n brindaron al albergue de â€œNiÃ±os Emilyâ€ y al albergue de adultos, prendas de vestir, frutas, golosinas ademÃ¡s de compartir un momento de Zumba con pacientes y familiares.','https://www.facebook.com/pg/uticsedecapiata/photos/?tab=album&album_id=2540160579588210&__tn__=-UC-R','2020-03-20','anulado',3),(27,1,36,'CampaÃ±a ConcientizaciÃ³n ListÃ³n Verde','upload/89518477_2550827431854858_403462265644253184_n.jpg','El dÃ­a de ayer, miÃ©rcoles 04 de marzo en la UTIC sede CapiatÃ¡ se llevo a cabo la â€œCampaÃ±a de ConcientizaciÃ³n ListÃ³n Verdeâ€ en donde se realizÃ³ la entrega de listones verdes a los estudiantes y al pÃºblico en general como parte de la CampaÃ±a contra el Maltrato, Abuso Sexual y Laboral de NiÃ±os, niÃ±as y Adolescentes del Paraguay. En la misma participo la Ing. Carolina RolÃ³n, Directora de sede asÃ­ como docentes, estudiantes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/uticsedecapiata/photos/?tab=album&album_id=2550826395188295&__tn__=-UC-R','2020-03-04','anulado',3),(28,6,14,'Minga Ambiental en las ciudades de CaacupÃ© y Eusebio Ayala','upload/84357145_2643497715740552_6946341081306890240_n.jpg','El dÃ­a lunes, 20 de enero, los estudiantes de la carrera de Licenciatura en EnfermerÃ­a de la UTIC Sede CaacupÃ© participaron de la Minga Ambiental. Se realizaron las actividades de limpieza con el objetivo de eliminar los criaderos de los vectores transmisores del dengue, zika y chikungunya','https://www.facebook.com/pg/UTICCaacupe/photos/?tab=album&album_id=2643497042407286&__tn__=-UC-R','2020-01-20','anulado',3),(29,6,14,'PrÃ¡cticas en el Centro Nacional del Quemado','upload/88174041_2726680460755610_8130913986624356352_o.jpg','En la semana del 24 de febrero al 10 de marzo los estudiantes del cuarto aÃ±o de la carrera de Licenciatura en EnfermerÃ­a de la UTIC Sede CaacupÃ© realizaron sus prÃ¡cticas de la carrera correspondientes al mÃ³dulo \"EnfermerÃ­a del Quemado\" en el Centro Nacional del Quemado y CirugÃ­as Reconstructivas, a cargo del Lic. Rodolfo Fleita, instructor.','https://www.facebook.com/pg/UTICCaacupe/photos/?tab=album&album_id=2726680164088973&__tn__=-UC-R','2020-02-24','anulado',3),(30,6,7,'UPD Empresariales','upload/84291806_2230139300621565_7953067972241653760_o.jpg','En la noche del lunes, 03 de febrero en la UTIC Sede ConcepciÃ³n, se llevÃ³ a cabo el festejo del Ãºltimo primer dÃ­a - UPD de los estudiantes de las carreras de Licenciatura en Ciencias Administrativas, Licenciatura en Ciencias Contables y e IngenierÃ­a Comercial. Estuvieron presentes el Prof. Mg. Roque Ariel GonzÃ¡lez, Director de Sede; el Prof. Lic. Oscar Caballero, Coordinador de CIRE; la Prof. Mg. Gloria OrtÃ­z, docente y los estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.concepcion/photos/?tab=album&album_id=2230139113954917','2020-02-03','publicado',3),(31,6,7,'UPD Ciencias de la EducaciÃ³n','upload/86352144_2233763860259109_7789417417477718016_o.jpg','En la maÃ±ana del sÃ¡bado, 08 de febrero en la UTIC Sede ConcepciÃ³n, se llevo a cabo el festejo por el Ãºltimo primer dÃ­a - UPD de los estudiantes de la carrera de Licenciatura en Ciencias de la EducaciÃ³n. Estuvieron presentes el Prof. Mg. Roque Ariel GonzÃ¡lez, Director de Sede; el Lic. Oscar Caballero, Coordinador del CIRE; el Prof. Sacerdote Alcides Negrete, docente y los estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.concepcion/photos/?tab=album&album_id=2233763736925788&__tn__=-UC-R','2020-02-08','publicado',3),(32,6,7,'DÃ­a del TererÃ©','upload/89250621_2248867892082039_667741129604595712_n.jpg','En la maÃ±ana del sÃ¡bado, 29 de febrero en la UTIC Sede ConcepciÃ³n, se llevo a cabo un destaque y un compartir especial por el dÃ­a de nuestra bebida tradicional \"El TererÃ©\". La actividad fue llevada a cabo en conjunto con los estudiantes de la carrera de Licenciatura en Ciencias de la EducaciÃ³n. Estuvieron presentes el Prof. Mg. Roque Ariel GonzÃ¡lez; Director de Sede; el Lic. Oscar Caballero, Coordinador del CIRE; el Prof. Sacerdote Alcides Negrete; la Prof. Lic. Lourdes Colman, docentes y los estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.concepcion/photos/?tab=album&album_id=2248867628748732&__tn__=-UC-R','2020-02-29','publicado',3),(33,6,7,'Apertura acadÃ©mica 2020','upload/88014304_2250309145271247_7372101030445580288_n.jpg','Apertura acadÃ©mica 2020 En la noche de lunes, 02 de marzo en la UTIC Sede ConcepciÃ³n, se llevÃ³ a cabo la apertura acadÃ©mica para los estudiantes del primer aÃ±o de las carreras de Licenciatura en Ciencias Administrativas, Licenciatura en Ciencias Contables, IngenierÃ­a Comercial y Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos. Estuvieron presentes el Prof. Mg. Roque Ariel GonzÃ¡lez, Director de Sede; el Lic. Oscar Caballero, Coordinador del CIRE; el Ing. NÃ©stor GonzÃ¡lez, Coordinador administrativo; la Prof. Lic. Alcira EchagÃ¼e de Ocampos, docentes y los estudiantes de la InstituciÃ³n. Â¡Ã‰xitos a los nuevos estudiantes!','https://www.facebook.com/pg/utic.concepcion/photos/?tab=album&album_id=2250309041937924&__tn__=-UC-R','2020-03-02','publicado',3),(34,6,18,'Simulacro de Juicio Oral y PÃºblico','upload/86842015_1544249035699549_34194180263641088_o.jpg','El dÃ­a de ayer, lunes 17 de febrero en el SalÃ³n Auditorio de la UTIC Sede Horqueta, los estudiantes del Ãºltimo aÃ±o de la carrera de Derecho realizaron un simulacro de Juicio Oral y PÃºblico como parte del examen final de la asignatura de â€œTÃ©cnica de LitigaciÃ³n IIâ€ a cargo de la Prof. Dra. Mariza Miguela Meza, docente. Asistieron los estudiantes de los distintos cursos de la carrera de Derecho asÃ­ como docentes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/utic.horqueta/photos/?tab=album&album_id=1544248945699558&__tn__=-UC-R','2020-02-17','publicado',3),(35,6,18,'Visitan Hospital de Horqueta','upload/88295566_1566829876774798_7806553164462686208_o.jpg','El dÃ­a lunes 24 de febrero, los estudiantes del cuarto aÃ±o de la carrera de EnfermerÃ­a de la UTIC Sede Horqueta, llevaron a cabo una actividad en el marco de la Ãºltima prÃ¡ctica del mÃ³dulo \"AdministraciÃ³n Hospitalaria\". Dentro del marco de la actividad realizaron mejoras en la sala de RecuperaciÃ³n del servicio de Urgencias del Hospital Distrital de Horqueta con acompaÃ±amiento de su instructora la Prof. Lic. Sonia Barreto. La actividad se realizÃ³ en coordinaciÃ³n con el Director del Hospital.','https://www.facebook.com/pg/utic.horqueta/photos/?tab=album&album_id=1566829783441474&__tn__=-UC-R','2020-02-24','publicado',3),(36,1,18,'Donaciones y limpieza en el Hospital de Horqueta','upload/88028345_1566836356774150_46533376491913216_o.jpg','En la tarde del martes 25 de febrero, los estudiantes del cuarto aÃ±o de la carrera de IngenierÃ­a Comercial realizaron una actividad en el marco del desarrollo de la asignatura \"Proyectos Sociales\" a cargo de la docente Prof. Lic. Alicia LÃ³pez en la que visitaron el Hospital Distrital de Horqueta llevÃ¡ndose a cabo una donaciÃ³n de basureros para el hospital, plantaciÃ³n de Ã¡rboles nativos en el patio y actividades de limpieza del predio. Esta actividad fue realizada por los estudiantes de la sede atendiendo la importancia de llevar a cabo proyectos que colaboren con aquellas instituciones que brindan servicios de importancia para la comunidad como lo es el Ã¡mbito de la salud.','https://www.facebook.com/pg/utic.horqueta/photos/?tab=album&album_id=1566835353440917&__tn__=-UC-R','2020-02-25','publicado',3),(37,6,18,'PresentaciÃ³n en â€œExpresiÃ³n Musical IIâ€','upload/89255957_1577507695707016_6000363857074192384_o.jpg','El dÃ­a sÃ¡bado, 29 de febrero los estudiantes de la carrera de Licenciatura en EducaciÃ³n Parvularia de la UTIC Sede Hernandarias, realizaron una presentaciÃ³n en el mÃ³dulo de ExpresiÃ³n Musical II, con la Lic. Maura Arzamendia, docente. Estuvieron presentes la Lic. Erika GimÃ©nez, Coordinadora AcadÃ©mica y la Sra. Dalia Pamela Caballero, Coordinadora de Bienestar Ins','https://www.facebook.com/pg/utic.horqueta/photos/?tab=album&album_id=1577507535707032&__tn__=-UC-R','2020-02-29','publicado',3),(38,6,18,'Â¡Me integrÃ©! Ya soy de la UTIC','upload/89352575_1582609128530206_6538261360747216896_o.jpg','El dÃ­a miÃ©rcoles, 4 de marzo en la UTIC Sede Horqueta se llevÃ³ a cabo el proyecto \"Me integrÃ©...Ya soy de la UTIC\" como bienvenida a los estudiantes del primer aÃ±o de las carreras de Ciencias Contables, Ciencias Administrativas, IngenierÃ­a Comercial, Derecho, PsicologÃ­a, Licenciatura en Ciencias de la EducaciÃ³n y EnfermerÃ­a. El proyecto consistiÃ³ en actividades de integraciÃ³n, juegos de confraternidad, entrega de obsequios, entre otros. Estuvo a cargo de los delegados de cursos de las distintas carreras en conjunto con la CoordinaciÃ³n de Bienestar institucional y la DirecciÃ³n de Sede.','https://www.facebook.com/pg/utic.horqueta/photos/?tab=album&album_id=1582609088530210&__tn__=-UC-R','2020-03-04','publicado',3),(39,6,8,'Minga Ambiental con la Segunda RegiÃ³n Sanitaria','upload/83651380_2743864459022469_5028712344843190272_o.jpg','El dÃ­a de hoy, viernes 24 de enero los estudiantes del segundo aÃ±o de la carrera de Licenciatura en EnfermerÃ­a de la UTIC Sede San Pedro del YcuamandyyÃº participaron de la Minga Ambiental en cooperaciÃ³n con la Segunda RegiÃ³n Sanitaria y con los funcionarios de SENEPA, USF Antequera, con el objetivo de eliminar los criaderos de los vectores transmisores del dengue, zika y chikungunya. AcompaÃ±aron la actividad el Dr. Ricardo Brassel, Director de la Segunda regiÃ³n Sanitaria; y la Prof. Lic. Sonia Sanabria, docente.','https://www.facebook.com/pg/UTICSanPedro/photos/?tab=album&album_id=2743864119022503&__tn__=-UC-R','2020-01-24','publicado',3),(40,6,8,'CapacitaciÃ³n del uso de Plataformas Virtuales','upload/87980176_2810923338983247_2046184387602546688_o.jpg','El dÃ­a de ayer, martes 25 de febrero en la UTIC Sede UTIC San Pedro del YcuamandyyÃº, los estudiantes de Licenciatura en EnfermerÃ­a participaron en la CapacitaciÃ³n del Uso de Plataformas Virtuales a cargo del Sr. Marcos Ãlvarez, Director del Centro de InformaciÃ³n y Recursos Educativos (CIRE). ParticipÃ³ en la misma la Prof. Lic. Claudelina Encina, Directora de Sede; asÃ­ como docentes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/UTICSanPedro/photos/?tab=album&album_id=2810923242316590&__tn__=-UC-R','2020-02-25','publicado',3),(41,1,8,'Convocatoria Marzo 2020 UTIC Sede San Pedro del YcuamandyyÃº','upload/88971219_2815879335154314_2805169799603159040_o.jpg','El dÃ­a jueves 27 y viernes 28 de febrero la UTIC Sede San Pedro del YcuamandyyÃº, realizÃ³ visitas a comercios, radios e instituciones pÃºblicas de la zona ofreciendo informaciÃ³n acerca de las carreras para la convocatoria 2020. Estuvo acompaÃ±ando la actividad el Prof. Lic. Vicente Mareco, Director de Marketing y Protocolo; el Prof. Lic. Lautaro Ruiz DÃ­az, Coordinador de Marketing; la Prof. Lic. Claudelina Encina, Directora de Sede; asÃ­ como funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/UTICSanPedro/photos/?tab=album&album_id=2815874625154785&__tn__=-UC-R','2020-02-28','publicado',3),(42,6,8,'Minga Ambiental â€œLibre de Dengueâ€','upload/88110962_2825951487480432_1062641579807735808_o.jpg','El dÃ­a de hoy, miÃ©rcoles 04 de marzo la UTIC Sede San Pedro del YcuamandyyÃº participÃ³ de la Minga Ambiental â€œLibre de Dengueâ€, organizada por la Municipalidad de la ciudad, la GobernaciÃ³n, la segunda RegiÃ³n Sanitaria y SENEPA. Participaron los estudiantes de la carrera de Licenciatura en EnfermerÃ­a en compaÃ±Ã­a de la Lic. Damacia GonzÃ¡lez, integrante de ComitÃ© de Calidad de la sede.','https://www.facebook.com/pg/UTICSanPedro/photos/?tab=album&album_id=2825951404147107&__tn__=-UC-R','2020-03-04','publicado',3),(43,6,22,'Marketing Operativo','upload/81038015_2542138756069956_1801765873325703168_o.jpg','El dÃ­a viernes, 27 de diciembre en la UTIC Sede Santa Rosa del Aguaray, se llevÃ³ a cabo la presentaciÃ³n del trabajo de culminaciÃ³n del mÃ³dulo de Marketing Operativo. Estuvieron presentes el Prof. Lic. Cesar ColmÃ¡n, la Ing. Vidalia Pelissier; auxiliar acadÃ©mica y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2542138609403304&__tn__=-UC-R','2020-01-27','publicado',3),(44,1,22,'CampaÃ±a contra el Dengue','upload/83421763_2559937154290116_1916572664135155712_o.jpg','En la maÃ±ana de hoy, martes 21 de Enero los estudiantes de la UTIC sede Santa Rosa de la carrera en Licenciatura Ciencias de la EducaciÃ³n, realizaron una minga ambiental y una campaÃ±a de informaciÃ³n sobre la necesidad de eliminar los posibles criaderos de mosquitos. Participaron de la actividad el Director de la Sede Prof. Lic. Cesar Macedo, los Estudiantes y Funcionarios de la UTIC.','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2559937027623462&__tn__=-UC-R','2020-01-21','publicado',3),(45,6,22,'Entrega de los trabajo de Apoyo Administrativo','upload/83832172_2567356816881483_3489018954943299584_o.jpg','En la maÃ±ana de ayer, miÃ©rcoles 29 de enero los estudiantes del tercer aÃ±o de la Carrera de Licenciatura en Ciencias Administrativas de la UTIC sede Santa Rosa del Aguaray, realizaron la entrega de los trabajo de Apoyo Administrativo a cuatro empresas de la ciudad como parte del mÃ³dulo de â€œPrÃ¡ctica 1â€.','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2567356756881489&__tn__=-UC-R','2020-01-29','publicado',3),(46,6,22,'UPD Ciencias Contables y Ciencias Administrativas','upload/84164537_2588443834772781_4973693547493457920_n.jpg','El pasado lunes, 17 de febrero en la UTIC Sede Santa Rosa del Aguaray, se llevÃ³ a cabo un brindis por el Ãšltimo primer dÃ­a - UPD de los estudiantes del quinto aÃ±o de las carreras de Ciencias Contables y Ciencias Administrativas.','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2588443408106157&__tn__=-UC-R','2020-03-06','publicado',3),(47,1,22,'15 aÃ±os de la primera promociÃ³n de egresados de Lic. en Ciencias','upload/87316653_2588446101439221_2856055013053038592_n.jpg','El dÃ­a de ayer domingo, 23 de febrero, se llevÃ³ a cabo el festejo por los 15 aÃ±os de la primera promociÃ³n de egresados de la carrera de Licenciatura en Ciencias de la EducaciÃ³n de la UTIC Sede Santa Rosa del Aguaray. Los egresados compartieron un encuentro donde conmemoraron la entrega de tÃ­tulos que marcÃ³ un hito en la historia de la EducaciÃ³n Superior de la ciudad. Estuvieron presentes el Prof. Lic. Cesar Macedo, Director de la sede; docentes y los egresados de la primera promociÃ³n','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2588446028105895&__tn__=-UC-R','2020-02-23','publicado',3),(48,1,19,'Defensa de los Trabajos de CulminaciÃ³n de Carrera','upload/80421769_1237489489769214_8940332137270214656_o.jpg','El dÃ­a de hoy, 23 de diciembre en la UTIC Sede EncarnaciÃ³n, se llevÃ³ a cabo la defensa de los Trabajos de CulminaciÃ³n de Carrera de los estudiantes de la carrera de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos e IngenierÃ­a en Sistemas InformÃ¡ticos de las Sedes EncarnaciÃ³n y Hernandarias. La mesa estuvo conformado por el Prof. Dr. Hugo Ferreira, el Prof. Lic. Daniel Ferreira, el Prof. Lic. Julio MorÃ­nigo. Â¡Felicitaciones!','https://www.facebook.com/pg/utic.sedeencarnacion/photos/?tab=album&album_id=1237489329769230&__tn__=-UC-R','2019-12-23','publicado',3),(49,6,30,'Manejo de Residuos Hospitalarios e Higiene Hospitalaria','upload/86282795_2731283390242783_8303794000905633792_o.jpg','El dÃ­a jueves 06 de febrero, estudiantes de la carrera de Licenciatura en EnfermerÃ­a de la UTIC Sede MarÃ­a Auxiliadora dentro de la asignatura â€œSaneamiento Ambientalâ€ se realizÃ³ la actividad de Desarrollo Comunitario: SimulaciÃ³n sobre \"Manejo de Residuos Hospitalarios e Higiene Hospitalariaâ€, dirigido a profesionales y personal de limpieza del Hospital Distrital, de la ciudad de MarÃ­a Auxiliadora.','https://www.facebook.com/pg/uticmariaauxiliadora.itapua/photos/?tab=album&album_id=2731283280242794&__tn__=-UC-R','2020-02-06','publicado',3),(50,6,30,'La educaciÃ³n de la familia en la bÃºsqueda de criaderos de vectore','upload/86282795_2731283390242783_8303794000905633792_o.jpg','El dÃ­a sÃ¡bado, 29 de febrero en el Barrio Virgen de FÃ¡tima de la Ciudad de MarÃ­a Auxiliadora, se llevÃ³ a cabo la ejecuciÃ³n del Proyecto \"La educaciÃ³n de la familia en la bÃºsqueda activa de criaderos de vectores\" en donde participaron estudiantes de la UTIC Sede MarÃ­a Auxiliadora, asÃ­ como docentes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/uticmariaauxiliadora.itapua/photos/?tab=album&album_id=2776461739058281&__tn__=-UC-R','2020-02-29','publicado',3),(51,6,17,'UD de la carrera de PsicologÃ­a','upload/81886772_2827317207319931_8815257239297196032_n.jpg','El dÃ­a viernes, 27 de diciembre en la UTIC Sede Coronel Oviedo, se llevÃ³ a cabo el festejo de UD por las estudiantes de la carrera de Licenciatura en PsicologÃ­a. Estuvieron presentes la Prof. Lic. Rosana Franco; Directora de la Sede y las estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2827317140653271&__tn__=-UC-R','2019-12-27','publicado',3),(52,6,17,'UD IngenierÃ­a Comercial','upload/81747117_2829474540437531_3582356801967882240_n.jpg','El dÃ­a lunes, 16 de diciembre en la UTIC Sede Coronel Oviedo, se llevÃ³ a cabo el festejo por el UD de los estudiantes de la carrera de IngenierÃ­a Comercial, quienes culminaron el mÃ³dulo de â€œComercio y Marketing ElectrÃ³nicoâ€.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2829474120437573&__tn__=-UC-R','2019-12-16','publicado',3),(53,6,17,'inicio de las actividades acadÃ©micas 2020.','upload/83991360_2883391611712490_6829851608210210816_o.jpg','Presencia de la Lic. Rosanna Franco, Directora y la Lic. Sonia RodrÃ­guez, Coordinadora AcadÃ©mica en el programa #En Linea emitida por TV AIRE - Coronel Oviedo, informando sobre el inicio de las actividades acadÃ©micas 2020.','https://www.facebook.com/CORONELOVIEDOINFO/videos/1105791259761136/UzpfSTE3NTQwNzQzOTE3NzYwMToyODgzMzQ0NDk1MDUwNTM1/','2020-03-06','publicado',3),(54,7,17,'Firma de Convenio con SEA Consultora','upload/84165259_2884230428295275_2849690721923891200_o.jpg','El dÃ­a de hoy, martes 28 de enero se realizÃ³ la firma de Convenio de CooperaciÃ³n Interinstitucional entre la UTIC Sede Coronel Oviedo, representada por la Directora de Sede Lic. Rosanna Franco y S.E.A Consultora representada por el Econ. Oscar VÃ¡zquez, propietario. \r\n\r\nEl objetivo de este convenio es la cooperaciÃ³n y coordinaciÃ³n de tareas de asistencias acadÃ©micas, extensiÃ³n universitaria, asÃ­ como proyectos de investigaciÃ³n y desarrollo, pasantÃ­as curriculares supervisadas, entre otros.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2884214681630183','2020-03-06','publicado',3),(55,1,17,'21 aÃ±os de la Sede Coronel Oviedo','upload/84957670_2912351765483141_4748313987584622592_o.jpg','El dÃ­a de hoy, lunes 10 de febrero se celebrÃ³ los 21 de aÃ±os de la UTIC Sede Coronel Oviedo y se diÃ³ inicio al aÃ±o acadÃ©mico 2020, con una charla sobre â€œVivir Plenamenteâ€ a cargo de la Lic. Leticia Burgos, con la presencia de la Directora de Sede Lic. Rosanna Franco, funcionarios, docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2912329728818678','2020-02-10','publicado',3),(56,1,17,'ConmemoraciÃ³n al DÃ­a de la Mujer Paraguaya','upload/87365308_2944136902304627_4194331612344745984_o.jpg','El dÃ­a de ayer, lunes 24 de febrero, la UTIC Sede Coronel Oviedo, llevÃ³ a cabo una charla sobre \"El mundo de hoy para la mujer\" en conmemoraciÃ³n al DÃ­a de la Mujer Paraguaya a cargo de la Sra. Leticia Friedmann de Oggero. El evento fue realizado en conjunto con la SecretarÃ­a de la Mujer de la Municipalidad de Coronel Oviedo. Estuvieron presentes la Lic. Rosanna Franco, Directora de la Sede; la Lic. Leticia Burgos, encargada de la SecretarÃ­a de la Mujer de la Municipalidad de la ciudad de Coronel Oviedo; asÃ­ como docentes y estudiantes de la InstituciÃ³n.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2944136785637972&__tn__=-UC-R','2020-02-24','publicado',3),(57,4,17,'Charla sobre ElaboraciÃ³n de Proyectos de InversiÃ³n','upload/88442077_2948896498495334_5958482505689464832_o.jpg','En el dÃ­a de ayer 26 de febrero, en la UTIC Sede Coronel Oviedo se llevÃ³ a cabo una charla sobre \"ElaboraciÃ³n de Proyectos de InversiÃ³n\", en el marco del convenio entre la UTIC y SEA Consultora, a cargo del Economista Oscar VÃ¡zquez. Participaron de la actividad la Prof. Lic. Rosanna Franco, Directora de la Sede, autoridades, docentes y estudiantes del Ã¡rea empresarial.','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2948896181828699&__tn__=-UC-R','2020-02-06','publicado',3),(58,2,17,'Apoyo psicolÃ³gico a mujeres','upload/88336106_2966810703370580_6192096338243485696_o.jpg','El dÃ­a de hoy, martes 03 de marzo, se realizÃ³ una actividad de Apoyo psicolÃ³gico a mujeres que acuden por violencia domÃ©stica a la SecretarÃ­a de la Mujer de la Municipalidad de Coronel Oviedo, llevada a cabo por los estudiantes del quinto aÃ±o de la carrera de Licenciatura en PsicologÃ­a. Las consultas se pueden realizar los dÃ­as martes desde las 07:00 a 11:30 horas, y se extiende hasta el martes 07 de abril.\r\n','https://www.facebook.com/pg/utic.coroneloviedo/photos/?tab=album&album_id=2966810600037257&__tn__=-UC-R','2020-03-03','publicado',3),(59,6,12,'Apertura AcadÃ©mica CaazapÃ¡ 2020','upload/84314727_1615582435289486_6314065193177448448_o.jpg','El dÃ­a de ayer, lunes 10 de febrero en la UTIC Sede CaazapÃ¡ se llevÃ³ a cabo la apertura acadÃ©mica para los estudiantes del primer aÃ±o de las distintas carreras. Estuvo presente la Prof. Lic. Graciela Talavera; Directora de Sede; asÃ­ como docentes, funcionarios y estudiantes de la instituciÃ³n. Â¡Ã‰xitos a los nuevos estudiantes!','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1615582308622832&__tn__=-UC-R','2020-02-10','publicado',3),(60,6,12,'UPD IngenierÃ­a Comercial','upload/84023956_1616491231865273_5850572680738111488_o.jpg','El dÃ­a lunes, 10 de febrero en la UTIC Sede CaazapÃ¡, se llevÃ³ a cabo la sesiÃ³n de fotos por el Ãºltimo primer dÃ­a - UPD de los estudiantes del quinto aÃ±o de la carrera de IngenierÃ­a Comercial. Fotos gentileza: Ph. Rodrigo Cardozo','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1616490928531970&__tn__=-UC-R','2020-02-10','publicado',3),(61,2,12,'UTIC presente en un Juicio Oral y PÃºblico','upload/86796458_1623676104480119_8047494842583875584_o.jpg','El dÃ­a jueves, 13 de febrero en el Palacio de Justicia de CaazapÃ¡, los estudiantes de la carrera de Derecho del segundo y tercer aÃ±o de la UTIC CaazapÃ¡, participaron del desarrollo de un Juicio Oral y PÃºblico como parte de las asignaturas de â€œGuaranÃ­ II\" y \"ComunicaciÃ³n Oral y Escrita IIIâ€ a cargo de las Abogadas Luz Marina Ovelar y Maricel Juana LÃ³pez, docentes.','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1623676024480127&__tn__=-UC-R','2020-02-13','publicado',3),(62,6,12,'CapacitaciÃ³n del uso de Plataformas Virtuales','upload/87019334_1623677154480014_4101060659435798528_o.jpg','El dÃ­a de hoy, jueves 20 de febrero en la UTIC Sede CaazapÃ¡, los estudiantes del primer aÃ±o de las carreras de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos, EnfermerÃ­a y Derecho participaron en la CapacitaciÃ³n del Uso de Plataformas Virtuales a cargo del Sr. Marcos Ãlvarez, Director del Centro de InformaciÃ³n y Recursos Educativos (CIRE). ParticipÃ³ en la misma la Prof. Lic. Graciela Talavera, Directora de Sede; asÃ­ como estudiantes y funcionarios de la instituciÃ³n.','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1623677107813352&__tn__=-UC-R','2020-02-20','publicado',3),(63,1,12,'ConmemoraciÃ³n al DÃ­a de la Mujer Paraguaya','upload/87941817_1627887874058942_40235580046442496_n.jpg','El dÃ­a de ayer, lunes 24 de febrero, los funcionarios de la UTIC Sede CaazapÃ¡ han llevado a cabo un homenaje especial a las mujeres en su dÃ­a.','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1627887837392279&__tn__=-UC-R','2020-03-24','publicado',3),(64,6,12,'SimulaciÃ³n de Juicio Oral','upload/88089650_1633974496783613_2264685900984221696_o.jpg','El dÃ­a de ayer, 02 de marzo en la UTIC Sede CaazapÃ¡, se llevÃ³ a cabo la SimulaciÃ³n de Juicio Oral, por los estudiantes del quinto curso de la carrera de Derecho, dentro del desarrollo de la asignatura de â€œTÃ©cnicas de LitigaciÃ³n IIâ€ a cargo del Prof. Abg. Jorge Sales. Estuvieron presentes funcionarios, docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1633974476783615&__tn__=-UC-R','2020-03-02','publicado',3),(65,1,12,'ReactivaciÃ³n del Proyecto Dengue','upload/89352982_1636260726554990_33995645400383488_n.jpg','El dÃ­a de ayer, jueves 05 de marzo en la ciudad de CaazapÃ¡, los estudiantes de la carrera de EnfermerÃ­a visitaron las viviendas de los niÃ±os de dos escuelas involucradas en el desarrollo del Proyecto \"EducaciÃ³n de la familia a travÃ©s de los hijos en la bÃºsqueda activa, seguimiento y eliminaciÃ³n de los criaderos del vector del dengue, zika y chikungunya\" para monitorear la eliminaciÃ³n de criaderos de los mosquitos trasmisores. AcompaÃ±aron la actividad la Lic. Susana Noguera, Coordinadora de carrera y la Abg. NoemÃ­ GonzÃ¡lez, Coordinadora de Bienestar institucional.','https://www.facebook.com/pg/utic.caazapa/photos/?tab=album&album_id=1636259156555147&__tn__=-UC-R','2020-03-05','publicado',3),(66,6,11,'ConmemoraciÃ³n del DÃ­a de la Mujer Paraguaya','upload/85196776_3483221521753017_8051833824704724992_o.jpg','En la noche de ayer, 21 de febrero los estudiantes del segundo aÃ±o de la UTIC Sede CaaguazÃº de la carrera de Licenciatura en Ciencias de la EducaciÃ³n han llevado un homenaje especial a las mujeres que hicieron historia. Durante la misma se caracterizÃ³ a \"Juana MarÃ­a de Laraâ€, â€œAdela y Celsaâ€, â€œCelsa Sperattiâ€, â€œSerafina DÃ¡valosâ€, â€œJosefina PlÃ¡â€, â€œCarmen Casco de Lara Castroâ€ y â€œLas Enfermeras del Chacoâ€. Esta experiencia permitiÃ³ un recorrido por nuestra historia cuyo propÃ³sito nos enseÃ±a a valorarlo incansablemente.','https://www.facebook.com/pg/UTICCZU/photos/?tab=album&album_id=3483221021753067&__tn__=-UC-R','2020-02-21','publicado',3),(67,3,13,'Seminario sobre \"AdaptaciÃ³n al cÃ¡ncer: ansiedad y sufrimiento\"','upload/88999786_2773810146028583_1395504762178240512_o.jpg','El dÃ­a de ayer, jueves 5 de marzo en la UTIC Sede Ciudad del Este, los estudiantes del tercer aÃ±o de la carrera de Licenciatura en PsicologÃ­a llevaron a cabo el Seminario sobre \"AdaptaciÃ³n al cÃ¡ncer: ansiedad y sufrimientoâ€ a cargo de la Lic. Alba VelÃ¡zquez. Estuvieron presentes la Prof. Lic. Norma Gaona, Directora de Sede; pacientes oncolÃ³gicos de la FundaciÃ³n Manos Solidarias, docentes y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/uticcde/photos/?tab=album&album_id=2773809936028604&__tn__=-UC-R','2020-03-05','publicado',3),(68,6,32,'Apertura AcadÃ©mica Hernandarias 2020','upload/86378302_2072129012932303_5220828830448484352_n.jpg','El dÃ­a de ayer, martes 12 de febrero en la UTIC Sede Hernandarias se llevÃ³ a cabo la apertura acadÃ©mica oficial del aÃ±o lectivo 2020, en la cual el Prof. Dr. Hugo GonzÃ¡lez Ferreira, Rector de la Universidad, realizÃ³ una charla sobre â€œInteligencia Emocional en Personas Exitosasâ€. Estuvo presente la Prof. Lic. Gloria Beatriz FernÃ¡ndez, Directora de Sede; asÃ­ como docentes, funcionarios y estudiantes de la instituciÃ³n.','https://www.facebook.com/pg/utichernandarias/photos/?tab=album&album_id=2072128912932313&__tn__=-UC-R','2020-02-12','publicado',3),(69,6,32,'PresentaciÃ³n de los trabajos en â€œExpresiÃ³n PlÃ¡stica y Manual Iâ€','upload/86809024_2076399442505260_9137052325305647104_o.jpg','El dÃ­a viernes 14 de febrero, en la UTIC Sede Hernandarias, los estudiantes del primer aÃ±o de la carrera de Licenciatura en EducaciÃ³n Parvularia, realizaron la presentaciÃ³n de los trabajos como parte del mÃ³dulo de â€œExpresiÃ³n PlÃ¡stica y Manual Iâ€. Participaron en la misma la Prof. Lic. Gloria FernÃ¡ndez, Directora de la Sede; la Prof. Lic. Erika GimÃ©nez, Coordinadora AcadÃ©mica; el Lic. DarÃ­o Medina, Secretario AcadÃ©mico y la Sra. Dalia Pamela Caballero, Coordinadora de Bienestar Institucional.','https://www.facebook.com/pg/utichernandarias/photos/?tab=album&album_id=2076399359171935&__tn__=-UC-R','2020-02-14','publicado',3),(70,6,32,'Proyecto Institucional sobre JardinerÃ­a','upload/87972094_2083979975080540_817336833389101056_o.jpg','El dÃ­a sÃ¡bado, 22 de febrero en la UTIC Sede Hernandarias los estudiantes del tercer aÃ±o de la carrera de Licenciatura en EducaciÃ³n Parvularia realizaron la presentaciÃ³n del Proyecto Institucional sobre JardinerÃ­a en la asignatura de IniciaciÃ³n a las Ciencias Naturales y la Salud, a cargo de la Prof. Lic. Hermelinda Saucedo, docente. AdemÃ¡s se hizo propicia la oportunidad para hacer entrega a los estudiantes, los certificados de reconocimiento por la presentaciÃ³n. Estuvieron presentes la Lic. Erika GimÃ©nez, Coordinadora AcadÃ©mica, docentes y estudiantes.','https://www.facebook.com/pg/utichernandarias/photos/?tab=album&album_id=2083979458413925&__tn__=-UC-R','2020-03-22','publicado',3),(71,6,32,'PresentaciÃ³n en â€œExpresiÃ³n Musical IIâ€','upload/88158464_2092542127557658_6626205562071678976_o.jpg','El dÃ­a sÃ¡bado, 29 de febrero los estudiantes de la carrera de Licenciatura en EducaciÃ³n Parvularia de la UTIC Sede Hernandarias, realizaron una presentaciÃ³n en el mÃ³dulo de ExpresiÃ³n Musical II, con la Lic. Maura Arzamendia, docente. Estuvieron presentes la Lic. Erika GimÃ©nez, Coordinadora AcadÃ©mica y la Sra. Dalia Pamela Caballero, Coordinadora de Bienestar Institucional.','https://www.facebook.com/pg/utichernandarias/photos/?tab=album&album_id=2092541820891022&__tn__=-UC-R','2020-02-29','publicado',3),(72,6,14,'UPD de la carrera de Licenciatura en PsicologÃ­a','upload/88069668_2730749243682065_2010560103488421888_o.jpg','El dÃ­a de ayer, jueves 05 de marzo en la ciudad de CaacupÃ© se llevÃ³ a cabo la sesiÃ³n de fotos del \"Ãšltimo Primer DÃ­a\" de los estudiantes del Ãºltimo aÃ±o de la carrera de Licenciatura en PsicologÃ­a.','https://www.facebook.com/pg/UTICCaacupe/photos/?tab=album&album_id=2730747807015542&__tn__=-UC-R','2020-03-05','publicado',3),(73,7,22,'RenovaciÃ³n del Convenio de CooperaciÃ³n','upload/82957019_2556200301330468.jpg','En la maÃ±ana de ayer, miÃ©rcoles 15 de enero, en la UTIC Sede Santa Rosa del Aguaray, se llevÃ³ a cabo la renovaciÃ³n del Convenio de CooperaciÃ³n entre la UTIC, municipalidades y cooperativas.','https://www.facebook.com/pg/utic.santarosadelaguaray/photos/?tab=album&album_id=2556200251330473','2020-01-16','publicado',3),(75,1,42,'Comunicado','upload/89530540_2961774723845807_417399584843628544_o.jpg','InformaciÃ³n a la Comunidad Educativa','https://www.facebook.com/utic.edu/photos/a.941448585878441/2961774720512474/?type=3&theater','2020-03-16','publicado',1),(76,1,18,'Visita al Centro Integral Educativo','upload/89940424_1595883210536131_5405197804937150464_n.jpg','El dÃ­a viernes, 06 de marzo los estudiantes del programa de postgrado de EspecializaciÃ³n en DidÃ¡ctica de la UTIC Sede Horqueta, en el marco del desarrollo del mÃ³dulo \"Taller de Instrumentacion Iâ€ a cargo del Mg. Diosnel CÃ¡ceres, docente, realizaron una visita al Centro Integral Educativo Nuevo Amanecer y el Centro Educativo Integral Priv. Subv. Fortunata Gresner, ambos de la Ciudad de ConcepciÃ³n.\r\n\r\nLos ejes temÃ¡ticos del mÃ³dulo se relacionan con la inclusividad y la visita se realizÃ³ con el objetivo de que los estudiantes puedan tener experiencias concretas conviviendo con la realidad institucional, y de esa manera puedan enriquecer sus saberes y concluir el programa formativo de posgrado con el perfil que exige la profesiÃ³n.','https://www.facebook.com/media/set/?set=a.1595882537202865&type=3&__tn__=-UCH-R','2020-03-12','publicado',1),(77,1,0,'Evitemos juntos la propagaciÃ³n del Covid-19','upload/89154660_2952512638105349_776116868313251840_o.jpg',' ','https://www.facebook.com/media/set/?set=a.2952512094772070&type=3&__tn__=-UC-R','2020-03-16','publicado',1),(78,1,0,'Comunicado','upload/89530540_2961774723845807_417399584843628544_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/2961774720512474/?type=3&theater','2020-03-17','publicado',1),(79,1,0,'La UTIC te recomienda','upload/84078759_2962238290466117_8901214279512883200_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.133386750017966/2962238283799451/?type=3&theater','2020-03-19','publicado',1),(80,1,0,'Tips para cuidar tu salud mental','upload/89962801_2968907873132492_8081538243725623296_o.jpg','En estos momentos en los que se habla de una pandemia, te recordamos algo importante, el estado natural de tu cuerpo es estar saludable, para que un virus entre a tu cuerpo necesitas bajar tu vibraciÃ³n, es decir sentirte vulnerable, por lo cual la UTIC te recomienda los siguientes tips:','https://www.facebook.com/media/set/?set=a.2968907536465859&type=3&__tn__=-UC-R','2020-03-20','publicado',1),(81,1,0,'Comunicado a la comunidad educativa','upload/90509420_2973942239295722_7363558482227757056_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/2973942219295724/?type=3&theater','2020-03-23','publicado',1),(82,1,0,'Comunicado a la comunidad educativa','upload/91232876_2981233578566588_8503287857345986560_o.jpg','En caso de que tengas consultas, dudas o sugerencias podÃ©s comunicarte con nosotros a travÃ©s de este formulario que preparamos para vos ðŸ˜Š https://forms.gle/yxY2pw1DSgk2DsaS7','https://www.facebook.com/utic.edu/photos/a.941448585878441/2981233571899922/?type=3&theater','2020-03-24','publicado',1),(83,1,0,'Revista CientÃ­fica Internacional Arandu UTIC','upload/90743363_2539200229656647_1397833094014173184_o.jpg','Se ha publicado el NÃºmero 1, Volumen VII de la Revista CientÃ­fica Internacional ArandÃº UTIC; te invitamos a leerlo.\r\nhttp://www.utic.edu.py/revista.ojs/index.php/revista/index','https://www.facebook.com/arandu.utic/photos/a.1490323477877666/2539200222989981/?type=3&theater','2020-03-25','publicado',1),(84,1,0,'Consejos para hacer un home office efectivo','upload/91467286_2984949981528281_4904218427096301568_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/2984949971528282/?type=3&theater','2020-03-26','publicado',1),(85,1,11,'EnfermerÃ­a sede Caaguazu Acreditada','upload/92219641_3609160202492481_8026104702858952704_o.jpg',' ','https://www.facebook.com/UTICCZU/photos/a.860627420679120/3609160192492482/?type=3&theater','2020-03-31','publicado',1),(86,1,0,'Consejos para estudiar en linea','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F218539269498416%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/','2020-04-01','publicado',1),(87,1,0,'ContactÃ¡ con tu sede','upload/91860749_3002237416466204_3044468480934936576_o.jpg','Â¡Ante cualquier consulta nos encontramos disponibles para ayudarte!','https://www.facebook.com/utic.edu/photos/a.941448585878441/3002237409799538/?type=3&theater','2020-04-02','publicado',1),(88,1,0,'Entrevista al Prof. Dr. Hugo Ferreira GonzÃ¡lez','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F674265243394603%2F&show_text=0&width=560\" width=\"560\" height=\"315\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/videos/674265243394603/','2020-04-03','publicado',1),(89,1,0,'Convocatoria de recepciÃ³n de artÃ­culos','upload/92582697_2548841575359179_8089585496314871808_o.jpg',' ','https://www.facebook.com/arandu.utic/photos/a.2223728967870443/2548841572025846/?type=3&theater','2020-04-06','publicado',1),(90,1,0,'\"07 de abril: DÃ­a Mundial de la Salud\"','upload/92278159_3011162665573679_1392711860909768704_o.jpg','Â¡Que juntos podamos luchar y vencer al Covid-19!','https://www.facebook.com/utic.edu/photos/a.133386750017966/3011162662240346/?type=3&theater','2020-04-06','publicado',1),(91,1,0,'Â¡Aprovechemos este momento y disfrutemos en familia!','upload/92552991_3014904381866174_2514661566071177216_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3014904378532841/?type=3&theater','2020-04-08','publicado',1),(92,1,0,'PsicologÃ­a UTIC','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fvideos%2F631640524351484%2F&show_text=0&width=560\" width=\"560\" height=\"308\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/1651795541711034/videos/631640524351484/UzpfSTEzMzM1NDIzMzM1NDU1MTozMDM3MjI1MTg2MzAwNzYw/?hc_ref=ARTaI2-QFWP0q-UX21SRHOjF0TbmHCMtJAOcNrtmKFeLK4pWrXflYMla_6ybkFce4ts&fref=nf&__xts__[0]=68.ARCRfUyMnMj61eaMNjJO2RQbc9jNQoHgorxjpkPCiaDZx8abX7ebwmSBP0Dfv8qaohiHd-fvNvE1jLEZUpBhHM_79JfsbaQGuCuiAwYrOTN_k9xRvwm_rUPb4xIuJkjhZRGGtjH9VIyzXmUiejwyjghguwjrpblzJrIy6GMsz_WHhgdRYcK4YHuhBuOMIH5q-90_vubXf7Tfrp-g0COgjLxQNmdzkAYbZFLW4Qg0oSF16Y52q4Y7jGt9GHd6M3KT-le2tOW_KyVZL-yPDqn2pKEnz5HERb8WqEWFSrw-mpbZvi8m6fWBbXb-mYaM-bO7SFaOA4seMDxYwts&__tn__=kC-R','2020-04-17','publicado',1),(93,1,0,'Consejos para proteger a nuestros adultos mayores','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fvideos%2F914781148976183%2F&show_text=0&width=560\" width=\"560\" height=\"308\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fvideos%2F914781148976183%2F&show_text=0&width=357','2020-04-17','publicado',1),(94,1,0,'Comunicado - SÃ¡bado 18 de abril del 2020','upload/94010019_3040729689283643_6681386404242522112_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3040729685950310/?type=3&eid=ARCGB7N8NpW8TORNyRCBM1z3UF6CXOHg_M6ZriUuFCXldsqvlC6d_p9DxhKBOqbgPIW_08NpqZYUo6A7&__tn__=EEHH-R','2020-04-18','publicado',1),(95,1,0,'\"La creatividad es pensar en cosas nuevas. La innovaciÃ³n es hacer cosas nuevas.\" -Theodore Levitt','upload/94149017_3047151508641461_7671171650649325568_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3047151501974795/?type=3&theater','2020-04-21','publicado',1),(96,1,0,'DÃ­a Internacional de la madre tierra','upload/94365323_3049477565075522_4952043141340332032_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3049477558408856/?type=3&theater','2020-04-22','publicado',1),(97,1,0,'DÃ­a internacional del libro','upload/94159610_3052361284787150_132250392460263424_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3052361278120484/?type=3&theater','2020-04-23','publicado',1),(98,1,0,'UTIC Virtual','','<h2>Estudiantes</h2>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DrByz4rcxDU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<br>\r\n<hr>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VPutqeLI7GE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<br>\r\n<h2>Docentes</h2>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nRsIH3KcX7o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','https://www.facebook.com/utic.edu/videos/225878191974148/','2020-04-24','publicado',1),(99,1,0,'UTIC Virtual','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F372374837037276%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/videos/372374837037276/','2020-04-27','publicado',1),(100,1,0,'UTIC Virtual','','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F2619380824945865%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/videos/2619380824945865/','2020-04-27','publicado',1),(101,1,0,'Comunicado institucional','','<iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fposts%2F3062627157093896&width=500\" width=\"500\" height=\"583\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>','https://drive.google.com/file/d/1Rtbs0T_EtQBCgl4_x9ycX38JfP34zsIR/view','2020-04-27','publicado',1),(102,1,0,'Pautas a tener en cuenta al participar en una videoconferencia','upload/664a2696-5d19-41ef-b33e-edded354488c.jpg',' ','https://es-la.facebook.com/utic.edu/photos/a.941448585878441/3067776219912323/?type=3&theater','2020-04-29','publicado',1),(103,1,0,'Comunicado','upload/WhatsApp Image 2020-04-29 at 1.50.03 PM.jpeg',' ','https://es-la.facebook.com/utic.edu/photos/a.941448585878441/3067316586624953/?type=3&theater','2020-04-29','publicado',1),(104,1,0,'Beneficios a ser aplicados a los estudiantes de programas de postgrado por el mes de mayo de 2020.','upload/95387311_3069884299701515_634398660253607526xx.jpg',' ','https://www.facebook.com/utic.edu/photos/pb.133354233354551.-2207520000../3069884293034849/?type=3&theater','2020-04-30','publicado',1),(105,1,0,'Mensaje del Rector, Prof. Dr. Hugo Ferreira GonzÃ¡lez, a todos los maestros en su dÃ­a.','upload/95471833_3069564726400139_6751163374941241344_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.941448585878441/3069564723066806/?type=3&theater','2020-04-30','publicado',1),(106,1,0,'Â¡Feliz dÃ­a a todos nuestros maestros que gracias a sus esfuerzos permiten que la educaciÃ³n siga avanzando a pesar de las adversidades!','upload/95319476_3067800136576598_8600248616658927616_o.jpg',' ','https://www.facebook.com/utic.edu/photos/a.133386750017966/3067800133243265/?type=3&theater','2020-04-30','publicado',1),(107,1,4,'Convocatoria Mayo','upload/WhatsApp Image 2020-04-30 at 3.32.58 PM.jpeg',' ','https://m.facebook.com/story.php?story_fbid=2942146042544119&id=446929535399128','2020-05-01','publicado',1),(108,1,42,'Defensas de Trabajos de CulminaciÃ³n de Carrera, Comercio Exterior','upload/95877191_1350157561841186_798121703757578240_o.jpg',' ','https://www.facebook.com/pg/uticfernandodelamora/photos/?tab=album&album_id=1350157488507860','2020-05-01','publicado',1),(109,1,13,'Proyecto Comunitario a distancia por equipos #No estÃ¡n solos','upload/95492094_2895288373880759_1716134048033669120_o.jpg',' ','https://www.facebook.com/pg/uticcde/photos/?tab=album&album_id=2895288250547438','2020-05-01','publicado',1),(110,1,0,'UTIC Virtual','upload/','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F291170181882272%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/133354233354551/posts/3082117638478181/','2020-05-05','publicado',1),(111,1,0,'UTIC Virtual','upload/','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F264289994954579%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/133354233354551/posts/3082045621818716/','2020-05-05','publicado',1),(112,1,0,'Convocatoria Para Formar Parte Del Equipo De Ãrbitros','upload/07052020CampodeArbitros.jpg','CONVOCATORIA PARA FORMAR PARTE DEL EQUIPO DE ÃRBITROS\r\nÂ¿QuÃ© implica el arbitraje?\r\n1. Garantiza la calidad de los artÃ­culos publicados.\r\n2. Posibilita la indexaciÃ³n de la Revista en las bases de datos internacionales.\r\n3. Implica un prestigio adicional para el Ã¡rbitro, que puede ser certificado por el Editor de la Revista en cualquier momento cuando se lo solicite.\r\nÂ¿CÃ³mo funciona el arbitraje?\r\n1. Funciona a travÃ©s del sistema conocido como el â€œdoble ciegoâ€.\r\n2. La Revista envÃ­a el artÃ­culo a dos Ã¡rbitros del mismo campo de su especializaciÃ³n, quienes desconocen tanto la autorÃ­a del escrito como la identidad del otro par de arbitraje, con el fin de centrase exclusivamente en el contenido del texto.\r\n3. Cada Ã¡rbitro, despuÃ©s de haber leÃ­do y analizado el artÃ­culo pronuncia una de las siguientes sugerencias: (a) Publicar, (b) No publicar, (c) Publicar con cambios.\r\n4. La Revista publicarÃ¡ aquellos artÃ­culos que gocen de aprobaciÃ³n de ambos Ã¡rbitros.\r\nÂ¿CÃ³mo formar parte del Equipo de Ãrbitros?\r\n1. Enviar su postulaciÃ³n acompaÃ±ada por el breve CV a arandu.utic@gmail.com\r\n2. Proporcionar los siguientes datos: nombre y apellido, grado acadÃ©mico obtenido, universidad con la cual estÃ¡ vinculado, Ã¡rea general y especÃ­fica de su preparaciÃ³n y desempeÃ±o.\r\n3. Una vez que formen parte del Equipo, la Revista les proporcionarÃ¡ las instrucciones detalladas y la planilla de arbitraje.','https://m.facebook.com/story.php?story_fbid=2573446366232033&id=1483407638569250','2020-05-07','publicado',3),(113,1,3,'Â¡InscribÃ­te en la UTIC Y formÃ¡ parte de la universidad que te brinda la mejor formaciÃ³n profesional!','upload/BibliotecologÃ­a y archiviologia.jpg','Â¡InscribÃ­te en la UTIC Y formÃ¡ parte de la universidad que te brinda la mejor formaciÃ³n profesional! ðŸŽ“\r\nCon 13 acreditaciones de la ANEAES, somos una de las universidades con mÃ¡s certificaciones de calidad a nivel nacionalðŸ…\r\nInscripciones abiertas para la convocatoria 2020 ðŸ“\r\nPara mÃ¡s informaciÃ³n, podes comunicarte al (0982) 466 412 o al *590 gratis desde tu tigo.','https://m.facebook.com/story.php?story_fbid=2956058871152836&id=446929535399128','2020-05-07','publicado',3),(114,1,7,'Â¡InscribÃ­te en la UTIC Y formÃ¡ parte de la universidad que te brinda la mejor formaciÃ³n profesional!','upload/96276198_2296841630617998_1981248128514260992_o.jpg','Â¡InscribÃ­te en la UTIC Y formÃ¡ parte de la universidad que te brinda la mejor formaciÃ³n profesional! ðŸŽ“\r\nCon 13 acreditaciones de la ANEAES, somos una de las universidades con mÃ¡s certificaciones de calidad a nivel nacionalðŸ…\r\nInscripciones abiertas para la convocatoria 2020 ðŸ“\r\nPara mÃ¡s informaciÃ³n, podes comunicarte al (0982) 466 412 o al *590 gratis desde tu tigo.','https://www.facebook.com/utic.concepcion/photos/a.1435859713382865/2296841623951332/?type=3&theater','2020-05-07','publicado',3),(115,1,0,'Comunicado','upload/96239614_3087828927907052_2657476534402547712_o.jpg','Informamos que, desde el dÃ­a viernes 8 de mayo a partir de las 14:00 horas hasta el dÃ­a domingo 10 de mayo. la plataforma UTIC Virtual ucampus.edu.py, serÃ¡ objeto de una actualizaciÃ³n, por lo que estarÃ¡ disponible nuevamente para su uso a partir del dÃ­a lunes 11 de mayo del corriente. Agradecemos la comprensiÃ³n.','https://m.facebook.com/story.php?story_fbid=3087828994573712&id=133354233354551','2020-05-07','publicado',3),(116,1,22,'Defensa de TCC Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos','upload/0004.jpg','El pasado lunes 5 de mayo, se llevaron a cabo las ocho primeras sustentaciones en la modalidad virtual de los Trabajos de CulminaciÃ³n de Carrera (TTC) en las etapas de Proyecto, AnÃ¡lisis y DiseÃ±o, y ConstrucciÃ³n de Software de la carrera de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos de la Sede Santa Rosa del Aguaray. Los estudiantes que han defendido son: Defensa de TCC Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos BenÃ­tez MartÃ­nez; Oscar Gabriel Cardozo Melgarejo; Rebeca Egusquiza Acosta; Clariza Celeste MartÃ­nez Zena; Guido Rafael Melgarejo Bareiro; Edgar Diosnel Negrete Flores; Edimarcia Zeniewiez RodrÃ­guez y Richard Eliezer Ayala Pereira. Conformaron la mesa examinadora: el Lic. Daniel Ferreira, Vicerrector de TecnologÃ­a InformÃ¡tica y el Ing. Julio MorÃ­nigo, Director de Carreras de Grado y Programas de Postgrado de la Facultad de TecnologÃ­a InformÃ¡tica. Â¡Felicitaciones!','https://www.facebook.com/1689350221348818/posts/2649522918664872/','2020-05-08','publicado',3),(117,1,0,'Defensa de TCC Facultad de Ciencias Empresariales','upload/0cbd9564-3b00-4ec2-8c44-edbd7544ee73.jpg','El dÃ­a de hoy 9 de mayo, se ha llevado a cabo dieciocho sustentaciones en la modalidad virtual de los Trabajos de CulminaciÃ³n de Carrera (TTC) de las carreras de Licenciatura en Ciencias Contables, Ciencias Administrativas, Marketing e IngenierÃ­a Comercial de las Sedes de Fernando de la Mora, San Lorenzo y CapiatÃ¡. \r\n\r\nLos estudiantes fueron distribuidos en tres mesas examinadoras en la modalidad virtual.\r\n\r\nLas mesas examinadoras estuvieron conformadas por los doctores Hugo Ferreira GonzÃ¡lez, Manuel Samudio y Patricia Figueredo de Mitjans; el Ingeniero Claudio DÃ­az; los Licenciados Ãngel Torres, Hermenegildo Alonso CÃ¡ceres, Arnaldo Uliambre, JosÃ© Domingo RamÃ­rez RomÃ¡n y Lourdes Escobar de Ferreira.\r\n\r\nÂ¡Felicitaciones!','https://www.facebook.com/133354233354551/posts/3092477817442163/','2020-05-09','publicado',3),(118,1,0,'Proceso de CC de Lic. en AnÃ¡lisis de Sistemas InformÃ¡ticos','upload/3.png','El dÃ­a sÃ¡bado, 09 de mayo se dio inicio el proceso de culminaciÃ³n de carrera de Licenciatura en AnÃ¡lisis de Sistemas InformÃ¡ticos de la Regional Central y Cordillera, en forma virtual, con los tutores: Dra. Leticia Aquino, Dr. Cristian Macen y el Ing. Julio MorÃ­nigo Se cuenta con 69 estudiantes en proceso de culminaciÃ³n de carrera. Se realizÃ³ la grabaciÃ³n del encuentro para los que no pudieron participar y puedan recuperar lo desarrollado en el encuentro. Los estudiantes demostraron aceptaciÃ³n y aprobaciÃ³n de los encuentros virtuales. Herramienta utilizada: Webex (Cisco Webex). Participaron estudiantes de las sedes de Derecho e InformÃ¡tica, Loma PytÈƒ, Fernando de la Mora, San Lorenzo, CapiatÃ¡, Luque, Ã‘emby y CaacupÃ©.','https://www.facebook.com/133354233354551/posts/3097767703579841/','2020-05-11','publicado',3),(120,1,0,'Comunicado','upload/WhatsApp Image 2020-05-14 at 11.13.51 AM.jpeg','     ','http://www.cones.gov.py/registro-nacional-de-ofertas-academicas-presenciales-que-aplican-herramientas-digitales-de-ensenanza-aprendizaje-resolucion-ce-cones-n-08-de-fecha-17-de-abril-de-2020/','2020-05-14','publicado',1),(121,8,0,'SÃ­ a la vida, a pesar de todo','upload/','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fvideos%2F675613739664299%2F&show_text=0&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/1651795541711034/videos/675613739664299/UzpfSTEzMzM1NDIzMzM1NDU1MTozMTI5MTk5NDgzNzY5OTk2/?hc_ref=ARTU9waHu_098CZPZMGBN9XI9OVZUm1CB-gt7soEUweYsRIeTMoiQEsgOAIcFcTL96Q&__xts__[0]=68.ARBCdMhmUf14lYvAGwDcez9xE87zOxxB0RAy-jgjABIDLgmMPdg7KHAZVJDfwdyOxny6TgFf9NKJUVNoQqhhuFWgIixXVzZvq_lwV5yphKWr7ZXcMT6XXmqFHjfNGgBnrqfTqXixwtsw075E5O5wPGW47uyOb1ZPIesLqjYmxkRgKntaWRDe4pZsuDw40GSlKYgtML0aTSNFkdqfZwRz-ZNCVjq4v93THU8EiNqFVTTced8FppKWV-B3IHpNN2SXi9Kn8UXlzDXYZ6kVnmxtQK8I22g9a6ja9c76ntfRgalrF8w0wBTl9v67hQrRCLRYlbokz4FxKQtC46daIbPdqQu3dxOwdrZQ6L0I8A&__tn__=kC-R','2020-05-26','anulado',1),(122,8,0,'Liderazgo creativo en Ã©pocas de crisis','upload/','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F3834881119887505%2F&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F3834881119887505%2F&width=1280','2020-05-27','anulado',1),(123,8,0,'Ciclo de Webinars Gratuitos 2020 - Dr. Horacio Barreda - GestiÃ³n EstratÃ©gica de la InvestigaciÃ³n en las Universidades.','upload/','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F636643243554941%2F&width=476\" width=\"476\" height=\"476\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/videos/636643243554941/','2020-06-01','anulado',1),(124,8,0,'dfssdfasdfsdf',NULL,NULL,NULL,NULL,NULL,NULL),(126,9,14,'Defensa de TCC Facultad de Ciencias de la Salud.','upload/91916054_2940961429327511_3624217554689458176_o.jpg','El dÃ­a de ayer jueves 4 de junio, se ha llevado a cabo las siete primeras sustentaciones en la modalidad virtual de los Trabajos de CulminaciÃ³n de Carrera (TTC) de la carrera de Licenciatura en EnfermerÃ­a de la Sede CaacupÃ©.\r\n\r\nLos estudiantes que han defendido son: Luz Marina Araujo Zapata, MarÃ­a Liliana Estigarribia LÃ³pez, Mabel GimÃ©nez Maidana, Rossana Elizabeth Miltos Escobar, Francisco Junior Murakami Prieto, MarÃ­a LujÃ¡n Jara Robles y Derlis DarÃ­o Guerrero Ugarte, bajo el acompaÃ±amiento de las tutoras Lic. Magdalena Gauto y Lic. Hilda Melgarejo.\r\n\r\nLa mesa examinadora estuvo conformada por los doctores Hugo Ferreira, Rector de la Universidad TecnolÃ³gica Intercontinental â€“ UTIC; Reinelda Alderete, Decana Facultad Ciencias de la salud y la MagÃ­ster Raquel Mosquera, Directora de Carrera de EnfermerÃ­a.\r\n\r\nÂ¡Felicitaciones!','https://www.facebook.com/UTICCaacupe/photos/a.2940961205994200/2940961419327512/?type=3','2020-06-08','publicado',1),(127,5,42,'Los cambios del IRP 2020','upload/102405590_1378239425699666_2216622563237067343_o.jpg',' ','https://www.facebook.com/uticfernandodelamora/photos/a.502306496626301/1378239422366333/?type=3&theater','2020-06-08','publicado',1),(128,9,3,'Defensa de TCC Facultad de Ciencias Empresariales','upload/102688782_3169122869777657_364569901293748942_o.jpg','El dÃ­a de hoy, sÃ¡bado 06 de junio, se ha llevado a cabo dieciocho sustentaciones en la modalidad virtual de los Trabajos de CulminaciÃ³n de Carrera (TCC) de las carreras de Licenciatura en Ciencias Contables, Comercio Exterior, AdministraciÃ³n AgroecolÃ³gica e Industrial e IngenierÃ­a Comercial de las Sedes de Fernando de la Mora, San Lorenzo, Dr. Juan Eulogio Estigarribia y Ciudad del Este. Los estudiantes fueron distribuidos en tres mesas examinadoras en la modalidad virtual. \r\n\r\nLas mesas examinadoras estuvieron conformadas por los doctores Hugo Ferreira GonzÃ¡lez y Manuel Samudio; la MagÃ­ster Ninfa Candia; los Ingenieros Claudio DÃ­az y Fredy Barrios; los Licenciados Ãngel Torres, Hermenegildo Alonso CÃ¡ceres, JosÃ© Domingo RamÃ­rez RomÃ¡n; y el Licenciado Eugenio Rodas, como secretario de actas.\r\n\r\nÂ¡Felicitaciones!','https://www.facebook.com/media/set/?set=a.3169121706444440&type=3&__tn__=-UCH-R','2020-06-08','publicado',1),(129,1,0,'Comunicado','upload/104024468_3180695915287019_3344788098722112712_o.jpg','','https://www.facebook.com/utic.edu/photos/a.133386750017966/3180695911953686/?type=3&theater','2020-06-10','publicado',1),(130,1,0,'Comunicado ','upload/10.42.19 AM.jpeg','','https://www.facebook.com/utic.edu/photos/a.133386750017966/3237888786234398/?type=3&theater','2020-06-30','publicado',1),(131,1,0,'Entrevista con el rector del UTIC Prof. Dr. Hugo Ferreira, hoy en el programa Power Agricultural, transmitido por el canal RCC','upload/','<iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fposts%2F3262097803813496&show_text=true&width=552&height=319&appId\" width=\"352\" height=\"319\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>','https://www.facebook.com/utic.edu/videos/624940914812265','2020-07-08','publicado',1),(132,1,0,'Reconocimiento a Directora de PsicologÃ­a de la UTIC','','<iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fphotos%2Fa.2949354651955110%2F2949354811955094%2F&show_text=true&width=352&height=850&appId\" width=\"352\" height=\"850\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>','https://www.facebook.com/media/set/?set=a.2949354651955110&type=3','2020-07-10','publicado',1),(133,3,8,'Estrategias didÃ¡cticas innovadoras','upload/109925319.jpg','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F205481147522307%2F&width=1280\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','https://www.facebook.com/utic.edu/videos/205481147522307/','2020-07-17','publicado',1);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizacion_webinar`
--

DROP TABLE IF EXISTS `organizacion_webinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizacion_webinar` (
  `id_orga` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_orga` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_orga`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizacion_webinar`
--

LOCK TABLES `organizacion_webinar` WRITE;
/*!40000 ALTER TABLE `organizacion_webinar` DISABLE KEYS */;
INSERT INTO `organizacion_webinar` VALUES (1,'Vicerrectoría de Vinculación'),(2,'Dirección de Psicología'),(3,'USAID'),(4,'Dirección de Sede y la coordinación de Lic. en Ciencias Contables'),(5,'Dirección de Sede');
/*!40000 ALTER TABLE `organizacion_webinar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `descrip_sede` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
INSERT INTO `sedes` VALUES (0,'UTIC'),(3,'Asunción Empresariales Postgrado'),(4,'Asunción Derecho Informatica'),(6,'Juan E. Estigarríbia'),(7,'Concepción'),(8,'San pedro del Ycuamandyyu'),(9,'Luque'),(10,'San Lorenzo'),(11,'Caaguazú'),(12,'Caazapá'),(13,'Ciudad del Este'),(14,'Caacupé'),(17,'Coronel Oviedo'),(18,'Horqueta'),(19,'Encarnanción'),(20,'Ñemby'),(22,'Santa Rosa'),(30,'Maria Auxiliadora'),(32,'Hernandarias'),(36,'Capiatá'),(42,'Fernando de la Mora'),(46,'Loma Pyta'),(47,'UTIC');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_user` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `permisos_acceso` enum('Super Admin','Academico','Marketing') NOT NULL,
  `status` enum('activo','bloqueado') NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id_user`),
  KEY `level` (`permisos_acceso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'dbordon','Nelson Bordon','842c7ce4894af369ba68fc05bd2bf13a','daniel.bordon.py@gmail.com','0983366699','daniel.jpg','Super Admin','activo'),(2,'lruiz','Lautaro Ruiz DÃ­az','c650104ba8e46543d5a837f55b7164a6',NULL,NULL,NULL,'Super Admin','activo'),(3,'rgomez','Rudy Gomez','c650104ba8e46543d5a837f55b7164a6',NULL,NULL,NULL,'Super Admin','activo'),(4,'vmareco','Vicente Mareco','c650104ba8e46543d5a837f55b7164a6','','',NULL,'Super Admin','activo'),(5,'rferreira','Ryan Ferreira','c650104ba8e46543d5a837f55b7164a6',NULL,NULL,NULL,'Super Admin','activo'),(6,'dcabrera','Demesio Cabrera','2abeb7fc0e9f28f35cb96988e233fd5c',NULL,NULL,NULL,'Marketing','activo'),(7,'ncruces','Norma Cruces','c650104ba8e46543d5a837f55b7164a6','normacruces@gmail.com','0986108326',NULL,'Super Admin','activo'),(8,'ginvernizzi','Giovanni Invernizzi','c650104ba8e46543d5a837f55b7164a6',NULL,NULL,NULL,'Marketing','activo');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_covid`
--

DROP TABLE IF EXISTS `v_covid`;
/*!50001 DROP VIEW IF EXISTS `v_covid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_covid` (
  `id_covid` tinyint NOT NULL,
  `titulo_covid` tinyint NOT NULL,
  `texto_covid` tinyint NOT NULL,
  `fecha_covid` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_caacupe`
--

DROP TABLE IF EXISTS `v_noticias_caacupe`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caacupe`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_caacupe` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_caaguazu`
--

DROP TABLE IF EXISTS `v_noticias_caaguazu`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caaguazu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_caaguazu` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_caazapa`
--

DROP TABLE IF EXISTS `v_noticias_caazapa`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caazapa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_caazapa` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_campo9`
--

DROP TABLE IF EXISTS `v_noticias_campo9`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_campo9`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_campo9` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_capiata`
--

DROP TABLE IF EXISTS `v_noticias_capiata`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_capiata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_capiata` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_cde`
--

DROP TABLE IF EXISTS `v_noticias_cde`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_cde`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_cde` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_cneloviedo`
--

DROP TABLE IF EXISTS `v_noticias_cneloviedo`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_cneloviedo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_cneloviedo` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_concepcion`
--

DROP TABLE IF EXISTS `v_noticias_concepcion`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_concepcion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_concepcion` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_destacadas`
--

DROP TABLE IF EXISTS `v_noticias_destacadas`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_destacadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_destacadas` (
  `id_noticias` tinyint NOT NULL,
  `id_categoria` tinyint NOT NULL,
  `descrip_categoria` tinyint NOT NULL,
  `id_sede` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `id_user` tinyint NOT NULL,
  `username` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_empresariales`
--

DROP TABLE IF EXISTS `v_noticias_empresariales`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_empresariales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_empresariales` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_encarnacion`
--

DROP TABLE IF EXISTS `v_noticias_encarnacion`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_encarnacion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_encarnacion` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_fernando`
--

DROP TABLE IF EXISTS `v_noticias_fernando`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_fernando`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_fernando` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_hernandarias`
--

DROP TABLE IF EXISTS `v_noticias_hernandarias`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_hernandarias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_hernandarias` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_horqueta`
--

DROP TABLE IF EXISTS `v_noticias_horqueta`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_horqueta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_horqueta` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_infoderecho`
--

DROP TABLE IF EXISTS `v_noticias_infoderecho`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_infoderecho`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_infoderecho` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_loma`
--

DROP TABLE IF EXISTS `v_noticias_loma`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_loma`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_loma` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_luque`
--

DROP TABLE IF EXISTS `v_noticias_luque`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_luque`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_luque` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_mariaaux`
--

DROP TABLE IF EXISTS `v_noticias_mariaaux`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_mariaaux`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_mariaaux` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_nemby`
--

DROP TABLE IF EXISTS `v_noticias_nemby`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_nemby`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_nemby` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_sanlo`
--

DROP TABLE IF EXISTS `v_noticias_sanlo`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_sanlo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_sanlo` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_sanpedro`
--

DROP TABLE IF EXISTS `v_noticias_sanpedro`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_sanpedro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_sanpedro` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticias_santarosa`
--

DROP TABLE IF EXISTS `v_noticias_santarosa`;
/*!50001 DROP VIEW IF EXISTS `v_noticias_santarosa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticias_santarosa` (
  `descrip_categoria` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_noticiass`
--

DROP TABLE IF EXISTS `v_noticiass`;
/*!50001 DROP VIEW IF EXISTS `v_noticiass`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_noticiass` (
  `id_noticias` tinyint NOT NULL,
  `id_categoria` tinyint NOT NULL,
  `descrip_categoria` tinyint NOT NULL,
  `id_sede` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `titulo` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `texto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `id_user` tinyint NOT NULL,
  `username` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_webinars`
--

DROP TABLE IF EXISTS `v_webinars`;
/*!50001 DROP VIEW IF EXISTS `v_webinars`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_webinars` (
  `id_webinars` tinyint NOT NULL,
  `id_sede` tinyint NOT NULL,
  `descrip_sede` tinyint NOT NULL,
  `id_orga` tinyint NOT NULL,
  `descrip_orga` tinyint NOT NULL,
  `tema` tinyint NOT NULL,
  `autores` tinyint NOT NULL,
  `video` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `enlace` tinyint NOT NULL,
  `fecha_publicacion` tinyint NOT NULL,
  `hora` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `id_user` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `webinars`
--

DROP TABLE IF EXISTS `webinars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webinars` (
  `id_webinars` int(11) NOT NULL AUTO_INCREMENT,
  `id_sede` int(11) DEFAULT NULL,
  `id_orga` int(11) DEFAULT NULL,
  `tema` longtext,
  `autores` varchar(250) DEFAULT NULL,
  `video` longtext,
  `foto` varchar(254) DEFAULT NULL,
  `enlace` longtext,
  `fecha_publicacion` date DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL,
  `estado` enum('publicado','archivo','despublicado') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_webinars`),
  KEY `fk_sede` (`id_sede`),
  KEY `fk_user` (`id_user`),
  KEY `fk_orga` (`id_orga`),
  CONSTRAINT `webinars_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id_sede`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `webinars_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `webinars_ibfk_4` FOREIGN KEY (`id_orga`) REFERENCES `organizacion_webinar` (`id_orga`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webinars`
--

LOCK TABLES `webinars` WRITE;
/*!40000 ALTER TABLE `webinars` DISABLE KEYS */;
INSERT INTO `webinars` VALUES (1,0,4,'SÃ­ a la vida, a pesar de todo','Mg. De los Santos Salvador Lima','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F1651795541711034%2Fvideos%2F675613739664299%2F&show_text=0&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>\r\n\r\n','uploadwebinars/1.jpeg','https://www.facebook.com/1651795541711034/videos/675613739664299/UzpfSTEzMzM1NDIzMzM1NDU1MTozMTI5MTk5NDgzNzY5OTk2/?hc_ref=ARTU9waHu_098CZPZMGBN9XI9OVZUm1CB-gt7soEUweYsRIeTMoiQEsgOAIcFcTL96Q&__xts__[0]=68.ARBCdMhmUf14lYvAGwDcez9xE87zOxxB0RAy-jgjABIDLgmMPdg7KHAZVJDfwdyOxny6TgFf9NKJUVNoQqhhuFWgIixXVzZvq_lwV5yphKWr7ZXcMT6XXmqFHjfNGgBnrqfTqXixwtsw075E5O5wPGW47uyOb1ZPIesLqjYmxkRgKntaWRDe4pZsuDw40GSlKYgtML0aTSNFkdqfZwRz-ZNCVjq4v93THU8EiNqFVTTced8FppKWV-B3IHpNN2SXi9Kn8UXlzDXYZ6kVnmxtQK8I22g9a6ja9c76ntfRgalrF8w0wBTl9v67hQrRCLRYlbokz4FxKQtC46daIbPdqQu3dxOwdrZQ6L0I8A&__tn__=kC-R','2020-05-22','19:00hs','publicado',1),(2,0,1,'Liderazgo creativo en Ã©pocas de crisis','Dr. Hugo Ferreira GonzÃ¡lez - Rector','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F3834881119887505%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/2.jpeg','https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F3834881119887505%2F&width=1280','2020-05-26','19:00hs','publicado',1),(3,0,1,'GestiÃ³n EstratÃ©gica de la InvestigaciÃ³n en las Universidades.','Dr. Horacio Barreda','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F636643243554941%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/3.jpeg','https://www.facebook.com/utic.edu/videos/636643243554941/','2020-06-01','11:00hs','publicado',1),(4,0,1,'El proceso de anÃ¡lisis de datos en investigaciÃ³n cientÃ­fica','Dr. Tomas Izquierdo Rus','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F626377541570323%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/101836416_3160178267338784_3266593215842615296_o.jpg','https://www.facebook.com/utic.edu/videos/626377541570323/','2020-06-04','17:00','publicado',1),(5,0,1,'El mundo post pandemia. Â¿CÃ³mo serÃ¡ la gestiÃ³n institucional despuÃ©s del COVID-19?','Dr. Hugo René Gornone','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F187656909296434%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>\r\n\r\n','uploadwebinars/103587741_3183519061671371_9029413429610486527_o.jpg','https://www.facebook.com/utic.edu/videos/187656909296434/','2020-06-15','10:00','publicado',1),(6,0,3,'Ã‰tica, Equidad, Transparencia: Un Llamado a la AcciÃ³n para Construir un Nuevo Paraguay','Dr. Hugo Ferreira','<iframe src=\"https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2Futic.edu%2Fvideos%2F367431254233908%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/','https://www.facebook.com/utic.edu/videos/367431254233908/','2020-06-17','10:00','publicado',1),(7,0,1,'Liderazgo EstratÃ©gico Universitario en la GestiÃ³n de Crisis','Dr. Luciano Rodrigues Marcelino','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F270668130809377%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/drMArcelino.jpg','https://www.facebook.com/utic.edu/videos/liderazgo-estrat%C3%A9gico-universitario-en-la-gesti%C3%B3n-de-crisis/270668130809377/?__so__=permalink&__rv__=related_videos','2020-06-22','10:00','publicado',3),(8,42,4,'Los Cambios del IRP en el 2020','Mg. Sandra Oviedo','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F3127894593916345%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/75d3eea6-079a-41a8-ba04-c08074145726.jpg','https://www.facebook.com/utic.edu/videos/3127894593916345/','2020-06-23','19:00','publicado',1),(10,19,5,'DesafÃ­os de la educaciÃ³n hacia nuevos escenarios de la educaciÃ³n virtual','Ing. Marlene Candia','<iframe src=\"https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2Futic.sedeencarnacion%2Fvideos%2F198541714895622%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/105574597_1386751298176365_1080664941534416475_o.jpg','https://www.facebook.com/utic.sedeencarnacion/videos/198541714895622/','2020-07-08','19:00','publicado',1),(11,0,1,'Problemas intracarcelarios. Un antes y un despuÃ©s del Covid-19','Dr. Roberto Fonseca Feris','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F308417913881151%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/11.08.10 AM.jpeg','https://www.facebook.com/utic.edu/videos/308417913881151/','2020-06-29','19:00','publicado',1),(12,0,1,'El ejecutivo creativo e innovador para enfrentar la pandemia','Ing. Alejandro Schnarch Kirberg','<iframe src=\"https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2Futic.edu%2Fvideos%2F732916497457222%2F&width=420\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/106645534_3237448132945130_8727949611642214876_o.jpg','https://www.facebook.com/utic.edu/videos/732916497457222','2020-07-09','19:00','publicado',1),(13,0,1,'Una nueva escuela: Â¿quÃ© contenidos priorizar en educaciÃ³n durante y despuÃ©s de la pandemia?','Mg. Alberto Barrantes','<iframe src=\"https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2Futic.edu%2Fvideos%2F766014737534047%2F&width=1920\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/2020-07-15 at 8.24.52 PM.jpeg','https://www.facebook.com/utic.edu/videos/766014737534047/','2020-07-16','19:00','publicado',1),(15,8,5,'Estrategias didÃ¡cticas innovadoras','Mg. Ariel GonzÃ¡lez','<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Futic.edu%2Fvideos%2F205481147522307%2F&width=1280\" width=\"420\" height=\"420\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>','uploadwebinars/109925319.jpg','https://www.facebook.com/utic.edu/videos/205481147522307/','2020-07-17','19:00','publicado',1);
/*!40000 ALTER TABLE `webinars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'web_v7'
--

--
-- Final view structure for view `v_covid`
--

/*!50001 DROP TABLE IF EXISTS `v_covid`*/;
/*!50001 DROP VIEW IF EXISTS `v_covid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_covid` AS (select `covid`.`id_covid` AS `id_covid`,`covid`.`titulo_covid` AS `titulo_covid`,`covid`.`texto_covid` AS `texto_covid`,`covid`.`fecha_covid` AS `fecha_covid`,`covid`.`enlace` AS `enlace`,`covid`.`estado` AS `estado` from `covid` where (`covid`.`estado` = 'publicado') order by `covid`.`id_covid` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_caacupe`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_caacupe`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caacupe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_caacupe` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Caacup%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_caaguazu`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_caaguazu`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caaguazu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_caaguazu` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Caaguaz%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_caazapa`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_caazapa`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_caazapa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_caazapa` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Caazap%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_campo9`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_campo9`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_campo9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_campo9` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Juan E%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_capiata`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_capiata`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_capiata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_capiata` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Capiat%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_cde`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_cde`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_cde`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_cde` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Ciudad%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_cneloviedo`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_cneloviedo`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_cneloviedo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_cneloviedo` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Coronel%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_concepcion`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_concepcion`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_concepcion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_concepcion` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Concep%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_destacadas`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_destacadas`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_destacadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_destacadas` AS (select `n`.`id_noticias` AS `id_noticias`,`c`.`id_categoria` AS `id_categoria`,`c`.`descrip_categoria` AS `descrip_categoria`,`s`.`id_sede` AS `id_sede`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion`,`n`.`estado` AS `estado`,`u`.`id_user` AS `id_user`,`u`.`username` AS `username` from (((`noticias` `n` join `categorias` `c`) join `sedes` `s`) join `usuarios` `u`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`c`.`descrip_categoria` = 'Noticias destacadas') and (`n`.`id_sede` = `s`.`id_sede`) and (`n`.`id_user` = `u`.`id_user`) and (`n`.`estado` = 'publicado'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_empresariales`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_empresariales`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_empresariales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_empresariales` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Asunci%%_Empresariales%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_encarnacion`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_encarnacion`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_encarnacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_encarnacion` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Encarnanci%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_fernando`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_fernando`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_fernando`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_fernando` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` = 'Fernando de la mora')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_hernandarias`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_hernandarias`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_hernandarias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_hernandarias` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Hernandaria%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_horqueta`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_horqueta`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_horqueta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_horqueta` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Horqueta%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_infoderecho`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_infoderecho`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_infoderecho`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_infoderecho` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Asunci%%_Derecho%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_loma`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_loma`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_loma`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_loma` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Loma%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_luque`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_luque`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_luque`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_luque` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Luque%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_mariaaux`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_mariaaux`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_mariaaux`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_mariaaux` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Mar%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_nemby`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_nemby`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_nemby`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_nemby` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like '%emby')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_sanlo`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_sanlo`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_sanlo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_sanlo` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` = 'San Lorenzo')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_sanpedro`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_sanpedro`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_sanpedro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_sanpedro` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'San pedro%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticias_santarosa`
--

/*!50001 DROP TABLE IF EXISTS `v_noticias_santarosa`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticias_santarosa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticias_santarosa` AS (select `c`.`descrip_categoria` AS `descrip_categoria`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion` from ((`noticias` `n` join `categorias` `c`) join `sedes` `s`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`s`.`descrip_sede` like 'Santa%')) order by `n`.`id_noticias` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_noticiass`
--

/*!50001 DROP TABLE IF EXISTS `v_noticiass`*/;
/*!50001 DROP VIEW IF EXISTS `v_noticiass`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_noticiass` AS (select `n`.`id_noticias` AS `id_noticias`,`c`.`id_categoria` AS `id_categoria`,`c`.`descrip_categoria` AS `descrip_categoria`,`s`.`id_sede` AS `id_sede`,`s`.`descrip_sede` AS `descrip_sede`,`n`.`titulo` AS `titulo`,`n`.`foto` AS `foto`,`n`.`texto` AS `texto`,`n`.`enlace` AS `enlace`,`n`.`fecha_publicacion` AS `fecha_publicacion`,`n`.`estado` AS `estado`,`u`.`id_user` AS `id_user`,`u`.`username` AS `username` from (((`noticias` `n` join `categorias` `c`) join `sedes` `s`) join `usuarios` `u`) where ((`n`.`id_categoria` = `c`.`id_categoria`) and (`n`.`id_sede` = `s`.`id_sede`) and (`n`.`id_user` = `u`.`id_user`) and (`n`.`estado` = 'publicado'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_webinars`
--

/*!50001 DROP TABLE IF EXISTS `v_webinars`*/;
/*!50001 DROP VIEW IF EXISTS `v_webinars`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`webutic`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_webinars` AS (select `a`.`id_webinars` AS `id_webinars`,`s`.`id_sede` AS `id_sede`,`s`.`descrip_sede` AS `descrip_sede`,`c`.`id_orga` AS `id_orga`,`c`.`descrip_orga` AS `descrip_orga`,`a`.`tema` AS `tema`,`a`.`autores` AS `autores`,`a`.`video` AS `video`,`a`.`foto` AS `foto`,`a`.`enlace` AS `enlace`,`a`.`fecha_publicacion` AS `fecha_publicacion`,`a`.`hora` AS `hora`,`a`.`estado` AS `estado`,`u`.`id_user` AS `id_user` from (((`webinars` `a` join `sedes` `s`) join `organizacion_webinar` `c`) join `usuarios` `u`) where ((`a`.`id_sede` = `s`.`id_sede`) and (`a`.`id_orga` = `c`.`id_orga`) and (`a`.`id_user` = `u`.`id_user`) and (`a`.`estado` = 'publicado')) order by `a`.`fecha_publicacion`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-21 10:37:20
