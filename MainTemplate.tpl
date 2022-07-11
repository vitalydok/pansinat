{extends 'file:templates/LayoutTemplate.tpl'}

{block 'body_class'} class="main__body"{/block}

{block 'schema'}
<script type="application/ld+json">
	[
		{
			"@context": "https://schema.org",
			"@type": "MedicalOrganization",
			"name": "Сеть пансионатов для пожилых людей «Свой дом»",
			"alternateName": "Сеть пансионатов для пожилых людей «Свой дом»",
			"url": "https://{"!host" | snippet}/",
			"telephone": "{$city_id | resource : 'phone'}",
			"email": "mailto:info@nursing-home.website",
			"logo": {
					"@type": "ImageObject",
					"url": "https://{"!host" | snippet}/assets/img/logo.svg"
			},
			"address": {
				"@type": "PostalAddress",
				"addressLocality": "{$city_id | resource : "pagetitle"}",
				"streetAddress": "{$city_id | resource : "adress"}"
				}
			},
			{
				"@context": "https://schema.org",
				"@type": "WebSite",
				"url": "https://{"!host" | snippet}/"
			},
			{
				"@context": "https://schema.org",
				"@type": "BreadcrumbList",
				"itemListElement":
				[
					{
						"@type": "ListItem",
						"position": 1,
						"item":
						{
							"@id": "https://{"!host" | snippet}/",
							"name": "Главная"
						}
					},
          {'!pdoCrumbs'|snippet:[
          'showHome' => 0
          'tplWrapper' => '@INLINE {$output}'
          'tpl' => '@FILE chunks/tpl.schema-breadctumbs.tpl'
          'tplCurrent' => '@FILE chunks/tpl.schema-breadctumbs-current.tpl'
          ]}
        ]
      }
			{if ($_modx->resource.parent == 223)}
			,{
				"@context": "https://schema.org",
				"@type": "NewsArticle",
				"headline": "Article headline",
				"image": "https://{"!host" | snippet}/{$id | resource : 'fieldImage'}",
				"datePublished": "{$_modx->resource.publishedon | date : "d.m.Y"}T{$_modx->resource.publishedon | date : "H:i:s"}+03:00",
				"author": [{ 
						"@type": "Person",
						"name": "{266 | resource : 'pagetitle'}",
						"url": "https://{"!host" | snippet}/{$_modx->makeUrl(266,'','',1)}"
					}]
			}
			{/if}
		]
	</script>
{/block}

{block 'content'}

{set $infoblocks = $_modx->resource.infoblocks_array | fromJSON}
{if $infoblocks}
		{foreach $infoblocks as $infoblock}
				{switch $infoblock['block_type']}
						{case 'type_breadcrumbs'}
								{* хлебные крошки *}
								{include 'file:chunks/infoblocks/page_type_breadcrums.tpl'}
						{case 'type_banner'}
								{* баннер *}
								{include 'file:chunks/infoblocks/page_type_banner.tpl'}
						{case 'type_banner_2'}
								{* баннер для услуг *}
								{include 'file:chunks/infoblocks/page_type_banner_2.tpl'}
						{case 'type_tarif'}
								{* тарифы *}
								{include 'file:chunks/infoblocks/page_type_tarif.tpl'}
						{case 'type_adv_1'}
								{* преимущества *}
								{include 'file:chunks/infoblocks/page_type_adv_1.tpl'}
						{case 'type_adv_2'}
								{* преимущества без описания *}
								{include 'file:chunks/infoblocks/page_type_adv_2.tpl'}
						{case 'type_who_order'}
								{* Как оформить *}
								{include 'file:chunks/infoblocks/page_type_who_order.tpl'}
						{case 'type_which_patients'}
								{* Какие пациенты принимаются *}
								{include 'file:chunks/infoblocks/page_type_which_patients.tpl'}
						{case 'type_who_price'}
								{* Что входит в цену *}
								{include 'file:chunks/infoblocks/page_type_who_price.tpl'}
						{case 'type_price'}
								{* Цены на наши услуги *}
								{include 'file:chunks/infoblocks/page_type_price.tpl'}
						{case 'type_medical_care'}
								{* Медицинское обслуживание и услуги *}
								{include 'file:chunks/infoblocks/page_type_medical_care.tpl'}
						{case 'type_calc'}
								{* Калькулятор *}
								{include 'file:chunks/infoblocks/page_type_type_calc.tpl'}
						{case 'type_shedule'}
								{* Распорядок дня *}
								{include 'file:chunks/infoblocks/page_type_shedule.tpl'}
						{case 'type_guest'}
								{* Досуг для постояльцев *}
								{include 'file:chunks/infoblocks/page_type_guest.tpl'}
						{case 'type_form_1'}
								{* Форма 1 *}
								{include 'file:chunks/infoblocks/page_type_form_1.tpl'}
						{case 'type_content'}
								{* Текстовый блок *}
								{include 'file:chunks/infoblocks/page_type_content.tpl'}
						{case 'type_type_number'}
								{* Типы номеров и цены *}
								{include 'file:chunks/infoblocks/page_type_type_number.tpl'}
						{case 'type_video'}
								{* Видео *}
								{include 'file:chunks/infoblocks/page_type_video.tpl'}
						{case 'type_faq'}
								{* Ответы на вопросы *}
								{include 'file:chunks/infoblocks/page_type_faq.tpl'}
						{case 'type_reviews'}
								{* Отзывы *}
								{include 'file:chunks/infoblocks/page_type_reviews.tpl'}
						{case 'type_steps_help'}
								{* Как обратиться за помощью *}
								{include 'file:chunks/infoblocks/page_type_steps_help.tpl'}
						{case 'type_form_text'}
								{* Как обратиться за помощью *}
								{include 'file:chunks/infoblocks/page_type_form_text.tpl'}
						{case 'type_care'}
								{* Программа ухода *}
								{include 'file:chunks/infoblocks/page_type_care.tpl'}
						{case 'type_articles'}
								{* Другие статьи *}
								{include 'file:chunks/infoblocks/page_type_articles.tpl'}
						{case 'type_other_services'}
								{* Другие услуги *}
								{include 'file:chunks/infoblocks/page_type_other_services.tpl'}
						{case 'type_table_of_contents'}
								{* Быстрые ссылки *}
								{include 'file:chunks/infoblocks/page_type_table_of_contents.tpl'}
				{/switch}
		{/foreach}
{/if}

{/block}