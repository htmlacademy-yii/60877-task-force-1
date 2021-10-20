<?php

namespace frontend\controllers;

use frontend\models\Tasks;
use yii\web\Controller;
use yii\db\Query;

class TasksController extends Controller
{
    public function actionIndex()
    {


        $tasks = Tasks::find()->all();

        $final_date = (new \yii\db\Query())
            ->select(['final_date'])
            ->from('tasks')
        ->all();


        if (is_null($tasks)) {
            throw new Exception("нет тасков!");
        }

        return $this->render('index', compact('tasks', 'final_date'));


    }

}