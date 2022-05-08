<?php
/*  Kevin Kraaijveld PHP PokedexModel
============================================================================

1. Algemeen
2. Create
3. Delete
4. Edit

============================================================================ */

/* 1. Algemeen
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

// Dit word aangeroepen door de 'index' functie in de controller
function getAllPokemon(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getKanto(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2
	WHERE poke_id <152";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getJohto(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2
	WHERE poke_id BETWEEN 152 AND 251";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getHoenn(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2
	WHERE poke_id BETWEEN 252 AND 386";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getSinnoh(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2
	WHERE poke_id BETWEEN 387 AND 493";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getUnova(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM pokemon
	LEFT JOIN types  ON pokemon.poke_type_1 = types.type_id
	LEFT JOIN types_2  ON pokemon.poke_type_2 = types_2.type_id_2
	WHERE poke_id BETWEEN 494 AND 649";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getAllTypes(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM types";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

function getAllTypesTwo(){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM types_2";
	$query = $db->prepare($sql);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}
// Dit word aangeroepen door de 'delete' en de 'edit' functies in de controller
function getPokeById($id){
	$db = openDatabaseConnection();
	$sql = "SELECT * FROM `pokemon` where poke_id = :poke_id ";
	$query = $db->prepare($sql);
	$query->bindParam(":poke_id", $id);
	$query->execute();
	$db = null;
	return $query->fetchAll();
}

/* 2. Create
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

// Dit word aangeroepen door de 'create' functie in de controller
function newPoke($data){
	$db = openDatabaseConnection();
	$sql = $db->prepare("INSERT INTO pokemon (poke_name, poke_type_1, poke_type_2)
	VALUES (:poke_name, :poke_type_1, :poke_type_2);");

		$sql->bindParam(':poke_name',$data['poke_name'],PDO::PARAM_STR);
			$sql->bindParam(':poke_type_1',$data['poke_type_1'],PDO::PARAM_INT);
				$sql->bindParam(':poke_type_2',$data['poke_type_2'],PDO::PARAM_INT);
	$sql->execute();
}
function newType($data){
	$db = openDatabaseConnection();
	$sql = $db->prepare("INSERT INTO types (type_name)
	VALUES (:type_name);");

	$sql->bindParam(':type_name',$data['type_name'],PDO::PARAM_STR);
	$sql->execute();
}

function newTypeTwo($data){
	$db = openDatabaseConnection();
	$sql = $db->prepare("INSERT INTO types_2 (type_name_2)
	VALUES (:type_name_2);");
	$sql->bindParam(':type_name_2',$data['type_name'],PDO::PARAM_STR);
	$sql->execute();
}

//
// /* 3. Delete
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */
//
// // Dit word aangeroepen door de 'delete' functie in de controller
//
// function deleteBook($id) {
// 	$db = openDatabaseConnection();
// 		$sql = $db->prepare("DELETE FROM books WHERE book_id = :id");
// 			$sql->bindParam(":id", $id);
// 	$sql->execute();
// }
//
// /* 4. Edit
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */


// // Dit word aangeroepen door de 'saveEdit' functie in de controller
function update($answers){
	$db = openDatabaseConnection();
	$sql = "UPDATE pokemon SET poke_name = :poke_name, poke_type_1 = :poke_type, poke_type_2 = :poke_type_2, evolves_into = :evolves_into WHERE poke_id = :poke_id";
	$query = $db->prepare($sql);
	$query->bindParam(":poke_name", $answers['poke_name']);
	$query->bindParam(":poke_type", $answers['poke_type']);
	$query->bindParam(":poke_type_2", $answers['poke_type_2']);
	$query->bindParam(":evolves_into", $answers['evolves_into']);
	$query->bindParam(":poke_id", $answers['poke_id']);
	$query->execute();
}
// /*Made by Kevin Kraaijveld*/
