<?php

namespace Htmlacademy\Models;
use Htmlacademy\Models\ci_action;

class ActionExecute extends AbstractClass
{
    protected $publicName = "Выполнено";
    protected $innerName = "act_execute";

    public function CheckRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idExecutor === $idUser;
    }
}
