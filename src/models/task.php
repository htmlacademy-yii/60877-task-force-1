<?php

namespace htmlacademy\models;
use htmlacademy\models\act_done;
use htmlacademy\models\act_execute;
use htmlacademy\models\act_cancel;
use htmlacademy\models\act_deny;

class Task
{
    const STATUS_NEW = "new";
    const STATUS_INWORK = "in_progress";
    const STATUS_DONE = "done";
    const STATUS_FAILED = "failed";
    const STATUS_CANCELLED = "canceled";

    const ACTION_EXECUTE = "execute";
    const ACTION_DONE = "done";
    const ACTION_CANCEL = "cancel";
    const ACTION_DENY = "deny";

    public function actionArray () {
        $array = [
            self::STATUS_NEW => [new actExecute(), new actCancel()],
            self::STATUS_EXECUTE => [new actDone(), new actDeny()],
        ];
        return $array;
    }


    private $executerId;
    private $customerId;
    private $status = self::STATUS_NEW; //что тут дергается? Просмотри

    public function testStatus() {
        return $this->status;
    }


    public function __construct($customerId = null, $executerId = null)
    {
        $this->customerId = $customerId;
        $this->executerId = $executerId;
    }

    public function returnMapStatuses()
    {
        return [
            self::STATUS_NEW => "Новое",
            self::STATUS_EXECUTE => "В работе",
            self::STATUS_DONE => "Выполнено",
            self::STATUS_FAIL => "Провалено",
            self::STATUS_CANCEL => "Отменено",
        ];
    }

    public function returnMapActions()
    {
        return [
            self::ACTION_EXECUTE => self::STATUS_EXECUTE,
            self::ACTION_DONE => self::STATUS_DONE,
            self::ACTION_CANCEL => self::STATUS_CANCEL,
            self::ACTION_DENY => self::STATUS_FAIL,
        ];
    }

    public function getActions($status, $idExecutor, $idTaskmaker, $idUser)
    {

        if (array_key_exists($status, $actions)){
            $actions  = $this->actionArray()[$status];
        }

        foreach ($actions as $action) {
            if ($action->CheckRights($idExecutor, $idTaskmaker, $idUser)) {
                return $action;
            }
        }
        return false;
    }

    public function nextStatus(string $action)
    {
        $stmap = $this->statusMap[$action];
        return $this->statusArray[$stmap];
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function getCustomer()
    {
        return $this->customerId;
    }

    public function getExecuter()
    {
        return $this->executerId;
    }
}

