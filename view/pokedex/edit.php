<!--  Kevin Kraaijveld PHP Pokedex / edit.php -->
<?php
	// var_dump($poke);
?>

<header>
	<h3>Pas <?echo$poke[0]['poke_name']?> aan</h3>
		<div id='menu'>
			<ul>
				<?php
					echo "<li><a href='" . URL . "pokedex/index/" . "'>National</a></li>";
					echo "<li><a href='" . URL . "pokedex/kanto/" . "'>Kanto</a></li>";
					echo "<li><a href='" . URL . "pokedex/johto" . "'>Johto</a></li>";
					echo "<li><a href='" . URL . "pokedex/hoenn" . "'>Hoenn</a></li>";
					echo  "<li><a href='" . URL . "pokedex/sinnoh" . "'>Sinnoh</a></li>";
					echo  "<li><a href='" . URL . "pokedex/unova" . "'>Unova</a></li>";
					echo  "<li id='createNew'><a href='" . URL . "pokedex/type" . "'>Create</a></li>";
				?>
			</ul>
		</div>
</header>
<div id='nextPoke'>
	<ul>
		<?php
		$prev = $poke[0]['poke_id'] -1;
		$next = $poke[0]['poke_id'] +1;
		if($poke[0]['poke_id']==1){
			echo "<li><a href='" . URL . "pokedex/edit/" . $next . "'>Volgende</a></li>";
		}else{
			echo "<li><a href='" . URL . "pokedex/edit/" . $prev . "'>Vorige</a></li>";
			echo "<li><a href='" . URL . "pokedex/edit/" . $next . "'>Volgende</a></li>";
		}
		?>
	</ul>
</div>
<div id="pokimage">
	<!-- <img src="<?=URL?>img/<?=$poke[0]['poke_name']?>.png" alt="<?=$poke[0]['poke_name']?>" width="125" height="125"> -->

	<?php
		$nr = $poke[0]['poke_id'];
		if(strlen($nr)==1){
			$nr = $poke[0]['poke_id'];?>
			<img src="https://assets.pokemon.com/assets/cms2/img/pokedex/full/00<?=$nr?>.png" alt="<?=$poke[0]['poke_name']?>" width="125" height="125">
		<?php }else if(strlen($nr)==2){?>
			<img src="https://assets.pokemon.com/assets/cms2/img/pokedex/full/0<?=$nr?>.png" alt="<?=$poke[0]['poke_name']?>" width="125" height="125">
	  <?php  }else if(strlen($nr)==3){?>
			<img src="https://assets.pokemon.com/assets/cms2/img/pokedex/full/<?=$nr?>.png" alt="<?=$poke[0]['poke_name']?>" width="125" height="125">
	<?php } ?>
</div>

<div id="typeImageOne">
	<img src="<?=URL?>img/<?=$poke[0]['poke_type_1']?>.png" alt="<?=$poke[0]['poke_type_1']?>" width="125" height="125">

</div>
<?php
if($poke[0]['poke_type_2']>0){
	echo "<div id='typeImageTwo'>";
	echo "<img src='" . URL . "img/" . $poke[0]['poke_type_2'] . ".png" .  "' alt='$poke[0]['poke_type_2']' width='125' height='125'>";

	echo "</div>";
}
?>
<div id="dex">
  <!-- Dit formulier gaat naar de functie 'create' in Librarycontroller.php-->
  <form action="<?=URL?>pokedex/saveEdit" method="post" autocomplete="off">
    <label for="fname">Naam</label>
    <input type="text" id="poke_name" name="poke_name" minlength="2" maxlength="25" value="<?echo $poke[0]['poke_name'];?>" required>

    <label for="fname">Type 1</label>
    <select name="poke_type">
      <?php foreach ($types as $type) { ?>
        <?php if ($poke[0]['poke_type_1']==$type['type_id']){?>
          <option value="<?= $type['type_id']?>" selected>
            <?= $type['type_name']?>
          </option>
        <?php } else {?>
            <option value="<?= $type['type_id']?>">
              <?= $type['type_name']?>
            </option>
          <?php } ?>
        <?php } ?>
    </select>

    <label for="fname">Type 2</label>
    <select name="poke_type_2">
      <option value=""></option>
      <?php foreach ($types_2 as $type_2) { ?>
        <?php if ($poke[0]['poke_type_2']==$type_2['type_id_2']){?>
          <option value="<?= $type_2['type_id_2']?>" selected>
            <?= $type_2['type_name_2']?>
          </option>
        <?php } else {?>
            <option value="<?= $type_2['type_id_2']?>">
              <?= $type_2['type_name_2']?>
            </option>
          <?php } ?>
        <?php } ?>
    </select>
		<label for="fname">Evolution</label>
		<select name="evolves_into">
			<option value=""></option>
			<?php foreach ($pokemons as $pokemon) { ?>
			<?php if ($poke[0]['evolves_into']==$pokemon['poke_id']){?>
				<option value="<?= $pokemon['poke_id']?>" selected>
					<?= $pokemon['poke_name']?>
				</option>
			<?php } else {?>
				<option value="<?= $pokemon['poke_id']?>" >
					<?= $pokemon['poke_name']?>
				</option>
				<?php } ?>
			<?php } ?>
		</select>

      <input type="hidden" name="poke_id" value="<?= $poke[0]['poke_id'] ?>">

    <input type="submit" value="Versturen">
    <input type="button" name="cancel" value="Annuleren" onClick="window.location='/pokedex/';" />
  </form>
</div>
