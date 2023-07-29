<?php
session_start();
include("db.php");
$pagename="ShoeBarn Authorized Nike Dealer"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=stylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
echo "<p style='font-size: 35px'><b>".$pagename."</b></p><br>"; //display name of the page on the web page
//retrieve the product id passed from previous page using the GET method and the $_GET superglobal variable
//applied to the query string u_prod_id
//store the value in a local variable called $prodid
$kidid=$_GET['u_prod_id'];
//display the value of the product id, for debugging purposes
echo "<p>Selected product ID: ".$kidid;
//create a $SQL variable and populate it with a SQL statement that retrieves product details
$SQL="select kidID, prodName, prodPicNameLarge,prodDescripLong,prodPrice,prodQuantity from kids WHERE kidID=".$kidid;
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
            //make the image into an anchor to prodbuy.php and pass the product id by URL (the id from the array)
            echo "<a href=prodbuyk.php?u_prod_id=".$arrayp['kidID'].">";
            //display the small image whose name is contained in the array
            echo "<img src=images/Shoes/".$arrayp['prodPicNameLarge']." height=200 width=200>";
            //close the anchor
            echo "</a>";
            
            echo "</td>";
                echo "<td style='border: 0px'>";
                echo "<p style='font-size: 20px'><b>".$arrayp['prodName']."</b></p><br>"; //display product name as contained in the array
                echo "<p>".$arrayp['prodDescripLong']."</p>"; //display product short description in the array
                echo "<br><p><b>Rs ".$arrayp['prodPrice']."</b></p>"; //display product price in the array
                echo "<br><p>Left in Stock: ".$arrayp['prodQuantity']."</p>"; //display product short description in the array
                echo "<br><p>Number to be purchased: ";
                    //create form made of one text field and one button for user to enter quantity
                    //the value entered in the form will be posted to the basket.php to be processed
                    echo "<form action=basket.php method=post>";
                    // echo "<input type=text name=p_quantity size=5 maxlength=3>";
                    echo "<select name= p_quantity>";
                    for($i=1;$i<=$arrayp['prodQuantity']; $i++){
                        echo"<option value=".$i.">".$i."</option>";  
                    }
                    echo "</select>";
                    echo "&emsp;<input type=submit name='submitbtn' value='Buy now' id='submitbtn'>";
                    echo "</form>";
                    echo "</p>";

                echo "</td>";
        echo "</tr>";

    }
echo "</table>";


//display random text
include("footfile.html"); //include head layout
echo "</body>";
?>