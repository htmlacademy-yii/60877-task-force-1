<?php
declare(strict_types=1);
namespace htmlacademy\models;

class ActionCancel extends AbstractClass
{

    protected $publicName = "Отмененное";
    protected $innerName = "act_cancel";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idUser === $idTaskmaker;
    }
}
