<?php

namespace htmlacademy\models;
use htmlacademy\models\ci_action;

class ActionDeny extends AbstractClass
{

    protected $public_name = "Отказаться";
    protected $inner_name =  "act_deny";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
        if ($idUser===$idExecutor) {
            return true;
            }
            else {
                return false;
            }
    }
}
