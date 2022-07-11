<section class="s-map">
	<div id="map" style="width: 100%; height: 400px;"></div>
</section>
<footer itemprop="hasPart" itemscope itemtype="http://schema.org/WPFooter">
	<div class="container">
			<div class="footer">
					<div class="footer__item">
							<div class="footer__logo">
									<img loading="lazy" data-src="/assets/img/logo.svg" alt="Логотип" />
									<p>Сеть пансионатов для пожилых людей</p>
							</div>
							<div class="footer__social">
									<a href="{$whatsapp}" target="_blank" class="footer__social-items">
											<img loading="lazy" data-src="/assets/img/footer__wa.svg" alt="" />
									</a>
									<a href="#" class="footer__social-items">
											<img loading="lazy" data-src="/assets/img/footer__tg.svg" alt="" />
									</a>
									<a href="#" class="footer__social-items">
											<img loading="lazy" data-src="/assets/img/footer_y.svg" alt="" />
									</a>
							</div>
							<div class="footer__number">
									<a href="tel:{$city_id | resource : 'phone' | phone}">{$city_id | resource : "phone"}</a>
							</div>
							<div class="footer__mail">
									<a href="mailto:info@nursing-home.website">info@nursing-home.website</a>
							</div>
							<div class="footer__adres">
									<p>{$city_id | resource : "adress"}</p>
									<p><span>Мы работаем КРУГЛОСУТОЧНО</span></p>
							</div>
					</div>
					<div class="footer__item">
							<div class="footer__title">
									Услуги
							</div>
							<div class="footer__service">
								{'!pdoResources' | snippet : [
									'parents' => 217,
									'resources' => -$id,
									'limit' => 8,
									'sortby' => 'RAND()',
									'tpl' => '@INLINE <a href="/{$id | url}">{$pagetitle}</a>',
									'includeTVs' => 'fieldImage',
									'tvPrefix' => '',
									'city_link' => $city_link,
								]}
							</div>
					</div>
					<div class="footer__item">
							<div class="footer__title">
									О пансионате
							</div>
							<div class="footer__service">
								{'!pdoMenu'|snippet:[
									'parents' => 264,
									'showHidden' => '1',
									'sortby' => 'menuindex',
									'sortdir' => 'ASC',
									'tplOuter' => '@INLINE {$wrapper}',
									'tpl' => '@INLINE <a href="/{$link}">{$menutitle}</a>',
								]}
								{'!pdoMenu'|snippet:[
									'parents' => 0,
									'showHidden' => '1',
									'sortby' => 'menuindex',
									'sortdir' => 'ASC',
									'tplOuter' => '@INLINE {$wrapper}',
									'tpl' => '@INLINE <a href="/{$link}">{$menutitle}</a>',
									'includeTVs' => 'menu_check_no',
									'tvPrefix' => '',
									'where' => '{"template:!=": "", "AND:menu_check_no:IS": null}'
								]}
							</div>
					</div>
			</div>
			<div class="footer__copyright">
					<p>© 2012 - {'' | date : 'Y'} г. Официальный сайт сети частных пансионатов для пожилых "Родной дом". Представленная на сайте информация не является публичной офертой.</p>
					<a class="policy" href="/{260 | url}">Политика конфиденциальности</a>
			</div>
	</div>
</footer>
<div style="display: none;" class="modal call__back" id="excursion">
		<h2 class="modal__title">Запишитесь на бесплатную экскурсию!</h2>
		<p class="modal__subtitle">Выбор пансионата для вашего близкого человека - ответственная задача. Посмотрите своими глазами на условия в наших домах, познакомьтесь с персоналом.</p>
		{$_modx->runSnippet('!AjaxForm',[
			'form' => '@FILE chunks/form/tpl.form_1.tpl'
			'snippet' => 'FormIt'
			'hooks' => 'validate,email,SendController,FormItSaveForm'
			'emailSubject' => 'Получить консультацию'
			'emailTo' => 'hello@lewell.studio'
			'emailFrom' => $from_email
			'emailTpl' => '@FILE chunks/form/tplEmail.tpl'
			'validationErrorMessage' => 'В форме содержатся ошибки!'
			'successMessage' => 'Сообщение успешно отправлено'
			'formName' => 'Получить консультацию'
			'formFields' => 'f_name,f_phone,f_urlMessage'
			'fieldNames' => 'f_name==Имя,f_phone==Телефон,f_urlMessage==url'
			'customValidators' => 'phoneValidate'
			'validate' => 'f_phone:required:phoneValidate'
		])}
		<p class="copy">
				Нажимая кнопку “отправить”, вы соглашаетесь с <a href="/{260 | url}">политикой конфеденциальности</a> данного сайта
		</p>
</div>
<div style="display: none;" class="modal call__back" id="success">
		<h2 class="modal__title">Ваша заявка успешно отправлена</h2>
</div>
<div style="display: none;" class="modal call__back" id="call__back">
		<h2 class="modal__title">Заполните форму и мы с вами свяжемся</h2>
		{$_modx->runSnippet('!AjaxForm',[
			'form' => '@FILE chunks/form/tpl.form_2.tpl'
			'snippet' => 'FormIt'
			'hooks' => 'validate,email,SendController,FormItSaveForm'
			'emailSubject' => 'Получить консультацию'
			'emailTo' => 'hello@lewell.studio'
			'emailFrom' => $from_email
			'emailTpl' => '@FILE chunks/form/tplEmail.tpl'
			'validationErrorMessage' => 'В форме содержатся ошибки!'
			'successMessage' => 'Сообщение успешно отправлено'
			'formName' => 'Получить консультацию'
			'formFields' => 'f_name,f_phone,f_urlMessage'
			'fieldNames' => 'f_name==Имя,f_phone==Телефон,f_urlMessage==url'
			'customValidators' => 'phoneValidate'
			'validate' => 'f_phone:required:phoneValidate'
		])}
		<p class="copy">
				Нажимая кнопку “отправить”, вы соглашаетесь с <a href="/{260 | url}">политикой конфеденциальности</a> данного сайта
		</p>
</div>
<div style="display: none;" class="modal call__back send__review" id="send__review">
	<h2 class="modal__title">Оставьте свой отзыв</h2>
	{$_modx->runSnippet('!AjaxForm',[
		'form' => '@FILE chunks/form/tpl.form_review.tpl'
		'snippet' => 'FormIt'
		'hooks' => 'validate,addReview,email,SendController,FormItSaveForm'
		'emailSubject' => 'Отзыв'
		'emailTo' => 'hello@lewell.studio'
		'emailFrom' => $from_email
		'emailTpl' => '@FILE chunks/form/tplEmail.tpl'
		'validationErrorMessage' => 'В форме содержатся ошибки!'
		'successMessage' => 'Сообщение успешно отправлено'
		'formName' => 'Отзыв'
		'formFields' => 'f_name,f_phone,f_urlMessage,f_rating'
		'fieldNames' => 'f_name==Имя,f_review==Отзыв,f_rating==Оценка,f_urlMessage==url'
	])}
</div>
<div style="display: none;" class="modal call__back" id="city">
		<form action="" class="search__modal-form">
			<button type="submit" class="search__modal-form--search">
				<img loading="lazy" data-src="/assets/img/lupagrey.svg" alt="">
			</button>
			<button type="reset" class="search__modal-form--reset">
				<img loading="lazy" data-src="/assets/img/close.svg" alt="">
			</button>
				<input type="text" class="search__modal" id="search_city" placeholder="Найти город">
		</form>
		<div class="city__list">
			<div class="city_result"></div>
		</div>
		<div class="city__list all__citys">
			<img loading="lazy" data-src="/assets/img/preloader.svg" class="preloader">
		</div>
</div>
<div style="display: none;" class="modal call__back" id="watch__map">
		<div id="mobile__map" style="width: 100%;height: 65vh;"></div>
</div>

<div style="display: none;" class="modal call__back" id="thanks">
    <h2 class="modal__title">Спасибо за Вашу заявку!</h2>
</div>

<div class="vcard" style="display: none;">
	<div>
		<span class="category">Сеть пансионатов для пожилых людей</span>
		<span class="fn org">«Свой дом»</span>
	</div>
	<div class="adr">
		<span class="locality">г. {$city_id | resource : "pagetitle"}</span>,
		<span class="street-address">{$city_id | resource : "adress"}</span>
	</div>
	<div>Телефон: <span class="tel">{$city_id | resource : 'phone'}</span></div>
	<div>Мы работаем <span class="workhours">Круглосуточно 24/7</span>
		<span class="url">
			<span class="value-title" title="https://{'!host' | snippet}"> </span>
		</span>
	</div>
 </div>