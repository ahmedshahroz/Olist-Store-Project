-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: olist_store
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_category_name_translation`
--

DROP TABLE IF EXISTS `product_category_name_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_name_translation` (
  `ï»¿product_category_name` text,
  `product_category_name_english` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_name_translation`
--

LOCK TABLES `product_category_name_translation` WRITE;
/*!40000 ALTER TABLE `product_category_name_translation` DISABLE KEYS */;
INSERT INTO `product_category_name_translation` VALUES ('beleza_saude','health_beauty'),('informatica_acessorios','computers_accessories'),('automotivo','auto'),('cama_mesa_banho','bed_bath_table'),('moveis_decoracao','furniture_decor'),('esporte_lazer','sports_leisure'),('perfumaria','perfumery'),('utilidades_domesticas','housewares'),('telefonia','telephony'),('relogios_presentes','watches_gifts'),('alimentos_bebidas','food_drink'),('bebes','baby'),('papelaria','stationery'),('tablets_impressao_imagem','tablets_printing_image'),('brinquedos','toys'),('telefonia_fixa','fixed_telephony'),('ferramentas_jardim','garden_tools'),('fashion_bolsas_e_acessorios','fashion_bags_accessories'),('eletroportateis','small_appliances'),('consoles_games','consoles_games'),('audio','audio'),('fashion_calcados','fashion_shoes'),('cool_stuff','cool_stuff'),('malas_acessorios','luggage_accessories'),('climatizacao','air_conditioning'),('construcao_ferramentas_construcao','construction_tools_construction'),('moveis_cozinha_area_de_servico_jantar_e_jardim','kitchen_dining_laundry_garden_furniture'),('construcao_ferramentas_jardim','costruction_tools_garden'),('fashion_roupa_masculina','fashion_male_clothing'),('pet_shop','pet_shop'),('moveis_escritorio','office_furniture'),('market_place','market_place'),('eletronicos','electronics'),('eletrodomesticos','home_appliances'),('artigos_de_festas','party_supplies'),('casa_conforto','home_confort'),('construcao_ferramentas_ferramentas','costruction_tools_tools'),('agro_industria_e_comercio','agro_industry_and_commerce'),('moveis_colchao_e_estofado','furniture_mattress_and_upholstery'),('livros_tecnicos','books_technical'),('casa_construcao','home_construction'),('instrumentos_musicais','musical_instruments'),('moveis_sala','furniture_living_room'),('construcao_ferramentas_iluminacao','construction_tools_lights'),('industria_comercio_e_negocios','industry_commerce_and_business'),('alimentos','food'),('artes','art'),('moveis_quarto','furniture_bedroom'),('livros_interesse_geral','books_general_interest'),('construcao_ferramentas_seguranca','construction_tools_safety'),('fashion_underwear_e_moda_praia','fashion_underwear_beach'),('fashion_esporte','fashion_sport'),('sinalizacao_e_seguranca','signaling_and_security'),('pcs','computers'),('artigos_de_natal','christmas_supplies'),('fashion_roupa_feminina','fashio_female_clothing'),('eletrodomesticos_2','home_appliances_2'),('livros_importados','books_imported'),('bebidas','drinks'),('cine_foto','cine_photo'),('la_cuisine','la_cuisine'),('musica','music'),('casa_conforto_2','home_comfort_2'),('portateis_casa_forno_e_cafe','small_appliances_home_oven_and_coffee'),('cds_dvds_musicais','cds_dvds_musicals'),('dvds_blu_ray','dvds_blu_ray'),('flores','flowers'),('artes_e_artesanato','arts_and_craftmanship'),('fraldas_higiene','diapers_and_hygiene'),('fashion_roupa_infanto_juvenil','fashion_childrens_clothes'),('seguros_e_servicos','security_and_services');
/*!40000 ALTER TABLE `product_category_name_translation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23  1:01:55
