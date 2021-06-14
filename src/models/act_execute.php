<?php

namespace htmlacademy\models;
use htmlacademy\models\ci_action;

class ActionExecute extends AbstractClass
{
    protected $public_name = "Выполнено";
    protected $inner_name = "act_execute";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
      if ($idExecutor===$idUser) {
        return true;
      }
      else {
          return false;
      }
    }
}
