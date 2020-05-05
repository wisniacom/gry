<html>
 <head>
  <meta charset="utf-8">
  <title>New challenger approaching</title>
 </head>
 <body>
  <h1>Dodaj nowego wojownika</h1>
  <form method="get" action="insert.php">
   <table border="0">
      <tr><td>Bohater</td><td><input name="hero"></td></tr>
      <tr><td>Seria gier</td><td><input name="game"></td></tr>
   </table>
        Firma
                <select name="ip">
                        <?php
                                include "polacz.php";
                                if ($sql =  $baza->prepare("SELECT firma FROM producenci;"))
                                {
                                        $sql->execute();
                                        $sql->bind_result($firma);
                                        while ($sql->fetch())
                                        {
                                                echo " <option value=$firma>$firma</option> ";
                                        }
                                        $sql->close();
                                }
                                else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );

                                $baza->close();
                        ?>
                </select>
        </br>
        <input type="submit" value="Dodaj">
  </form>
 </body>
</html>