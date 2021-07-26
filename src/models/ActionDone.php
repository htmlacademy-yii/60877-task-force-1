<?php
declare(strict_types=1);
namespace htmlacademy\models;
use htmlacademy\models\ActionExecute;

class ActionDone extends AbstractClass
{

    protected $publicName = "Сделано";
    protected $innerName = "act_done";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idUser === $idTaskmaker;
    }
}
