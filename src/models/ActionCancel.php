<?php
declare(strict_types=1);
namespace Htmlacademy\Models;
use Htmlacademy\Models\ActionExecute;

class ActionCancel extends AbstractClass
{

    protected $publicName = "Отмененное";
    protected $innerName = "act_cancel";

    public function checkRights(int $idExecutor, int $idTaskmaker, int $idUser):bool
    {
        return $idUser === $idTaskmaker;
    }
}
