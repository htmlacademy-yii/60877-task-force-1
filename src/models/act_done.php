<?php

namespace htmlacademy\models;
use htmlacademy\models\ci_action;

class ActionDone extends AbstractClass
{

    protected $public_name = "Сделано";
    protected $inner_name = "act_done";

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
