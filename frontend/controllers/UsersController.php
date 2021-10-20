<?php

namespace frontend\controllers;

use frontend\models\Users;
use yii\web\Controller;
use yii\db\Query;

class UsersController extends Controller
{
    public function actionIndex()
    {

        $users = Users::find()->limit(3)->with(['activeTasks', 'tags'])->all();
        return $this->render('index', compact('users'));

    }
}
