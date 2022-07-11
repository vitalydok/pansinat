<header itemprop="hasPart" itemscope itemtype="http://schema.org/WPHeader">
	<div class="container">
		<div class="nav__top">
			<div class="logo">
			{$id != 1 ? '<a href="/">' : '<div>'}<img loading="lazy" data-src="/assets/img/logo.svg" alt="Логотип">{$id != 1 ? '</a>' : '</div>'}
				<p>Сеть пансионатов для пожилых людей</p>
			</div>
			<div class="links">
				{if ($city_id | resource : 'phone_2')}
				<div class="for-moskow-and-mo">
						<div class="links__city" data-touch='false' data-fancybox data-src="#city">
								<img src="/assets/img/Location Pin - 192x192.svg" alt=""> {$city_id | resource : "pagetitle"}
						</div>
						<p>Круглосуточно 24/7</p>
				</div>
				<div class="links__phone">
						<a href="tel:{$city_id | resource : 'phone' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt=""> {$city_id | resource : "phone"}</a>
						<a href="tel:{$city_id | resource : 'phone_2' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt=""> {$city_id | resource : "phone_2"}</a>
				</div>
				{else}
				<div class="links__city" data-fancybox data-src="#city" data-touch="false">
					<img loading="lazy" data-src="/assets/img/location.svg" alt=""> {$city_id | resource : "pagetitle"}
				</div>
				<div class="links__phone">
					<a href="tel:{$city_id | resource : 'phone' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt=""> {$city_id | resource : "phone"}</a>
					<p>Круглосуточно 24/7</p>
				</div>
				{/if}
				<div class="links__social">
					<div class="links__social-item">
						<a href="{$whatsapp}" target="_blank"><img loading="lazy" data-src="/assets/img/whatsapp.svg" alt=""></a>
					</div>
					<div class="links__social-item">
						<a href="javascript:void(0)" target="_blank"><img loading="lazy" data-src="/assets/img/telegram.svg" alt=""></a>
					</div>
				</div>
				<div class="links__button">
					<button data-fancybox data-src="#call__back" class="btn-blue">Оставить заявку</button>
				</div>
			</div>
		</div>
		<div class="nav__bottom">
			<div class="navbar">
				<nav itemprop="hasPart" itemscope itemtype="http://schema.org/SiteNavigationElement">
					<ul id="menu">
						<li><div class="serv">Услуги</div>
							{'!pdoMenu'|snippet:[
								'parents' => 217,
								'level' => '3',
								'showHidden' => '1',
								'sortby' => 'menuindex',
								'sortdir' => 'ASC',
								'tplOuter' => '@INLINE <div class="dropdown_list">{$wrapper}</div>',
								'tplInner' => '@INLINE {$wrapper}',
								'tplCategoryFolder' => '@FILE chunks/tpl.tplCategoryFolder.tpl',
								'tplParentRow' => '@FILE chunks/tpl.tplCategoryFolder.tpl',
								'tplInnerRow' => '@INLINE <a href="/{$link}">{$menutitle}</a>',
								'tpl' => '@INLINE <div class="dropdown__item"><a href="/{$link}" class="dropdown__item-title">{$menutitle}</a></div>',
							]}
						</li>
						<li class="drop haschild serv">О нас
							<div class="dropdown">
							{'!pdoMenu'|snippet:[
								'parents' => 264,
								'showHidden' => '0',
								'sortby' => 'menuindex',
								'sortdir' => 'ASC',
								'tplOuter' => '@INLINE {$wrapper}',
								'tpl' => '@INLINE <a href="/{$link}" class="drop">{$menutitle}</a>',
							]}
						</div>
					</li>
						{'!pdoMenu'|snippet:[
							'parents' => 0,
							'showHidden' => '0',
							'sortby' => 'menuindex',
							'sortdir' => 'ASC',
							'tplOuter' => '@INLINE {$wrapper}',
							'tpl' => '@INLINE<li><a href="/{$link}" class="drop">{$menutitle}</a></li>',
						]}
					</ul>
				</nav>
			</div>
			<div class="search">
				<form action="/{263 | url}" class="search__form">
					<input type="text" name="search" placeholder="Поиск" class="search__input" required>
					<button class="search__btn">Найти</button>
				</form>
			</div>
		</div>
		<div class="mobi">
			<div class="mobi__logo">
				<img loading="lazy" data-src="/assets/img/logo.svg" alt="">
			</div>
			<div class="mobi__phone">
				<a href="tel:{$city_id | resource : 'phone' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt="">{$city_id | resource : "phone"}</a>
				{if $city_id | resource : "phone_2"}
				<a href="tel:{$city_id | resource : 'phone_2' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt="">{$city_id | resource : "phone_2"}</a>
				{/if}
				<p>Сеть пансионатов для пожилых людей</p>
			</div>
			<div class="hamburger-menu">
				<div class="bar" onclick="mobileMenu()"></div>
			</div>
		</div>


		<nav class="mobile-menu">
			<div class="search">
				<form action="/{263 | url}" class="search__form">
					<input type="text" name="search" placeholder="Поиск" class="search__input">
					<button class="search__btn">Найти</button>
				</form>
			</div>
			<ul>
				<li class="has-children">Услуги<span class="icon-arrow"></span>
					{'!pdoMenu'|snippet:[
						'parents' => 217,
						'level' => '3',
						'showHidden' => '1',
						'sortby' => 'menuindex',
						'sortdir' => 'ASC',
						'tplOuter' => '@INLINE <ul class="children">{$wrapper}</ul>',
						'tplInner' => '@INLINE {$wrapper}',
						'tplCategoryFolder' => '@FILE chunks/tpl.tplCategoryFolder-mobile.tpl',
						'tplParentRow' => '@FILE chunks/tpl.tplCategoryFolder-mobile.tpl',
						'tplInnerRow' => '@INLINE <li><a href="/{$link}">{$menutitle}</a></li>',
						'tpl' => '@INLINE <li><a href="/{$link}">{$menutitle}</a></li>',
					]}
				</li>
				<li class="has-children">О нас<span class="icon-arrow"></span>
					{'!pdoMenu'|snippet:[
						'parents' => 264,
						'level' => '3',
						'showHidden' => '1',
						'sortby' => 'menuindex',
						'sortdir' => 'ASC',
						'tplOuter' => '@INLINE <ul class="children">{$wrapper}</ul>',
						'tplInner' => '@INLINE {$wrapper}',
						'tplCategoryFolder' => '@FILE chunks/tpl.tplCategoryFolder-mobile.tpl',
						'tplParentRow' => '@FILE chunks/tpl.tplCategoryFolder-mobile.tpl',
						'tplInnerRow' => '@INLINE <li><a href="/{$link}">{$menutitle}</a></li>',
						'tpl' => '@INLINE <li><a href="/{$link}">{$menutitle}</a></li>',
					]}
				</li>
				{'!pdoMenu'|snippet:[
					'parents' => 0,
					'showHidden' => '0',
					'sortby' => 'menuindex',
					'sortdir' => 'ASC',
					'tplOuter' => '@INLINE {$wrapper}',
					'tpl' => '@INLINE<li><a href="/{$link}" class="drop">{$menutitle}</a></li>',
				]}
			</ul>
			<div class="mobi-contact">
				<a href="tel:{$city_id | resource : 'phone' | phone}" class="number"><img loading="lazy" data-src="/assets/img/Phone.svg" alt="">{$city_id | resource : "phone"}</a>
				<p>Круглосуточно 24/7</p>
				<button data-fancybox data-src="#call__back" class="btn-blue">Оставить заявку</button>
				<div class="social">
					<div class="social__item"><a href="#" target="_blank"><img loading="lazy" data-src="/assets/img/telegram.svg" alt=""></a></div>
					<div class="social__item"><a href="{$whatsapp}" target="_blank"><img loading="lazy" data-src="/assets/img/whatsapp.svg" alt=""></a></div>
				</div>
			</div>
		</nav>
	</div>
</header>