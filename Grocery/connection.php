<?php
$con = mysqli_connect('127.0.0.1', 'root', null, 'grocery_shopping');
if (!$con) {
    die('connection failed ' . mysqli_connect_error());
}