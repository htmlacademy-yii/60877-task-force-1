<main class="page-main">

        <div class="main-container page-container">
            <section class="user__search">
          <?php  extract($users, EXTR_PREFIX_SAME, "wddx"); ?>    
<?php foreach($users as $item):?>



                <div class="content-view__feedback-card user__search-wrapper">
                    <div class="feedback-card__top">
                        <div class="user__search-icon">
                            <a href="#">
                                
                            <img src="<?php echo $item->user_img?>" width="65" height="65">
        
                        </a>
                            <span>    <?php echo count($item->activeTasks) ?> заданий</span>
                            <span><?php echo count($item->activeReplies) ?> отзывов</span>
                        </div>
                        <div class="feedback-card__top--name user__search-card">
                            <p class="link-name"><a href="#" class="link-regular"><?php echo $item->name; ?></a></p>

                            <?php $i = 0; while($i<$item->user_stars):?> 
                            
                                <span></span>
    
                            <?php $i++; endwhile; ?> 

                            <?php $numberDisabled = 5-$item->user_stars; $b =0; while($b<$numberDisabled):?>
                              <span class="star-disabled"></span>
                           <?php $b++; endwhile; ?>

                            <b><?php echo $item->user_rating?></b>
                            <p class="user__search-content">

<?php foreach($item->getTagsArray() as $tagsItem):?>
                          <a href="" class="link-regular">  <?php echo ($tagsItem.", ");?></a>

                    <?php endforeach;?>

                            </p>
                        </div>


                        <?php 
                        
                           $wasOnSite = (strtotime('now')-strtotime($item->user_was_on_site));
                           $days = floor($wasOnSite/86400);
                           $hours = floor(($wasOnSite-$days*86400)/(60 * 60));
                           $min = floor(($wasOnSite-($days*86400+$hours*3600))/60);
                        ?>

                        <span class="new-task__time">Был на сайте <?php 
                         if ($days >1) {
                            echo $days." дней ";
                        }
                        else if($hours>1&&1<$days) {
                            echo $hours." часов ";
                        }
                    elseif ($min<60&&1<$hours) {
                            echo $min." минут ";
                        }
                      
                       
                        
                        
                        ?>  назад</span>
                    </div>
                    <div class="link-specialization user__search-link--bottom">
         
                        <a href="#" class="link-regular"></a>
                   
                    </div>
                </div>
                <?php endforeach; ?>
            </section>
            <section  class="search-task">
                <div class="search-task__wrapper">
                    <form class="search-task__form" name="users" method="post" action="#">
                        <fieldset class="search-task__categories">
                            <legend>Категории</legend>
                            <input class="visually-hidden checkbox__input" id="101" type="checkbox" name="" value="" checked disabled>
                            <label for="101">Курьерские услуги </label>
                            <input class="visually-hidden checkbox__input" id="102" type="checkbox" name="" value="" checked>
                            <label  for="102">Грузоперевозки </label>
                            <input class="visually-hidden checkbox__input" id="103" type="checkbox" name="" value="">
                            <label  for="103">Переводы </label>
                            <input class="visually-hidden checkbox__input" id="104" type="checkbox" name="" value="">
                            <label  for="104">Строительство и ремонт </label>
                            <input class="visually-hidden checkbox__input" id="105" type="checkbox" name="" value="">
                            <label  for="105">Выгул животных </label>
                        </fieldset>
                        <fieldset class="search-task__categories">
                            <legend>Дополнительно</legend>
                            <input class="visually-hidden checkbox__input" id="106" type="checkbox" name="" value="" disabled>
                            <label for="106">Сейчас свободен</label>
                            <input class="visually-hidden checkbox__input" id="107" type="checkbox" name="" value="" checked>
                            <label for="107">Сейчас онлайн</label>
                            <input class="visually-hidden checkbox__input" id="108" type="checkbox" name="" value="" checked>
                            <label for="108">Есть отзывы</label>
                            <input class="visually-hidden checkbox__input" id="109" type="checkbox" name="" value="" checked>
                            <label for="109">В избранном</label>
                        </fieldset>
                        <label class="search-task__name" for="110">Поиск по имени</label>
                        <input class="input-middle input" id="110" type="search" name="q" placeholder="">
                        <button class="button" type="submit">Искать</button>
                    </form>
                </div>
            </section>
        </div>
    </main>