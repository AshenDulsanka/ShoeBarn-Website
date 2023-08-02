<?php
    session_start();
    include("db.php");
    $pagename="ShoeBarn Authorized Nike Dealer"; 
    echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; 

    echo "<title>".$pagename."</title>"; 
    echo "<body>";
        include ("headfile.html"); 

        echo "<p style='font-size: 35px' class='headerstyle'><b>&nbsp; ".$pagename."</b></p><br>"; //display name of the page on the web page

        //retrieve the product id passed from previous page using the GET method and the $_GET superglobal variable
        //applied to the query string u_prod_id
        //store the value in a local variable called $womanid
        $womanid=$_GET['u_prod_id'];

        //display the value of the product id, for debugging purposes
        echo "<p>&nbsp;&nbsp;Selected product ID: ".$womanid ."<br>";
        echo "<br>";

        //create a $SQL variable and populate it with a SQL statement that retrieves product details
        $SQL="select womanID, prodName, prodPicNameLarge,prodDescripLong,prodPrice from woman WHERE womanID=".$womanid;

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
                        //make the image into an anchor to prodbuyw.php and pass the product id by URL (the id from the array)
                        echo "<a href=prodbuyw.php?u_prod_id=".$arrayp['womanID'].">";
                        
                            //display the small image whose name is contained in the array
                            echo "<img src=images/Shoes/".$arrayp['prodPicNameLarge']." height=200 width=200>";

                        echo "</a>";
                    echo "</td>";

                    echo "<td style='border: 0px'>";
                        echo "<p style='font-size: 20px'><b>".$arrayp['prodName']."</b></p><br>"; //display product name as contained in the array
                        echo "<p>".$arrayp['prodDescripLong']."</p>"; //display product short description in the array
                        echo "<br><p><b>Rs ".$arrayp['prodPrice']."</b></p>"; //display product price in the array
                        echo "<a href='formdetails.php'>";
                            echo "<br><input type=submit name='submitbtn' value='Pre Order' id='submitbtn'>";
                        echo "</a>";
                    echo "</td>";
                echo "</tr>";

            }
        echo "</table>";

        include("footfile.html"); 
    echo "</body>";
?>