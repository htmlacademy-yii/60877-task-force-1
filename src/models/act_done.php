<?php

namespace Htmlacademy\Models;
use Htmlacademy\Models\ci_action;

class ActionDone extends AbstractClass
{

    protected $publicName = "Сделано";
    protected $innerName = "act_done";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
        return $idUser === $idTaskmaker;
    }
}
