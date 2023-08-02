<?php
    include ("db.php"); 
    $pagename="Men's Shoes"; 
    echo "<link rel=stylesheet type=text/css href=mystylesheet.css>";

    echo "<title>".$pagename."</title>";

    echo "<body>";
    
        include ("headfile.html");
        echo "<p style='font-size: 35px' class='headerstyle'><b>&nbsp;".$pagename."</b></p><br>";

        //create a $SQL variable and populate it with a SQL statement that retrieves product details
        $SQL="select menID, prodName, prodPicNameSmall,prodDescripShort,prodPrice from mens";

        //run SQL query for connected DB or exit and display error message
        $exeSQL=mysqli_query($conn, $SQL) or die (mysqli_error($conn));

        echo "<table style='border: 0px'>";
        
        //create an array of records (2 dimensional variable) called $arrayp.
        //populate it with the records retrieved by the SQL query previously executed.
        //Iterate through the array i.e while the end of the array has not been reached, run through it
            while ($arrayp=mysqli_fetch_array($exeSQL))
            {
                echo "<tr>";
                    echo "<td style='border: 0px'>";
                        //make the image into an anchor to prodbuym.php and pass the product id by URL (the id from the array)
                        echo "<a href=prodbuym.php?u_prod_id=".$arrayp['menID'].">";

                            //display the small image whose name is contained in the array
                            echo "<img src=images/Shoes/".$arrayp['prodPicNameSmall']." height=200 width=200>";

                        echo "</a>";
                    
                    echo "</td>";

                    echo "<td style='border: 0px'>";
                        echo "<a href=prodbuym.php?u_prod_id=".$arrayp['menID'].">";
                            echo "<p style='font-size:20px'><b>".$arrayp['prodName']."</b></p><br>"; //display product name as contained in the array
                        echo "</a>";
                        echo "<p>".$arrayp['prodDescripShort']."</p>"; //display product short description in the array
                        echo "<br><p><b>Rs ".$arrayp['prodPrice']."</b>"; //display product price in the array
                    echo "</td>";
                echo "</tr>";

            }
        echo "</table>";
        include ("footfile.html");
    echo "</body>";
?>