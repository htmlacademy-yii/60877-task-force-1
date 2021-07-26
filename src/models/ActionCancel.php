<?php
declare(strict_types=1);
namespace htmlacademy\models;
use htmlacademy\models\ActionExecute;

class ActionCancel extends AbstractClass
{

    protected $publicName = "Отмененное";
    protected $innerName = "act_cancel";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idUser === $idTaskmaker;
    }
}
