<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "replies".
 *
 * @property int $id
 * @property int $dt_add
 * @property int $rate
 * @property string $deskription
 */
class Replies extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'replies';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['dt_add', 'rate', 'deskription'], 'required'],
            [['dt_add', 'rate'], 'integer'],
            [['deskription'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'dt_add' => 'Dt Add',
            'rate' => 'Rate',
            'deskription' => 'Deskription',
        ];
    }
}