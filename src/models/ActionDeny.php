<?php
declare(strict_types=1);
namespace htmlacademy\models;
use htmlacademy\models\ActionExecute;

class ActionDeny extends AbstractClass
{

    protected $publicName = "Отказаться";
    protected $innerName = "act_deny";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idUser === $idExecutor;
    }
}
