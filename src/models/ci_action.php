<?php

namespace Htmlacademy\Models;

abstract class AbstractClass
{
    protected $innerName;
    protected $publicName;

    abstract public function CheckRights($idExecutor, $idTaskmaker, $idUser);

    public function getInnerName()
    {
        return $this->$innerName;
    }
    public function getPublicName()
    {
        return $this->$publicName;
    }
}
