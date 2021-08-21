<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "notifications".
 *
 * @property int $id
 * @property int $user_id
 * @property string $title
 * @property string $creation_time
 * @property string $type
 * @property int $task_id
 * @property int $is_view
 */
class Notifications extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'notifications';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'title', 'creation_time', 'type', 'task_id', 'is_view'], 'required'],
            [['user_id', 'task_id', 'is_view'], 'integer'],
            [['creation_time'], 'safe'],
            [['title', 'type'], 'string', 'max' => 255],
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
            'title' => 'Title',
            'creation_time' => 'Creation Time',
            'type' => 'Type',
            'task_id' => 'Task ID',
            'is_view' => 'Is View',
        ];
    }
}