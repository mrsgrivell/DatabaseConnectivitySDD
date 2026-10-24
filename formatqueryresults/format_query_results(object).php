<?php
$host="localhost";
$username="root";
$pword="root";
$database="esports";


$mysqli = new mysqli($host, $username, $pword, $database);
$query_string = "SELECT game, platform, playername, score from game, gamescore WHERE game.gameid = gamescore.gameid";

//run the query		
if ($result = $mysqli->query($query_string)) {

	//start the table
	?>
	<table>
	<tr>
		<th>Game</th><th>Platform</th><th>Player Name</th><th>Score</th>
	</tr>
	<?php
	while ($row = $result->fetch_object()) {

	echo "<tr><td>" . $row->game . "</td>";
	echo "<td>" . $row->platform . "</td>";
	echo "<td>" . $row->playername . "</td>";
	echo "<td>" . $row->score . "</td></tr>";
	}
	?>
	</table>
	<?php
}
$mysqli->close();

?>