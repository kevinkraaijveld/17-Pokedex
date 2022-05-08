<!--  Kevin Kraaijveld PHP Pokedex / index.php -->
<?php

// var_dump($region);
?>

<header>
	<h3>Pokedex
		<?php
				if($region!=null){
					echo $region;
				}else if($region==null){
					echo "National";
				}
			?>
	</h3>
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
<br><br>
<div id="dex">
	<table class="sortable">
		<thead>
			<tr>
				<th class="id">ID</th>
				<th>Naam</th>
				<th>Type 1</th>
				<th>Type 2</th>
				<th>Evolution</th>
				<th class="sorttable_nosort" colspan="2"> </th>
			</tr>
		</thead>
			<tbody>
				<?php
			  foreach ($pokemons as $pokemon) {

				  echo "<tr>";
					echo "<td class='id'>" . $pokemon['poke_id'] .  "</td>";
				  echo "<td>" . "<a href='" . URL . "pokedex/edit/" . $pokemon['poke_id'] . "'>" . $pokemon['poke_name'] . "</a></td>";
					echo "<td>" . $pokemon['type_name'] . "</td>";
				  echo "<td>" . $pokemon['type_name_2'] . "</td>";
						if($pokemon['evolves_into'] == 0){
							echo "<td>" . "</td>";
					} else{
							echo "<td>" . "<a href='" . URL . "pokedex/edit/" . $pokemons[$pokemon['evolves_into']-1]['poke_id'] . "'>" . $pokemons[$pokemon['evolves_into']-1]['poke_name'] . "</a></td>";
					}


			  echo "</tr>";
			  ?>
			  <?php } ?>
			</tbody>
	</table>

</div>
<?php
		if($region!=null){
			echo "<div id='region'>";
			echo "<img src='" . URL . "img/" . $region . ".png" .  "' alt='$region' width='125' height='125'>";
			echo "</div>";
		}
	?>
