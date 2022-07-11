<form action="#" method="POST">
  <input name="f_urlMessage" type="hidden" value="https://{$.server['HTTP_HOST']}{$.server['REQUEST_URI']}">
  {"!get_utm" | snippet}
  <div class="calc">
    <div class="calc__item">
      <div class="calc__item-title">
        Выберите пол:
      </div>
      <select name="f_sex" class="custom-select sources" placeholder="Выбрать">
        <option value="Мужской">Мужской</option>
        <option value="Женский">Женский</option>
      </select>
    </div>
    <div class="calc__item">
      <div class="calc__item-title">
        Состояние:
      </div>
      <select name="f_condition" class="custom-select sources" placeholder="Выбрать">
        <option value="Передвигается самостоятельно" selected>Передвигается самостоятельно</option>
        <option value="Передвигается с помощью">Передвигается с помощью</option>
        <option value="Лежачий">Лежачий</option>
      </select>
    </div>
    <div class="calc__item">
      <div class="calc__item-title">
          Ваш возраст:
          <input type="text" value="50" id="i1"> лет
      </div>
      <input type="range" name="f_age" class="styled-slider slider-progress" id="r1" oninput="fun1()">
    </div>
    <div class="calc__item">
      <div class="calc__item-title">
        Выберите даты проживания:
      </div>
      <div class="calc__item-date">
        <input type="text" name="date_1" autocomplete="off" id="datepicker" placeholder="{$date|date:'d.m.Y'}"
          class="calendar__input">
        <input type="text" name="date_2" autocomplete="off" id="datepicker2" placeholder="{$date|date:'d.m.Y'}"
          class="calendar__input">
      </div>
    </div>
    <div class="calc__item">
      <div class="calc__item-title">
        Имя:
      </div>
      <input type="text" name="f_name" placeholder="Иван Иванов">
    </div>
    <div class="calc__item">
      <div class="calc__item-title">
        Номер телефона:
      </div>
      <input type="text" inputmode="tel" name="f_phone" class="phone" placeholder="+7(000)000-00-00" />
      <span class="error_f_phone error">{$fi.error.f_phone}</span>
    </div>
    <div class="calc__item text">
      <div class="calc__item-price">
        Стоимость 850 руб. *
      </div>
      <div class="calc__item-text">
        * Указана примерная стоимость и размер скидки. Чтобы получить точный расчет и получить консультацию -
        отправьте заявку.
      </div>
    </div>
    <div class="calc__item">
      <button class="btn-blue">Узнать стоимость</button>
      <div class="calc__item-politics">
        <div class="checkbox">
          <div class="checkbox__1">
            <input id="checkbox-1" type="checkbox" checked>
            <label for="checkbox-1">
              <i class="material-icons">done</i></label>
          </div>
        </div>
        <p>Согласен на обработку <a href="/{$city_link}{260 | url}">персональных данных</a></p>
      </div>
    </div>
  </div>
</form>