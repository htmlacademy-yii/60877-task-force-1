<?php
declare(strict_types=1);
namespace htmlacademy\models;
use htmlacademy\models\ActionExecute;
use htmlacademy\models\AbstractClass;

class ActionExecute extends AbstractClass
{
    protected $publicName = "Выполнено";
    protected $innerName = "act_execute";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idExecutor === $idUser;
    }
}
