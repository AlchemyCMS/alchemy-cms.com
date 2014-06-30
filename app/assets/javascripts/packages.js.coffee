# jQuery plugin to set the amounts on the buttons calculated by the days from the number input
$.fn.extend
  packageCalculator: ->
    $this = $(@)
    $payments = $this.find('.payment')
    $payments.each ->
      $this = $(@)
      $day_select = $this.find('.day_select input[name="days"]')
      $amount_hidden_field = $this.find('input[type="hidden"][name="amount"]')
      $quantity_hidden_field = $this.find('input[type="hidden"][name="quantity"]')
      $amount_label = $this.find('span.amount')
      min_days = +$day_select.attr('min')
      amount_per_day = +$amount_hidden_field.val()

      setAmount = ->
        currentDay = +$day_select.val()
        if currentDay >= min_days
          days = currentDay
        else
          days = min_days
          $day_select.val(days)
        amount = amount_per_day * days
        $quantity_hidden_field.val(days)
        $amount_label.text numeral(amount).format()
        return

      setAmount()

      $day_select.change ->
        setAmount()
        true

    return $this

$ ->
  # Get the users language setting
  user_language = (navigator.language || navigator.userLanguage).substring(0, 2)
  # Set the default price formatting
  numeral.defaultFormat('0,0 $')
  # Register number formats
  numeral.language 'en',
    delimiters:
      thousands: ','
      decimal: '.'
    currency:
      symbol: '€'
  numeral.language 'de',
    delimiters:
      thousands: '.'
      decimal: ','
    currency:
      symbol: '€'
  # Set the language depending of user language
  if user_language == 'de'
    numeral.language(user_language)
  else
    numeral.language('en')
  # Init packages
  $packages = $('.packages')
  $packages.packageCalculator()
  $packages.find('.contact button').click ->
    $this = $(this)
    if $this.prev('.form_fields').hasClass('invisible')
      $this.parents('.package').find('.description, .contact .form_fields').toggleClass('invisible')
      $this.children('span').text('Contact us')
    else
      $this.parent().submit()
