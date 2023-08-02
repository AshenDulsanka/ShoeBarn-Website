<?php
    include ("db.php");
    $pagename = "Order Details";

    echo "<link rel=stylesheet type=text/css href=order.css>";

    echo "<title>".$pagename."</title>";

    echo "<body>";
        echo "
                    <div class='container'>
            <div class = 'title'>Order Confirmation</div>
            <form method='post'>
                <div class='user-details'>
                    <div class='input-box'>
                        <span class='details'>Full Name</span>
                        <input type='text' placeholder='Enter your name' name='fullname' required>
                    </div>
                    <div class='input-box'>
                        <span class='details'>Email</span>
                        <input type='text' placeholder='Enter your email ' name='email' required>
                    </div>
                    <div class='input-box'>
                        <span class='details'>Phone Number</span>
                        <input type='text' placeholder='Enter your phone number' name='phone' required>
                    </div>
                    <div class='input-box'>
                        <span class='details'>Quantity</span>
                        <input type='text' placeholder='Enter quantity' name='quantity' required>
                    </div>
                    <div class='input-box'>
                        <span class='details'>Address</span>
                        <input type='text' placeholder='Enter address' name='address' required>
                    </div>
                </div>
                <div class='button'>
                    <input type='Submit' value='Confirm'>
                </div>
            </form>
        </div>
        ";

    if (isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['phone']) && isset($_POST['quantity']) && isset($_POST['address'])) {
        $fullname = $_POST['fullname'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $quantity = $_POST['quantity'];
        $address = $_POST['address'];

        $sql = "INSERT INTO orderdetails (fullname, email, phone, quantity, address) VALUES ('$fullname', '$email', '$phone', '$quantity', '$address')";

        if (mysqli_query($conn, $sql)) {
            echo "<h2 class='orderconfirm'>Order placed successfully!</h2>";
            echo "<a href='index.html'>";
                echo "<button type='button' class='btn'>Back to Home</button>";
            echo "</a>";
        } else {
            echo "<h2>Error placing order. Please try again.</h2>";
        }
    }
?>