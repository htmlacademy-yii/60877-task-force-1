<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property int $id
 * @property string|null $email
 * @property string $name
 * @property string $password
 * @property string $dt_add
 * @property int|null $task_id
 * @property int|null $user_stars
 * @property int|null $user_rating
 * @property string|null $user_search_content
 * @property string|null $user_was_on_site
 * @property string|null $user_search_link
 * @property string|null $user_img
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'password', 'dt_add'], 'required'],
            [['dt_add', 'user_was_on_site'], 'safe'],
            [['task_id', 'user_stars', 'user_rating'], 'integer'],
            [['email'], 'string', 'max' => 20],
            [['name', 'password', 'user_search_content', 'user_search_link', 'user_img'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'email' => Yii::t('app', 'Email'),
            'name' => Yii::t('app', 'Name'),
            'password' => Yii::t('app', 'Password'),
            'dt_add' => Yii::t('app', 'Dt Add'),
            'task_id' => Yii::t('app', 'Task ID'),
            'user_stars' => Yii::t('app', 'User Stars'),
            'user_rating' => Yii::t('app', 'User Rating'),
            'user_search_content' => Yii::t('app', 'User Search Content'),
            'user_was_on_site' => Yii::t('app', 'User Was On Site'),
            'user_search_link' => Yii::t('app', 'User Search Link'),
            'user_img' => Yii::t('app', 'User Img'),
        ];
    }

    /**
     * {@inheritdoc}
     * @return UsersQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new UsersQuery(get_called_class());
    }
   /* public function getTasks()
    {
        return $this->hasMany(Tasks::class, ['user_id' => 'id']);
    }*/
    public function getActiveTasks()
    {
        return $this->hasMany(Tasks::class, ['user_id' => 'id'])->andWhere(['task_status'=>1]);
    }

    public function getActiveReplies()
    {
        return $this->hasMany(Replies::class, ['user_id' => 'id']);
    }
    public function getReplies()
    {
        return $this->hasMany(Tags::class, ['tags_attribution.attributes_id' => 'tags_attributes.id']);
    }
    public function getTags()
    {
        return $this->hasMany(TagsAttributes::class, ['id'=>'id'  ])
                ->viaTable('tags_attribution', ['user_id' => 'id']);
    }
    public function getTagsArray() {
      return array_map(function($item){
          return $item->attributes;
      },
          $this->tags
    );
    }
  
    /*public function getSearchContent()
    {
        return $this->hasMany(Users::class, ['user_search_content'=>'id'])->viaTable('users', ['users.user_search_content'=>'id']);;
    }*/
}

