<!--  Kevin Kraaijveld PHP Pokedex / type.php -->
<header>
	<h3>Voeg een type toe</h3>
		<div id='menu'>
			<ul>
				<?php
				echo "<li><a href='" . URL . "pokedex/index/" . "'>National</a></li>";
				echo "<li><a href='" . URL . "pokedex/kanto/" . "'>Kanto</a></li>";
				echo "<li><a href='" . URL . "pokedex/johto" . "'>Johto</a></li>";
				echo "<li><a href='" . URL . "pokedex/hoenn" . "'>Hoenn</a></li>";
				echo  "<li><a href='" . URL . "pokedex/sinnoh" . "'>Sinnoh</a></li>";
				echo  "<li><a href='" . URL . "pokedex/unova" . "'>Unova</a></li>";
				echo  "<li id='createNew'><a href='" . URL . "pokedex/create" . "'>Create</a></li>";
				?>
			</ul>
		</div>
</header>
<div id="dex">
  <!-- Dit formulier gaat naar de functie 'create' in Librarycontroller.php-->
  <form action="<?=URL?>pokedex/type" method="post" autocomplete="off">
    <br>
    <br>

    <label for="fname">Type naam</label>
    <input type="text" id="type_name" name="type_name" minlength="2" maxlength="40" placeholder="Type naam" required>
    <br>
    <br>
    <br>


    <input type="submit" value="Versturen">
    <input type="button" name="cancel" value="Annuleren" onClick="window.location='/pokedex/';" />
  </form>
</div>
