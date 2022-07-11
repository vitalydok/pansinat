{set $id = $_modx->resource.id}
{set $city_id = $modx->getPlaceholder('city_id')}
{set $city_link = $modx->getPlaceholder('city_link')}
{set $from_email = "no-reply@"~"!host" | snippet}
{if 'mobile' | mobiledetect}
	{set $whatsapp = 'https://wa.me/'~$city_id | resource : "whatsapp"}
{else}
	{set $whatsapp = 'https://web.whatsapp.com/send/?phone='~$city_id | resource : "whatsapp"}
{/if}
<!DOCTYPE html>
<html lang="ru" itemscope itemtype="http://schema.org/WebPage">

<head>
	<meta charset="[[++modx_charset]]" />
	<base href="[[!++site_url]]" />
	<title>{($id | resource : 'seo-title') ? ($id | resource : 'seo-title' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}</title>
	<meta name="description" content="{($id | resource : 'seo-descr') ? ($id | resource : 'seo-descr' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}">
	<meta name="keywords" content="{($id | resource : 'seo-key' != "") ? ($id | resource : 'seo-key') : ($id | resource : 'pagetitle' )}" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	{"!canonical" | snippet}
	<meta property="og:locale" content="ru_RU" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="{($id | resource : 'seo-title') ? ($id | resource : 'seo-title' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}" />
	<meta property="og:description" content="{($id | resource : 'seo-descr') ? ($id | resource : 'seo-descr' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}" />
	<meta property="og:url" content="https://{$.server['SERVER_NAME']}{$.server['REQUEST_URI']}" />
	<meta property="og:site_name" content="Сеть пансионатов для пожилых людей «Свой дом»" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:description" content="{($id | resource : 'seo-descr') ? ($id | resource : 'seo-descr' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}" />
	<meta name="twitter:title" content="{($id | resource : 'seo-title') ? ($id | resource : 'seo-title' | replace_city) : ($id | resource : 'pagetitle' | replace_city)}" />
	<meta property="og:image" content="{($id | resource : 'og_image') ? ('https://'~$.server['SERVER_NAME']~'/'~$id | resource : 'og_image') : ('https://'~$.server['SERVER_NAME']~'/assets/upload/og_image_snippet.jpg')}" />
	<link rel="icon" href="/favicon-32x32.png">
	<link rel="stylesheet" href="/assets/css/style.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" />-->
	<link href="https://fonts.googleapis.com/css2?family=Commissioner:wght@400;600;700&display=swap" rel="stylesheet">
	{block 'schema'}{/block}
</head>

<body{block 'body_class'}{/block}>

	{include 'file:chunks/header.tpl'}
 
	{if ($_modx->resource.template != 1)}
		{include 'file:chunks/infoblocks/page_type_breadcrums.tpl'}
	{/if}

	<main>
		{block 'content'}{/block}
	</main>

	{include 'file:chunks/footer.tpl'}

	{if '!isPageSpeedBot' | snippet == 0}
	<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=eb505fe6-1302-4c4e-8cbc-e50446915e83" type="text/javascript"></script>
	<script>
		ymaps.ready(init);

		function init() {
			var myMap = new ymaps.Map("map", {
				center: [{$city_id | resource : "coord"}],
				zoom: 14,
				controls: [
					'zoomControl', // Ползунок масштаба
					'rulerControl', // Линейка
					'routeButtonControl', // Панель маршрутизации
					'trafficControl', // Пробки
					'typeSelector', // Переключатель слоев карты
					'fullscreenControl', // Полноэкранный режим

					// Поисковая строка
					new ymaps.control.SearchControl({
						options: {
							size: 'large',
							provider: 'yandex#search'
						}
					})

				]
			});

			var myPlacemark = new ymaps.Placemark([{$city_id | resource : "coord"}], {
				hintContent: '{$city_id | resource : "adress"}',
				balloonContent: '{$city_id | resource : "adress"}'
			});
			myMap.behaviors.disable('scrollZoom');
			myMap.geoObjects.add(myPlacemark);
		}
	</script>
	<script>
		ymaps.ready(init);

		function init() {
			var myMap = new ymaps.Map("mobile__map", {
				center: [{$city_id | resource : "coord"}],
				zoom: 14,
				controls: [
					'zoomControl', // Ползунок масштаба
					'rulerControl', // Линейка
					'routeButtonControl', // Панель маршрутизации
					'trafficControl', // Пробки
					'typeSelector', // Переключатель слоев карты
					'fullscreenControl', // Полноэкранный режим

					// Поисковая строка
					new ymaps.control.SearchControl({
						options: {
							size: 'large',
							provider: 'yandex#search'
						}
					})

				]
			});

			var myPlacemark = new ymaps.Placemark([{$city_id | resource : "coord"}], {
				hintContent: '{$city_id | resource : "adress"}',
				balloonContent: '{$city_id | resource : "adress"}'
			});
			myMap.behaviors.disable('scrollZoom');
			myMap.geoObjects.add(myPlacemark);
		}
	</script>
	{/if}

	<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.min.js" type="text/javascript"></script>-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.3/moment.min.js"></script>
	<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>-->
	<script src="/assets/js/scripts.min.js"></script>
	{if '!isPageSpeedBot' | snippet == 0}
	<script type="text/javascript">
		const images = document.querySelectorAll('[loading="lazy"]');
		for (var i = 0; i < images.length; i++) {
				images[i].src = images[i].dataset.src;
		}
	</script>
	{/if}

</body>

</html>