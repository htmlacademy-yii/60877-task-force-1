<?php
declare(strict_types=1);
namespace htmlacademy\models;

abstract class AbstractClass
{
    protected $innerName;
    protected $publicName;
    
    abstract public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser);

    public function getInnerName():?string
    {
        return $this->innerName;
    }
    public function getPublicName():?string
    {
        return $this->publicName;
    }
}
