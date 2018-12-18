<?php

function doFeedbackAction($str)
{
    switch ($str) {
        case key_exists('add', $_POST):
            if (strlen($_POST['text']) > 0) {
                $author = clearStr($_POST['author']);
                $text = clearStr($_POST['text']);
                $productId = (int)($_GET['id']);
                $sql = "INSERT INTO feedbacks (author, text, productId) VALUES ('$author', '$text', $productId)";
                mysqli_query(connect(), $sql);
                $location = "Location: " . $_SERVER['HTTP_REFERER'];
                header($location);
                exit;
            }
            break;
        case key_exists("edit", $_POST):
            $getStr = $_GET['id2'];
            $author = clearStr($_POST['author']);
            $text = clearStr($_POST['text']);
            $sql = "UPDATE feedbacks SET author='$author',text = '$text' WHERE id =$getStr";
            mysqli_query(connect(), $sql);
            $location = "Location: " . $_SERVER['HTTP_REFERER'];
            header($location);
            exit;
            break;
        case key_exists("del", $_POST):
            $getStr = $_GET['id2'];
            $sql = "DELETE FROM feedbacks WHERE id =$getStr";
            mysqli_query(connect(), $sql);
            break;
    }
}
