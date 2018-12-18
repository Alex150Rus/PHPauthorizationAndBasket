<?php

session_start();

function index () {
    $login = clearStr($_POST['login']);
    $password = md5(md5($_POST['password']));
    $sql = "SELECT login, password FROM users WHERE login = '$login'";
    $res = mysqli_query(connect(), $sql);
    $row = mysqli_fetch_assoc($res);

    if (!empty($_POST) && $row['login'] === $login && $row['password'] === $password) {
        $str = $login  . ', добро пожаловать в личный кабинет';
        $_SESSION['IS_USER'] = IS_USER;
        unset($_SESSION['msg']);
        return $str;
    }

    header('Location: ?');
    return $_SESSION['msg'] = 'неверное имя пользователя или пароль';
}
/**
 * Created by PhpStorm.
 * User: Alex1
 * Date: 15.12.2018
 * Time: 22:53
 */