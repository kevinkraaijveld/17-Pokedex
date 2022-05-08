<?php
/*  Kevin Kraaijveld PHP PokedexController
============================================================================

1. Algemeen
2. Create
3. Delete
4. Edit

============================================================================ */

/* 1. Algemeen
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */


// Dit linkt de controller met de model
require(ROOT . "model/PokedexModel.php");

// Dit toont alle Pokemon in de view/index.php
function index()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getAllPokemon()  // Voert de 'getAllPokemon' functie uit in de PokedexModel.php

		)
	);
}
function kanto()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getKanto(),  // Voert de 'getKanto' functie uit in de PokedexModel.php
			'region' => Kanto
		)
	);
}
function johto()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getJohto(),  // Voert de 'getJohto' functie uit in de PokedexModel.php
			'region' => Johto
		)
	);
}
function hoenn()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getHoenn(),  // Voert de 'getHoenn' functie uit in de PokedexModel.php
			'region' => Hoenn
		)
	);
}
function sinnoh()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getSinnoh(),  // Voert de 'getSinoh' functie uit in de PokedexModel.php
			'region' => Sinnoh
		)
	);
}
function unova()
{
	render("pokedex/index", // Dit toont de index.php in de view
		array(
			'pokemons' => getUnova(),  // Voert de 'getUnova' functie uit in de PokedexModel.php
			'region' => Unova
		)
	);
}


/* 2. Create
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */


// Dit word uitgevoerd als je in de create.php op versturen klikt
function create(){
	if($_SERVER['REQUEST_METHOD'] == "POST"){
		$data=array(
			'poke_name' => $_POST['poke_name'],
			'poke_type_1' => $_POST['poke_type_1'],
			'poke_type_2' => $_POST['poke_type_2']
		);
			newPoke($data); // Dit voert de 'newPoke' functie in de PokedexModel uit.
				echo "<script>alert('Pokemon toegevoegd'); window.location = '/pokedex/';</script>";
	}
	render("pokedex/create",
	array(
			'types' => getAllTypes(),
			'types_2' => getAllTypesTwo()
		)
	); // Dit toont de create.php
}

function type(){
	if($_SERVER['REQUEST_METHOD'] == "POST"){
		$data=array(
			'type_name' => $_POST['type_name']
		);
			newType($data); // Dit voert de 'newType' functie in de PokedexModel uit.
			newTypeTwo($data);
				echo "<script>alert('Type is toegevoegd'); window.location = '/pokedex/';</script>";
	}
	render("pokedex/type"); // Dit toont de type.php
}
//
// /* 3. Delete
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */
//
// // Dit word uitgevoerd als je in de index.php op verwijderen klikt
// function delete($id){
// 		$book = getBookById($id);
// 	render("library/delete", ['book' => $book]); // Dit toont de delete.php
// }
//
// function deleteThis($id){
// 		deleteBook($id); // Dit voert de 'deleteBook' functie in de model uit.
// 	echo "<script>alert('Boek verwijderd'); window.location = '/examen/';</script>";
// }
//
//
/* 4. Edit
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

// Dit word uitgevoerd als je in de index.php op een naam klikt
function edit($id){
		$poke = getPokeById($id);
	render("pokedex/edit",
		array(
			'pokemons' => getAllPokemon(),  // Voert de 'getAllPokemon' functie uit in de PokedexModel.php
			'poke' => getPokeById($id),
			'types' => getAllTypes(),
			'types_2' => getAllTypesTwo()
		)
		); // Dit toont de edit.php
}

// Dit word uitgevoerd als je in de edit.php op opslaan klikt
function saveEdit(){
		update($_POST);
	echo "<script>alert('Pokemon is aangepast'); window.location = '/pokedex/';</script>";
}

// /*Made by Kevin Kraaijveld*/
