<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tasks".
 *
 * @property int $id
 * @property string $final_date
 * @property int $dt_add
 * @property int $category_id
 * @property string $deskription
 * @property string $expire
 * @property string $name
 * @property string $address
 * @property int $budget
 * @property float $lat
 * @property float $long
 */
class Tasks extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tasks';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['final_date', 'dt_add', 'category_id', 'deskription', 'expire', 'name', 'address', 'budget', 'lat', 'long'], 'required'],
            [['final_date', 'expire'], 'safe'],
            [['dt_add', 'category_id', 'budget'], 'integer'],
            [['lat', 'long'], 'number'],
            [['deskription', 'name', 'address'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'final_date' => 'Final Date',
            'dt_add' => 'Dt Add',
            'category_id' => 'Category ID',
            'deskription' => 'Deskription',
            'expire' => 'Expire',
            'name' => 'Name',
            'address' => 'Address',
            'budget' => 'Budget',
            'lat' => 'Lat',
            'long' => 'Long',
        ];
    }
}