<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "favourites".
 *
 * @property int $id
 * @property int $user_id
 * @property int $task_id
 * @property string $name
 */
class Favourites extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'favourites';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'task_id', 'name'], 'required'],
            [['user_id', 'task_id'], 'integer'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'task_id' => 'Task ID',
            'name' => 'Name',
        ];
    }
}