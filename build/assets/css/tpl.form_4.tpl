<form action="#" method="POST">
  <input name="f_urlMessage" type="hidden" value="https://{$.server['HTTP_HOST']}{$.server['REQUEST_URI']}">
  {"!get_utm" | snippet}
  <div class="form__item-title">Имя:</div>
  <input type="text" placeholder="Иван Иванов">
  <div class="form__item-title">Номер телефона:</div>
  <input type="text" name="f_phone" inputmode="tel" class="phone" placeholder="+7(000)000-00-00" />
  <span class="error_f_phone error">{$fi.error.f_phone}</span>
  <button class="btn-blue">Записаться на экскурсию</button>
  <div class="form__politics">
    <div class="checkbox">
      <div class="checkbox__2">
        <input id="checkbox-2" type="checkbox" checked>
        <label for="checkbox-2">
          <i class="material-icons">done</i></label>
      </div>
    </div>
    <p>Согласен на обработку <a href="/{260 | url}">персональных данных</a></p>
  </div>
</form>