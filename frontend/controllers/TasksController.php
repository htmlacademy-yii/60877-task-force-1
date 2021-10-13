<?php
namespace frontend\controllers;
use frontend\models\Tasks;
use yii\web\Controller;
use yii\db\Query;

class TasksController extends Controller {
    public function actionIndex()
    {

    
        $tasks = Tasks::find()->all();


       /* $tasks = (new \yii\db\Query())
    ->select(['start_date', 'deskription', 'final_date', 'name', 'address', 'budget'])
    ->from('tasks')->orderBy([
        'start_date' => SORT_DESC
        ])
    ->all();*/
    if (is_null($tasks)) {
        throw new Exception("нет тасков!");
            }
    
                return $this->render('index', compact('tasks'));

       
    }

}