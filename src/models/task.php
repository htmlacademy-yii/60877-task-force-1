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

    const ACTION_EXECUTE = 'execute';
    const ACTION_DONE = 'done';
    const ACTION_CANCEL = 'cancel';
    const ACTION_DENY = 'deny';

    private $executer_id;
	private $customer_id;
	private $status = self::STATUS_NEW; //что тут дергается? Просмотри

	public function __construct($customer_id = null, $executer_id = null){
		$this->customer_id = $customer_id; // откуда тут данная переменная
		$this->executer_id = $executer_id; // откуда тут данная переменная
	}

    public function returnMapStatuses()
    {
        $mapStatuses = [
            self::STATUS_NEW => 'Новое',
            self::STATUS_EXECUTE => 'В работе',
            self::STATUS_DONE => 'Выполнено',
            self::STATUS_FAIL => 'Провалено',
            self::STATUS_CANCEL => 'Отменено'
        ];
        return $mapStatuses;
    }

    public function returnMapActions()
    {

        return   [
            self::ACTION_EXECUTE => self::STATUS_EXECUTE,
            self::ACTION_DONE => self::STATUS_DONE,
            self::ACTION_CANCEL => self::STATUS_CANCEL,
            self::ACTION_DENY => self::STATUS_FAIL
        ];
    }

public function getActions($status, $idExecutor, $idTaskmaker, $idUser)
{
    $array = [self::STATUS_NEW => [new Act_execute(), new Act_cancel()],
    self::STATUS_EXECUTE => [new Act_done(), new Act_deny()]];
  $actions = $array[$status]; // что в данном случае будет в $status?
  foreach($actions as $action){
    if($action->check_user($idcustomer, $idexecuter, $iduser)){
        return $action;
    }
}
return false;
}

public function next_status (string $action) {

    $stmap = $this->status_map[$action];
    return $this->status_array[$stmap];
}

public function get_status(){
    return $this->status;
}

public function get_customer(){
    return $this->customer_id;
}

public function get_executer(){
    return $this->executer_id;
}

}
