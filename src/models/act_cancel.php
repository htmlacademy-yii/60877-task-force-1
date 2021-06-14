<?php

namespace htmlacademy\models;
use htmlacademy\models\ci_action;

class ActionCancel extends AbstractClass
{

    protected $public_name = "Отмененное";
    protected   $inner_name = "act_cancel";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
        if ($idUser===$idTaskmaker) {
            return true;
            }
            else {
                return false;
            }
    }
}
