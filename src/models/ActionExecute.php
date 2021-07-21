<?php
declare(strict_types=1);
namespace Htmlacademy\Models;
use htmlacademy\Models\ActionExecute;
use htmlacademy\Models\AbstractClass;
class ActionExecute extends AbstractClass
{
    protected $publicName = "Выполнено";
    protected $innerName = "act_execute";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idExecutor === $idUser;
    }
}
