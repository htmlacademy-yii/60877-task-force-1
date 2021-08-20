<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "messages".
 *
 * @property int $id
 * @property string $text
 * @property int $client_id
 * @property int $task_id
 * @property string $name
 */
class Messages extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'messages';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'text', 'client_id', 'task_id', 'name'], 'required'],
            [['id', 'client_id', 'task_id'], 'integer'],
            [['text', 'name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'text' => 'Text',
            'client_id' => 'Client ID',
            'task_id' => 'Task ID',
            'name' => 'Name',
        ];
    }
}