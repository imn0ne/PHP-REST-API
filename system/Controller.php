<?php


class Controller
{
    public function model($model)
    {
        require_once '../app/Models/' . $model . '.php';
        return new $model;
    }

    public function view($view, $data = [])
    {
        require_once '../app/Views/' . $view . '.php';
    }

    public function controller($controller)
    {
        require_once '../app/Controllers/' . $controller . '.php';
    }
}
