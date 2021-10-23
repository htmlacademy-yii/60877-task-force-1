<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "portfolio".
 *
 * @property int $id
 * @property int $user_id
 * @property string $photo
 */
class Portfolio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'portfolio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'photo'], 'required'],
            [['user_id'], 'integer'],
            [['photo'], 'string', 'max' => 255],
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
            'photo' => 'Photo',
        ];
    }
}