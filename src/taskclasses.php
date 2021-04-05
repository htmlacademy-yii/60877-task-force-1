<?php

class StatusesAndActions
{
    const STATUS_NEW = "Новое";
    const STATUS_CANCELLED = "Отмененное";
    const STATUS_INWORK = "В работе";
    const STATUS_DONE = "Сделано";
    const STATUS_FAILED = "Провалено";
    const ACTION_EXECUTE = 'execute';
    const ACTION_DONE = 'done';
    const ACTION_CANCEL = 'cancel';
    const ACTION_DENY = 'deny';

    public function __construct($taskAuthor, $idMaker)
    {
        $this->taskAuthor = $taskAuthor;
        $this->idMaker = $idMaker;
    }

    public function returnMapStatuses()
    {
        $mapStatuses = [
            STATUS_NEW => "Новое",
            STATUS_CANCELLED => "Отмененное",
            STATUS_INWORK => "В работе",
            STATUS_DONE => "Сделано",
            STATUS_FAILED => "Провалено"
        ];
        return $mapStatuses;
    }

    public function returnMapActions()
    {
        $mapActions = [
            ACTION_EXECUTE => 'execute',
            ACTION_DONE => 'done',
            ACTION_CANCEL => 'cancel',
            ACTION_DENY => 'deny'
        ];
        return $mapActions;
    }

    public function getStatuses()
    {
        if (STATUS_NEW) {
return ACTION_EXECUTE;
        } else if (STATUS_CANCELLED) {
return ACTION_CANCEL;
        } else if (STATUS_INWORK) {
       return  ACTION_EXECUTE;
        } else if (STATUS_DONE) {
      return ACTION_DONE;
        } else if (STATUS_FAILED) {
return [ACTION_CANCEL, ACTION_DENY];
        }
    }

    public function getActions()
    {

        if (ACTION_EXECUTE) {
            return STATUS_INWORK;
        } else if (ACTION_DONE) {
            return STATUS_DONE;
        } else if (ACTION_CANCEL) {
            return STATUS_CANCELLED;
        } else if (ACTION_DENY) {
            return STATUS_FAILED;
        }
    }

}
