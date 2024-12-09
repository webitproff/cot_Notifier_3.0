# cot_Notifier_3.0
notifier module for Cotonti Siena 0.9.25 up to PHP version 7.4. Allows subscription to several content areas


Исходники по адресу
https://github.com/Cmsworks/cot-notifier
Notifier позволяет пользователям «следить» за страницей или темой и отправляет им электронное письмо при добавлении нового комментария или сообщения.
Функции
Позволяет подписываться на несколько областей контента
Позволяет автоматически подписываться на собственный контент в соответствии с предпочтениями пользователя.
Получайте автоматические уведомления по электронной почте о новом контенте, включая сводку недавно опубликованного контента и ссылки для просмотра контента на сайте или отмены подписки.
Электронные письма могут отправляться немедленно или в виде ежедневного, еженедельного или ежемесячного дайджеста в соответствии с предпочтениями пользователя.
Настройки пользователя можно настроить для каждой области контента.
Назначает теги шаблонов для быстрой подписки/отписки в областях контента.
Включает автономный обзор подписок и пользовательских настроек.
Электронные письма могут быть в формате HTML или простого текста в соответствии с предпочтениями пользователя.
Для HTML-письма требуется пользовательский плагин, который использует CoTemplate и Emogrifier для автоматической генерации кроссплатформенных HTML-писем со встроенными стилями.
Включает шаблоны HTML-писем по умолчанию на основе HTML Email Boilerplate.
Новое в версии 3.0
Полная переработка для Siena
Использует гибкие шаблоны
Уведомление через PM больше не поддерживается.


Установка
Извлеките и загрузите файлы
Перейдите в админ > расширения > уведомитель > установить
Перейдите в админ > расширения > htmlmail > установить (если вам нужна поддержка HTML-почты)

в forums.posts.tpl добавить после названия темы:

<div uk-grid>
    <div>{NOTIFIER_TOGGLE}</div>
    <div>{NOTIFIER_SUBSCRIPTIONS} </div>
</div>
ссылка в шаблоне
<!-- IF {PHP.cot_modules.notifier} -->
<li><a class="uk-link-heading" href="{PHP|cot_url('notifier')}"><span class="uk-text-middle"><i class="fa-solid fa-tower-cell fa-xl"></i></span><span class="uk-text-middle">{PHP.L.YourSubscriptions}</span></a></li>
	<li class="uk-nav-divider"></li>
<!-- ENDIF -->

Notifier allows users to 'watch' a page or topic and sends them an email when
a new comment or post was added.

## Features

* Allows subscription to several content areas
* Allows auto-subscribe to your own content, according to user preferences.
* Receive automatic notification by email of new content, including a summary of 
  the newly posted content and links to see the content on-site or unsubscribe.
* Emails can be sent immediately or as a daily, weekly or monthly digest, 
  according to user preferences.
* User preferences can be configured for each content area.
* Assigns template tags for quick subscribe/unsubscribe in content areas.
* Includes standalone overview of subscriptions and user preferences.
* Emails can be in HTML or plain text, according to user preferences. 
* HTML email requires a custom plugin which uses CoTemplate and Emogrifier to 
  automatically generate cross-platform HTML emails with inline styles.
* Includes default HTML email templates based on HTML Email Boilerplate.

### New in v3.0

* Complete rewrite for Siena
* Uses flexible templating
* Notification by PM is no longer supported.

## Installation

* Extract and upload files
* Go to admin > extensions > notifier > install
* Go to admin > extensions > htmlmail > install (if you want HTML email support)
