<?php

namespace Htmlacademy\Models;
use Htmlacademy\Models\ci_action;

class ActionDeny extends AbstractClass
{

    protected $publicName = "Отказаться";
    protected $innerName = "act_deny";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
        return $idUser === $idExecutor;
    }
}
