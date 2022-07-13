<form action="#" method="POST">
  <input name="f_urlMessage" type="hidden" value="https://{$.server['HTTP_HOST']}{$.server['REQUEST_URI']}">
  {"!get_utm" | snippet}
  <div class="form__item">
    <div class="form__item-title">Имя:</div>
    <input type="text" placeholder="Иван Иванов">
  </div>
  <div class="form__item">
    <div class="form__item-title">Номер телефона:</div>
    <input type="text" name="phone" inputmode="tel" class="f_phone" placeholder="+7(000)000-00-00" />
    <span class="error_f_phone error">{$fi.error.f_phone}</span>
  </div>
  <div class="form__item">
    <button class="btn-blue">Записаться на экскурсию</button>
    <div class="form__politics">
      <div class="checkbox">
        <div class="checkbox__2">
          <input id="checkbox-3" type="checkbox" checked>
          <label for="checkbox-3"><i class="material-icons">done</i></label>
        </div>
      </div>
      <p>Согласен на обработку <a href="/{$city_link}{260 | url}">персональных данных</a></p>
    </div>
  </div>
</form>