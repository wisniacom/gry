<?php
include "polacz.php";
$hero = wczytaj("hero");
$game = wczytaj("game");
$ip = wczytaj("ip");

$sql = $baza->prepare("INSERT INTO smash VALUES (?, ?, ?);");
if ($sql)
{
        $sql->bind_param("sss", $hero, $game, $ip);
        $sql->execute();
        $sql->close();
}
else
    die( 'Błąd: '. $baza->error);
$baza->close();
header ("Location: smash.php");
?>