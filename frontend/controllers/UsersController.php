<?php
namespace frontend\controllers;
use frontend\models\Users;
use yii\web\Controller;
use yii\db\Query;

class UsersController extends Controller {
    public function actionIndex()
    {
        $users = Users::find()->limit(3)->with(['activeTasks', 'tags'])->all();

      /*  $attributes = (new \yii\db\Query())
        ->select(['id', 'attribute'])->distinct()
        ->from('tags_attribution')->join('INNER JOIN ', 'tags_attributes', 'tags_attribution.attributes_id=tags_attributes.attribute')
        ->all();
*/

        return $this->render('index', compact('users'));
 
        
    }
}
