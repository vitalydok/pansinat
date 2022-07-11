<form action="#" method="POST">
  <input name="f_urlMessage" type="hidden" value="https://{$.server['HTTP_HOST']}{$.server['REQUEST_URI']}">
  {"!get_utm" | snippet}
  <div class="form__item-title">Имя:</div>
  <input type="text" placeholder="Иван Иванов">
  <div class="form__item-title">Номер телефона:</div>
  <input type="text" name="f_phone" class="phone" placeholder="+7(000)000-00-00" />
  <span class="error_f_phone error">{$fi.error.f_phone}</span>
  <button class="btn-blue">Записаться на экскурсию</button>
</form>