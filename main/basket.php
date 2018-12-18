<?php
session_start();
function index()
{
    if (empty ($_SESSION['goods'])) {
        $str = 'Корзина пуста';
    } else {
        $id = implode(', ', array_keys($_SESSION['goods']));
        $sql = "SELECT id, altName, MiniFileName, counter FROM images WHERE id IN ($id)";
        $res = mysqli_query(connect(), $sql);

        define('DIR_IMG', 'image');

        while ($row = mysqli_fetch_assoc($res)) {
            $getStr = "?page=singleProduct&func=index&id={$row['id']}";
            $getStrSecond = "?page=basket&func=add&id={$row['id']}";
            $getStrThird = "?page=basket&func=remove&id={$row['id']}";
            $str .= "<div class = 'imageWrapper'><a href= " . $getStr . " ><img id = " . $row['id']
                . " src = " . DIR_IMG . "/" . $row['MiniFileName'] . " width = '150px' height = '100px'  alt = "
                . $row['altName'] . "></a><p>{$row['altName']}</p><p>Цена: " . $row['counter']
                . "$</p><div class ='buttonsMinusBuyPlus'><form method='post'>"
                . "<button formaction='$getStrThird'>-</button>{$_SESSION['goods'][$row['id']]}"
                . "<button formaction='$getStrSecond'>+</button></form></div></div>";
        }
        return $str;
    }
    return $str;
}

function add()
{
    $id = (int)$_GET['id'];
    if (!empty($_SESSION['goods'][$id])) {
        $_SESSION['goods'][$id] += 1;
    } else {
        $_SESSION['goods'][$id] = 1;
    }
    header('Location:' . $_SERVER['HTTP_REFERER']);
}

function remove()
{
    $id = (int)$_GET['id'];
    if (!empty($_SESSION['goods'][$id])) {
        $_SESSION['goods'][$id] -= 1;
    }

    if ($_SESSION['goods'][$id] < 1) {
        unset($_SESSION['goods'][$id]);
    }

    header('Location:' . $_SERVER['HTTP_REFERER']);
}

/**
 * Created by PhpStorm.
 * User: Alex1
 * Date: 15.12.2018
 * Time: 17:06
 */