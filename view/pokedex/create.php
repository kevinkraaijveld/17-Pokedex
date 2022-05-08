<!--  Kevin Kraaijveld PHP Pokedex / create.php -->
<?php
// var_dump($types);
?>
<br>
<br>
<header>
	<h3>Voeg een nieuwe pokemon toe</h3>
		<div id='menu'>
			<ul>
				<?php
				echo "<li><a href='" . URL . "pokedex/index/" . "'>National</a></li>";
				echo "<li><a href='" . URL . "pokedex/kanto/" . "'>Kanto</a></li>";
				echo "<li><a href='" . URL . "pokedex/johto" . "'>Johto</a></li>";
				echo "<li><a href='" . URL . "pokedex/hoenn" . "'>Hoenn</a></li>";
				echo  "<li><a href='" . URL . "pokedex/sinoh" . "'>Sinnoh</a></li>";
				echo  "<li><a href='" . URL . "pokedex/unova" . "'>Unova</a></li>";
				echo  "<li id='createNew'><a href='" . URL . "pokedex/type" . "'>Create</a></li>";
				?>
			</ul>
		</div>
</header>
<div id="dex">
  <!-- Dit formulier gaat naar de functie 'create' in Librarycontroller.php-->
  <form action="<?=URL?>pokedex/create" method="post" autocomplete="off">
    <label for="fname">Naam</label>
    <input type="text" id="poke_name" name="poke_name" minlength="2" maxlength="40" placeholder="Naam Pokemon" required>

    <label for="fname">Type 1</label>
    <select name="poke_type_1" required>
      <?php foreach ($types as $type) { ?>
            <option value="<?= $type['type_id']?>">
              <?= $type['type_name']?>
            </option>
      <?php } ?>
    </select>

    <label for="fname">Type 2</label>
    <select name="poke_type_2">
      <option value=""></option>
      <?php foreach ($types_2 as $type_2) { ?>
            <option value="<?= $type_2['type_id']?>">
              <?= $type_2['type_name_2']?>
            </option>
      <?php } ?>
    </select>

    <input type="submit" value="Versturen">
    <input type="button" name="cancel" value="Annuleren" onClick="window.location='/pokedex/';" />
  </form>
</div>
