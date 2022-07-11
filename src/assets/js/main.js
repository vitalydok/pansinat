(function() {
    $('.hamburger-menu').on('click', function() {
        $('.bar').toggleClass('animate');
        $('.mobile-menu').toggleClass('active');
        $('body').toggleClass('locked')
        $('.mobi').toggleClass('mobi__active')
        return false;
    })

})();
if ($(window).width() < 992) {
    $('.services-toggle-btn').click(function() {
        $(this).toggleClass('active');
        $('.services-nav').slideToggle();
    });
    $('.services-lvl1__item').click(function() {
        $(this).toggleClass('active');
        $(this).children('.services-lvl2__wrap').slideToggle();
    });

} else {
    $('.services-toggle-btn').click(function() {
        $(this).toggleClass('active');
        $('.services-nav').toggleClass('active');
    });
}
$('.mobile-menu').on('click', ".icon-arrow", function() {
    $(this).toggleClass('open');
    $(this).next().slideToggle('slow', 'linear');
});

function mobileMenu() {}

var phoneMask = $('.phone');
phoneMask.mask("+7 (999) 999-99-99");

var phoneMask2 = $('.f_phone');
phoneMask2.mask("+7 (999) 999-99-99");

$('.other-inner').owlCarousel({
    center: true,
    items: 3,
    loop: false,
    margin: 10,
    navText: ["", ""],
    responsive: {
        300: {
            center: true,
            items: 1.2,
            loop: false,
        },
        600: {
            center: true,
            items: 2.1,
            loop: false,
        },
        900: {
            center: true,
            items: 3.1,
            loop: false,
        },
        1200: {
            center: true,
            items: 3.1,
            loop: false,
            nav: true,
        },
        1600: {
            center: true,
            items: 6.1,
            loop: false,
            nav: true,
        }
    }
});

$('.stati-inner').owlCarousel({
    center: true,
    items: 3,
    loop: false,
    dots: true,
    margin: 10,
    navText: ["", ""],
    responsive: {
        300: {
            center: true,
            items: 1.2,
            loop: false,
        },
        600: {
            center: true,
            items: 2.1,
            loop: false,
        },
        900: {
            center: true,
            items: 3.1,
            loop: false,
        },
        1200: {
            center: true,
            items: 3.1,
            loop: false,
            nav: true,
        },
        1600: {
            center: true,
            items: 6.1,
            loop: false,
            nav: true,
        }

    }
});

$('.gallery__pans').owlCarousel({
    items: 1,
    loop: false,
    center: true,
    margin: 10,
    dots: false,
    nav: true,
    navText: ["<img src='../assets/img/ArrowCircleLeft.svg'>", "<img src='../assets/img/ArrowCircleRight.svg'>"],
    URLhashListener: true,
    autoplayHoverPause: true,
    startPosition: 'URLHash'
});

$('.review-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    dots: false,
    navText: ["", ""],
    stagePadding: 20,
    responsive: {
        0: {
            items: 1
        },
        992: {
            items: 1,
            stagePadding: 50,
        },
        1000: {
            items: 2
        }
    }
});

$('.into__price-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    cssEase: 'linear',
    navText: ["", ""],
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});

if (document.querySelectorAll(".nav").length) {
    $('.nav__links a').on('click', function() {

        let href = $(this).attr('href');

        $('html, body').animate({
            scrollTop: $(href).offset().top
        }, {
            duration: 370, // по умолчанию «400» 
            easing: "linear" // по умолчанию «swing» 
        });

        return false;
    });
};

for (let e of document.querySelectorAll('input[type="range"].slider-progress')) {
    e.style.setProperty('--value', e.value);
    e.style.setProperty('--min', e.min == '' ? '0' : e.min);
    e.style.setProperty('--max', e.max == '' ? '100' : e.max);
    e.addEventListener('input', () => e.style.setProperty('--value', e.value));
};

$(".video__preview").on("click", function() {
    $(".video__preview").toggleClass("hide__prev");
    $(".video__link").toggleClass("show__video");
});

/* START Аккордион */
(function() {
    const items = document.querySelectorAll(".acc__header")
    if (items.length) {
        const removeActive = () => {
            const items = document.body.querySelectorAll(".acc")
            for (const item of items) {
                item.classList.remove("is-active")
                item.querySelector(".acc__description").style.maxHeight = 0
            }
            return true
        }
        for (const item of items) {
            item.addEventListener("click", function() {
                const item = this.parentNode,
                    panel = this.nextElementSibling
                if (item.classList.contains("is-active")) {
                    removeActive()
                } else {
                    removeActive()
                    item.classList.toggle("is-active")
                    panel.style.maxHeight = `fit-content`
                }
            })
        }
    }
})();

const allIndicator = document.querySelectorAll('.indicator li');
const allContent = document.querySelectorAll('.content li');

allIndicator.forEach(item => {
    item.addEventListener('click', function() {
        const content = document.querySelector(this.dataset.target);

        allIndicator.forEach(i => {
            i.classList.remove('active');
        })

        allContent.forEach(i => {
            i.classList.remove('active');
        })

        content.classList.add('active');
        this.classList.add('active');
    })
});

if (document.querySelectorAll(".selections").length) {
    $(".custom-select").each(function() {
        var classes = $(this).attr("class"),
            id = $(this).attr("id"),
            name = $(this).attr("name");
        var template = '<div class="' + classes + '">';
        template +=
            '<span class="custom-select-trigger">' +
            $(this).attr("placeholder") +
            "</span>";
        template += '<div class="custom-options">';
        $(this)
            .find("option")
            .each(function() {
                template +=
                    '<span class="custom-option ' +
                    $(this).attr("class") +
                    '" data-value="' +
                    $(this).attr("value") +
                    '">' +
                    $(this).html() +
                    "</span>";
            });
        template += "</div></div>";

        $(this).wrap('<div class="custom-select-wrapper"></div>');
        $(this).hide();
        $(this).after(template);
    });
    $(".custom-option:first-of-type").hover(
        function() {
            $(this)
                .parents(".custom-options")
                .addClass("option-hover");
        },
        function() {
            $(this)
                .parents(".custom-options")
                .removeClass("option-hover");
        }
    );
    $(".custom-select-trigger").on("click", function() {
        $("html").one("click", function() {
            $(".custom-select").removeClass("opened");
        });
        $(this)
            .parents(".custom-select")
            .toggleClass("opened");
        event.stopPropagation();
    });
    $(".custom-option").on("click", function() {
        $(this)
            .parents(".custom-select-wrapper")
            .find("select")
            .val($(this).data("value"));
        $(this)
            .parents(".custom-options")
            .find(".custom-option")
            .removeClass("selection");
        $(this).addClass("selection");
        $(this)
            .parents(".custom-select")
            .removeClass("opened");
        $(this)
            .parents(".custom-select")
            .find(".custom-select-trigger")
            .text($(this).text());
    });

    document.addEventListener("DOMContentLoaded", () => {
        const button = document.getElementById("button");
        const rect = document.getElementById("rect");

        button.addEventListener("click", () => {
            toggleTwoClasses(rect, "is-visible", "is-hidden", 500);
            button.classList.toggle('btn-white--close');
        });
    });

    function toggleTwoClasses(element, first, second, timeOfAnimation) {
        if (!element.classList.contains(first)) {
            element.classList.add(first);
            element.classList.remove(second);
        } else {
            element.classList.add(second);
            window.setTimeout(function() {
                element.classList.remove(first);
            }, timeOfAnimation);
        }
    }
};

$('.pansionat__item').on('click', ".pansionat__image-preview", function() {
    $($(this).closest(".pansionat__image").find(".pansionat__image-big")).attr('style', $(this).attr("style"));
});

if (document.querySelectorAll(".shedule").length) {
    let labelMain = document.createElement('div')
    labelMain.className = "shedule__item-label"
    labelMain.textContent = 'Прямо сейчас'

    const date = moment().format('HH:mm:ss');
    let dateOne1 = "07:00:00"
    let dateTwo1 = "07:30:00"

    if (date > dateOne1 && date < dateTwo1) {
        let mainElement = document.querySelector('#shedule_0')
        mainElement.append(labelMain)
    }
    let dateOne2 = "07:31:00"
    let dateTwo2 = "08:29:00"

    if (date > dateOne2 && date < dateTwo2) {
        let mainElement = document.querySelector('#shedule_1')
        mainElement.append(labelMain)
    }
    let dateOne3 = "08:00:00"
    let dateTwo3 = "09:00:00"

    if (date > dateOne3 && date < dateTwo3) {
        let mainElement = document.querySelector('#shedule_2')
        mainElement.append(labelMain)
    }
    let dateOne4 = "09:00:00"
    let dateTwo4 = "11:00:00"

    if (date > dateOne4 && date < dateTwo4) {
        let mainElement = document.querySelector('#shedule_3')
        mainElement.append(labelMain)
    }
    let dateOne5 = "11:00:00"
    let dateTwo5 = "11:30:00"

    if (date > dateOne5 && date < dateTwo5) {
        let mainElement = document.querySelector('#shedule_4')
        mainElement.append(labelMain)
    }
    let dateOne6 = "11:30:00"
    let dateTwo6 = "12:00:00"

    if (date > dateOne6 && date < dateTwo6) {
        let mainElement = document.querySelector('#shedule_5')
        mainElement.append(labelMain)
    }
    let dateOne7 = "12:00:00"
    let dateTwo7 = "14:30:00"

    if (date > dateOne7 && date < dateTwo7) {
        let mainElement = document.querySelector('#shedule_6')
        mainElement.append(labelMain)
    }
    let dateOne8 = "14:30:00"
    let dateTwo8 = "15:00:00"

    if (date > dateOne8 && date < dateTwo8) {
        let mainElement = document.querySelector('#shedule_7')
        mainElement.append(labelMain)
    }
    let dateOne9 = "15:00:00"
    let dateTwo9 = "16:30:00"

    if (date > dateOne9 && date < dateTwo9) {
        let mainElement = document.querySelector('#shedule_8')
        mainElement.append(labelMain)
    }
    let dateOne10 = "16:30:00"
    let dateTwo10 = "17:00:00"

    if (date > dateOne10 && date < dateTwo10) {
        let mainElement = document.querySelector('#shedule_9')
        mainElement.append(labelMain)
    }
    let dateOne11 = "17:00:00"
    let dateTwo11 = "18:30:00"

    if (date > dateOne11 && date < dateTwo11) {
        let mainElement = document.querySelector('#shedule_10')
        mainElement.append(labelMain)
    }
    let dateOne12 = "18:30:00"
    let dateTwo12 = "19:00:00"

    if (date > dateOne12 && date < dateTwo12) {
        let mainElement = document.querySelector('#shedule_11')
        mainElement.append(labelMain)
    }
    let dateOne13 = "19:00:00"
    let dateTwo13 = "21:00:00"

    if (date > dateOne13 && date < dateTwo13) {
        let mainElement = document.querySelector('#shedule_12')
        mainElement.append(labelMain)
    }
    let dateOne14 = "21:00:00"
    let dateTwo14 = "22:00:00"

    if (date > dateOne14 && date < dateTwo14) {
        let mainElement = document.querySelector('#shedule_13')
        mainElement.append(labelMain)
    }
    let dateOne15 = "22:00:00"
    let dateTwo15 = "07:00:00"

    if (date > dateOne15 && date < dateTwo15) {
        let mainElement = document.querySelector('#shedule_14')
        mainElement.append(labelMain)
    }
}

if (document.querySelectorAll(".calc").length) {

    $(".custom-select").each(function() {
        var classes = $(this).attr("class"),
            id = $(this).attr("id"),
            name = $(this).attr("name");
        var template = '<div class="' + classes + '">';
        template +=
            '<span class="custom-select-trigger">' +
            $(this).attr("placeholder") +
            "</span>";
        template += '<div class="custom-options">';
        $(this)
            .find("option")
            .each(function() {
                template +=
                    '<span class="custom-option ' +
                    $(this).attr("class") +
                    '" data-value="' +
                    $(this).attr("value") +
                    '">' +
                    $(this).html() +
                    "</span>";
            });
        template += "</div></div>";

        $(this).wrap('<div class="custom-select-wrapper"></div>');
        $(this).hide();
        $(this).after(template);
    });
    $(".custom-option:first-of-type").hover(
        function() {
            $(this)
                .parents(".custom-options")
                .addClass("option-hover");
        },
        function() {
            $(this)
                .parents(".custom-options")
                .removeClass("option-hover");
        }
    );
    $(".custom-select-trigger").on("click", function() {
        $("html").one("click", function() {
            $(".custom-select").removeClass("opened");
        });
        $(this)
            .parents(".custom-select")
            .toggleClass("opened");
        event.stopPropagation();
    });
    $(".custom-option").on("click", function() {
        $(this)
            .parents(".custom-select-wrapper")
            .find("select")
            .val($(this).data("value"));
        $(this)
            .parents(".custom-options")
            .find(".custom-option")
            .removeClass("selection");
        $(this).addClass("selection");
        $(this)
            .parents(".custom-select")
            .removeClass("opened");
        $(this)
            .parents(".custom-select")
            .find(".custom-select-trigger")
            .text($(this).text());
    });

    const sliderProps = {
        fill: "#93A8FE",
        background: "#F1F3FF",
    };



    function fun1() {
        var rng = document.getElementById('r1');
        var i1 = document.getElementById('i1');
        i1.value = rng.value;
    }
    var datepicker = new Datepicker('#datepicker', {
        ranged: true,
        dateFormat: 'yy-mm-dd',
        onChange: function() {
            myChangeDataPicker();
        }

    });

    function myChangeDataPicker() {
        let dateFromInput = document.querySelector('#datepicker').value;
        if (dateFromInput.length != 0 && dateFromInput.length >= 21) {
            let twoDate = dateFromInput.split(',')
            let startDate = twoDate[0]
            let endDate = twoDate[1]
            let changeStartDate = startDate.split('.').reverse().join('-');
            let changeEndDate = endDate.split('.').reverse().join('-');
            let currentStartDate = new Date(changeStartDate);
            let currentEndDate = new Date(changeEndDate);
            let differentInMilliseconds = currentEndDate - currentStartDate
            let differentInDays = differentInMilliseconds / 86400000
            let price = differentInDays * 800
            let priceInCalc = `Стоимость ${price} ₽ *`
            let getElementForPrice = document.querySelector('.calc__item-price')
            getElementForPrice.innerHTML = priceInCalc
        } else if (dateFromInput.length != 0 && dateFromInput.length >= 10) {
            let priceInCalc = `Стоимость 800 ₽/сутки *`
            let getElementForPrice = document.querySelector('.calc__item-price')
            getElementForPrice.innerHTML = priceInCalc
        }
    }
}
$(document).ready(function() {
    $('.ajax_form').append('<input type="text" name="org" value="" class="_org" style="visibility:hidden; padding: 0; border:none;"/>');

    AjaxForm.Message.success = function() {};
    AjaxForm.Message.error = function() {};

    $(document).on('af_complete', function(event, response) {
        if (response['success'] === true) {
            $.fancybox.close();
            $.fancybox.open([{
                src: '#thanks',
            }])
        }
    });

});

(function() {
    const e = document.getElementById("search_city");
    e.oninput = function() {
        if (e.value.length > 3) {
            const t = new XMLHttpRequest(),
                n = ({ innerHTML: e }) => {
                    const t = document.createElement("div");
                    return (t.innerHTML = e), t;
                };
            t.open("GET", "/ajax/search_city.php?search=" + e.value, !0),
                t.send(),
                (t.onreadystatechange = function() {
                    if (4 == t.readyState && 200 == t.status) {
                        let e = document.body.querySelectorAll(".city_result"),
                            s = document.body.querySelectorAll(".all__citys");
                        if (e.length)
                            for (const n of e) {
                                for (const e of s) e.style.cssText = "display: none";
                                (n.innerHTML = t.responseText), (n.style.cssText = "display: flex");
                            }
                        else {
                            let e = document.body.querySelectorAll(".city_result");
                            for (const s of e) {
                                const e = n({ innerHTML: t.responseText });
                                s.appendChild(e), (s.style.cssText = "display: flex");
                            }
                        }
                    }
                });
        } else {
            let e = document.body.querySelectorAll(".city_result"),
                t = document.body.querySelectorAll(".all__citys");
            for (const e of t) e.style.cssText = "display: flex";
            for (const t of e) t.style.cssText = "display: none";
        }
    };
    const t = document.body.querySelectorAll("#city form");
    if (t.length)
        for (const e of t)
            e.addEventListener("submit", function(e) {
                e.preventDefault();
            });
})();
$(document).on('click', '[data-src="#city"]', function(e) {
    e.preventDefault();
    $.ajax({ type: "POST", url: "/ajax/get_city_list_modal.php", data: { 'action': 'city', }, dataType: "json", success: function(data) { $(".city__list.all__citys").html(data.result); } });
});