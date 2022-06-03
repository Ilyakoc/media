<?php use common\components\helpers\HYii as Y; ?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <?php
    CmsHtml::head();
    CmsHtml::js($this->template . '/js/bootstrap.min.js');
    CmsHtml::js($this->template . '/js/jquery.mmenu.all.js');
    CmsHtml::js($this->template . '/js/libs.js');
    CmsHtml::js($this->template . '/js/script.js');
    CmsHtml::js('/js/main.js');
    CmsHtml::js($this->template . '/js/custom.js');
    ?>

    <?php if (\Yii::app()->params['isAdaptive']): ?>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <? else: ?>
        <meta name="viewport" content="width=device-width">
    <? endif; ?>
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="canonical" href="<?=$this->createAbsoluteUrl('/').preg_replace('/\?.*$/', '', $_SERVER['REQUEST_URI'])?>" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>

<body class="<?= D::c($this->isIndex(), 'index-page', 'inner-page') ?> <?= D::cms('vertical_template') ? 'vertical-template' : '' ?>">

<div id="my-page" class="">

    <header id="my-header" class="header Fixed">
        <div class="header-bottom header-bottom--type-2">
            <div class="header-bottom__container">
                <div class="header-bottom__row">
                    <div class="header-bottom__column header-bottom__left">
                      <div class="header-bottom__hamburger">
                        <button class="hamburger hamburger--spin" type="button">
                          <span class="hamburger__box hamburger-box">
                            <span class="hamburger__inner hamburger-inner"></span>
                          </span>
                        </button>
                      </div>

                      <a class="logo" href="/">
                          <img class="logo__img" src="<?=$this->template?>/images/logo.svg" alt="logo">
                      </a>
                    </div>

                    <div class="header-bottom__column header-bottom__right">
                        <div class="header-bottom__menu">
                            <div class="menu">
                              <?php
                              $this->widget('\menu\widgets\menu\MenuWidget', array(
                                  'rootLimit' => D::cms('menu_limit')
                              ));
                              ?>
                            </div>
                        </div>
                        <?php if (D::yd()->isActive('feedback')):?>
                            <a href="#block-6" class="contact-button-header"><span>ОСТАВИТЬ ЗАЯВКУ</span></a>
                        <?php endif;?>
                        <div class="header-bottom__phones">
                          <div class="header-bottom__phone">
                            <div class="phone">
                                <div class="contact-ico">
                                    <svg width="11" height="12" viewBox="0 0 11 12"  xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M2.51765 0.188652L4.18976 2.3888C4.40978 2.65282 4.36577 3.00484 4.18976 3.22486L3.04568 4.36894C2.51765 4.85297 6.12589 8.46121 6.60993 7.97718L7.754 6.8331C7.97402 6.61309 8.37005 6.61309 8.59006 6.7891L10.7902 8.46121C11.0542 8.68123 11.0542 8.98925 10.8782 9.20926L9.64613 10.4413L9.51412 10.5734C7.97402 12.0695 4.10176 9.29727 2.91368 8.10919C1.72559 6.87711 -1.0906 3.00484 0.449508 1.46474L0.581517 1.37673L1.7696 0.144649C1.98961 -0.075366 2.34164 -0.031363 2.51765 0.188652Z" />
                                    </svg>
                                </div>
                                <a class="contact-link" href="tel:<?= preg_replace('/[^0-9+]/', '', D::cms('phone')) ?>"><?= D::cms('phone') ?></a>

                                <? if (D::cms('phone2') || D::yd()->isActive('feedback')): ?>
                                <div class="contact-ico phone__toggle-modal">
                                  <svg width="10" height="6" viewBox="0 0 10 6" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 3.81846L8.88906 0L10 1.09077L5 6L0 1.09077L1.11094 0L5 3.81846Z"/>
                                  </svg>
                                </div>
                                <? endif ?>

                                <div class="phone__modal">
                                  <div class="phone">
                                      <div class="contact-ico">
                                          <svg width="11" height="12" viewBox="0 0 11 12"  xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd" d="M2.51765 0.188652L4.18976 2.3888C4.40978 2.65282 4.36577 3.00484 4.18976 3.22486L3.04568 4.36894C2.51765 4.85297 6.12589 8.46121 6.60993 7.97718L7.754 6.8331C7.97402 6.61309 8.37005 6.61309 8.59006 6.7891L10.7902 8.46121C11.0542 8.68123 11.0542 8.98925 10.8782 9.20926L9.64613 10.4413L9.51412 10.5734C7.97402 12.0695 4.10176 9.29727 2.91368 8.10919C1.72559 6.87711 -1.0906 3.00484 0.449508 1.46474L0.581517 1.37673L1.7696 0.144649C1.98961 -0.075366 2.34164 -0.031363 2.51765 0.188652Z" />
                                          </svg>
                                      </div>
                                      <a class="contact-link" href="tel:<?= preg_replace('/[^0-9+]/', '', D::cms('phone2')) ?>"><?= D::cms('phone2') ?></a>
                                  </div>

                                  <?php if (D::yd()->isActive('feedback')):?>
                                      <<a href="#block-6" class="contact-button"><span>Заказать&nbsp;звонок</span></a>
                                  <?php endif;?>
                                </div>
                            </div>
                          </div>

                          <div class="header-bottom__phone header-bottom__phone--ico">
                            <div class="phone phone--ico">
                                <div class="phone__ico phone__toggle-modal">
                                  <svg width="13" height="14" viewBox="0 0 13 14" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.97516 0.222934L4.95114 2.8229C5.21113 3.1349 5.15914 3.55089 4.95114 3.81089L3.59916 5.16287C2.97516 5.73486 7.23911 9.99881 7.8111 9.42682L9.16308 8.07483C9.42308 7.81484 9.89108 7.81484 10.1511 8.02283L12.751 9.99881C13.063 10.2588 13.063 10.6228 12.855 10.8828L11.3991 12.3388L11.2431 12.4948C9.42308 14.2628 4.84714 10.9868 3.44316 9.58282C2.03918 8.12683 -1.28878 3.55089 0.531194 1.73092L0.687192 1.62692L2.09117 0.170935C2.35117 -0.0890617 2.76717 -0.0370623 2.97516 0.222934Z" />
                                  </svg>
                                </div>

                                <div class="phone__modal">
                                  <? if (D::cms('phone')): ?>
                                  <div class="phone">
                                      <div class="contact-ico">
                                          <svg width="11" height="12" viewBox="0 0 11 12"  xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd" d="M2.51765 0.188652L4.18976 2.3888C4.40978 2.65282 4.36577 3.00484 4.18976 3.22486L3.04568 4.36894C2.51765 4.85297 6.12589 8.46121 6.60993 7.97718L7.754 6.8331C7.97402 6.61309 8.37005 6.61309 8.59006 6.7891L10.7902 8.46121C11.0542 8.68123 11.0542 8.98925 10.8782 9.20926L9.64613 10.4413L9.51412 10.5734C7.97402 12.0695 4.10176 9.29727 2.91368 8.10919C1.72559 6.87711 -1.0906 3.00484 0.449508 1.46474L0.581517 1.37673L1.7696 0.144649C1.98961 -0.075366 2.34164 -0.031363 2.51765 0.188652Z" />
                                          </svg>
                                      </div>
                                      <a class="contact-link" href="tel:<?= preg_replace('/[^0-9+]/', '', D::cms('phone')) ?>"><?= D::cms('phone') ?></a>
                                  </div>
                                  <? endif ?>

                                  <? if (D::cms('phone2')): ?>
                                  <div class="phone">
                                      <div class="contact-ico">
                                          <svg width="11" height="12" viewBox="0 0 11 12"  xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd" d="M2.51765 0.188652L4.18976 2.3888C4.40978 2.65282 4.36577 3.00484 4.18976 3.22486L3.04568 4.36894C2.51765 4.85297 6.12589 8.46121 6.60993 7.97718L7.754 6.8331C7.97402 6.61309 8.37005 6.61309 8.59006 6.7891L10.7902 8.46121C11.0542 8.68123 11.0542 8.98925 10.8782 9.20926L9.64613 10.4413L9.51412 10.5734C7.97402 12.0695 4.10176 9.29727 2.91368 8.10919C1.72559 6.87711 -1.0906 3.00484 0.449508 1.46474L0.581517 1.37673L1.7696 0.144649C1.98961 -0.075366 2.34164 -0.031363 2.51765 0.188652Z" />
                                          </svg>
                                      </div>
                                      <a class="contact-link" href="tel:<?= preg_replace('/[^0-9+]/', '', D::cms('phone2')) ?>"><?= D::cms('phone2') ?></a>
                                  </div>
                                  <? endif ?>
                                    <?php if (D::yd()->isActive('feedback')):?>
                                        <div class="phone phone-callback">
                                            <a href="#block-6" class="contact-button"><span>Заказать&nbsp;звонок</span></a>
                                        </div>
                                    <?php endif;?>
                                </div>
                            </div>
                          </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main id="my-content" class="content">
        <?=$content?>
    </main>
</div>

<div id="totop"><p>&#xe851;</p> ^ Наверх</div>

<?php //if (D::yd()->isActive('feedback')): // обратный звонок ?>
<!--    <div style="display: none;">-->
<!--        <div id="form-callback">-->
<!--            <div class="popup-info">-->
<!--                --><?php //$this->widget('\feedback\widgets\FeedbackWidget', array('id' => 'callback', 'title'=>'Заказать звонок')) ?>
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<?php //endif; // обратный звонок ?>
<?php echo D::cms('counter'); ?>
</body>
</html>
