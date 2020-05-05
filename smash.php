<html>
 <head>
  <meta charset="utf-8">
  <title>Smash roster</title>
 </head>
 <body>
 <h1>Wojownicy w Smashu</h1>
  <table border="1">
   <tr>
     <th>Bohater</th><th>Seria gier</th><th>Wydawca</th><th>Kraj</th><th>Rok założenia firmy</th>
   </tr>
<?php
include "polacz.php";
if ($sql =  $baza->prepare("SELECT smash.hero, smash.game, producenci.firma, producenci.kraj, producenci.rok FROM smash INNER JOIN producenci ON smash.ip=producenci.firma;"))
{
        $sql->execute();
        $sql->bind_result($hero, $game, $firma, $kraj, $rok);
        while ($sql->fetch())
        {
                echo "<tr>
                        <td>$hero</td>
                        <td>$game</td>
                        <td>$firma</td>
                        <td>$kraj</td>
                        <td>$rok</td>
                   </tr>";
        }
        $sql->close();
 }
else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );

 $baza->close();
?>
  </table>
  <a href="dodaj2.php">Dodaj firmę</a>
 . . . 
  <a href="dodaj.php">Dodaj wojownika</a>
 </body>
</html>