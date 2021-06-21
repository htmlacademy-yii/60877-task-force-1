<?php

namespace htmlacademy\models;
use htmlacademy\models\ci_action;

class ActionCancel extends AbstractClass
{

    protected $publicName = "Отмененное";
    protected $innerName = "act_cancel";

    public function CheckRights($idExecutor, $idTaskmaker, $idUser)
    {
      return $idUser === $idTaskmaker;
    }
}
