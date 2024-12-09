<h2>Notifier v 3.1</h2>

<h2><br />
notifier module for Cotonti Siena 0.9.25 up to PHP version 7.4.</h2>

<p><br />
### Исходники по адресу<br />
<a href="https://github.com/Cmsworks/cot-notifier" rel="nofollow">https://github.com/Cmsworks/cot-notifier</a></p>

<p>### доработанная версия<br />
<a href="https://github.com/webitproff/cot_Notifier_3.0" rel="nofollow">https://github.com/webitproff/cot_Notifier_3.0</a></p>

<p>Notifier позволяет пользователям &laquo;следить&raquo; за страницей или темой и отправляет им электронное письмо при добавлении нового комментария или сообщения.</p>

<p>Функции<br />
Позволяет подписываться на несколько областей контента<br />
Позволяет автоматически подписываться на собственный контент в соответствии с предпочтениями пользователя.<br />
Получайте автоматические уведомления по электронной почте о новом контенте, включая сводку недавно опубликованного контента и ссылки для просмотра контента на сайте или отмены подписки.<br />
Электронные письма могут отправляться немедленно или в виде ежедневного, еженедельного или ежемесячного дайджеста в соответствии с предпочтениями пользователя.<br />
Настройки пользователя можно настроить для каждой области контента.<br />
Назначает теги шаблонов для быстрой подписки/отписки в областях контента.<br />
Включает автономный обзор подписок и пользовательских настроек.<br />
Электронные письма могут быть в формате HTML или простого текста в соответствии с предпочтениями пользователя.<br />
Для HTML-письма требуется пользовательский плагин, который использует CoTemplate и Emogrifier для автоматической генерации кроссплатформенных HTML-писем со встроенными стилями.<br />
Включает шаблоны HTML-писем по умолчанию на основе HTML Email Boilerplate.<br />
Новое в версии 3.0<br />
Полная переработка для Siena<br />
Использует гибкие шаблоны<br />
Уведомление через PM больше не поддерживается.</p>

<p><br />
Установка<br />
Извлеките и загрузите файлы<br />
Перейдите в админ &gt; расширения &gt; уведомитель &gt; установить<br />
Перейдите в админ &gt; расширения &gt; htmlmail &gt; установить (если вам нужна поддержка HTML-почты)</p>

<p>в <strong>forums.posts.tpl</strong> добавить после названия темы:</p>

<pre class="brush:xml;">
&lt;div uk-grid&gt;
    &lt;div&gt;{NOTIFIER_TOGGLE}&lt;/div&gt;
    &lt;div&gt;{NOTIFIER_SUBSCRIPTIONS} &lt;/div&gt;
&lt;/div&gt;</pre>

<p><br />
или так</p>

<pre class="brush:xml;">
        &lt;!-- IF {PHP.cot_modules.notifier} --&gt;
        &lt;div&gt;
          &lt;a class=&quot;uk-button uk-button-default&quot; href=&quot;{NOTIFIER_TOGGLE_URL}&quot;&gt;{NOTIFIER_TOGGLE_TEXT}&lt;/a&gt;
        &lt;/div&gt;
        &lt;div&gt;{NOTIFIER_SUBSCRIPTIONS} &lt;/div&gt;
        &lt;!-- ENDIF --&gt;</pre>

<p><br />
ссылка в шаблоне<br />
&nbsp;</p>

<pre class="brush:xml;">
&lt;!-- IF {PHP.cot_modules.notifier} --&gt;
&lt;a class=&quot;uk-link-heading&quot; href=&quot;{PHP|cot_url(&#39;notifier&#39;)}&quot;&gt;
    &lt;span class=&quot;uk-text-middle&quot;&gt;&lt;i class=&quot;fa-solid fa-tower-cell fa-xl&quot;&gt;&lt;/i&gt;&lt;/span&gt;
    &lt;span class=&quot;uk-text-middle&quot;&gt;{PHP.L.YourSubscriptions}&lt;/span&gt;
&lt;/a&gt;
&lt;!-- ENDIF --&gt;</pre>

<p>&nbsp;</p>

<p>Notifier allows users to &#39;watch&#39; a page or topic and sends them an email when<br />
a new comment or post was added.</p>

<p>## Features</p>

<p>* Allows subscription to several content areas<br />
* Allows auto-subscribe to your own content, according to user preferences.<br />
* Receive automatic notification by email of new content, including a summary of<br />
&nbsp; the newly posted content and links to see the content on-site or unsubscribe.<br />
* Emails can be sent immediately or as a daily, weekly or monthly digest,<br />
&nbsp; according to user preferences.<br />
* User preferences can be configured for each content area.<br />
* Assigns template tags for quick subscribe/unsubscribe in content areas.<br />
* Includes standalone overview of subscriptions and user preferences.<br />
* Emails can be in HTML or plain text, according to user preferences.<br />
* HTML email requires a custom plugin which uses CoTemplate and Emogrifier to<br />
&nbsp; automatically generate cross-platform HTML emails with inline styles.<br />
* Includes default HTML email templates based on HTML Email Boilerplate.</p>

<p>### New in v3.0</p>

<p>* Complete rewrite for Siena<br />
* Uses flexible templating<br />
* Notification by PM is no longer supported.</p>

<p>## Installation</p>

<p>* Extract and upload files<br />
* Go to admin &gt; extensions &gt; notifier &gt; install<br />
* Go to admin &gt; extensions &gt; htmlmail &gt; install (if you want HTML email support)</p>

<p>&nbsp;</p>
