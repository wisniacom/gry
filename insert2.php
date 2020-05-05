<?php
include "polacz.php";
$firma = wczytaj("firma");
$kraj = wczytaj("kraj");
$rok = wczytaj("rok");

$sql = $baza->prepare("INSERT INTO producenci VALUES (?, ?, ?);");
if ($sql)
{
        $sql->bind_param("ssi", $firma, $kraj, $rok);
        $sql->execute();
        $sql->close();
}
else
    die( 'Błąd: '. $baza->error);
$baza->close();
header ("Location: smash.php");
?>