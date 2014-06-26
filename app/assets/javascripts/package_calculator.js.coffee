$.fn.extend
  packageCalculator: ->
    return $(@).find('.payment').each () ->
      $day_select = $(@).find('.day_select input[name="days"]')
      $amount_hidden_field = $(@).find('input[type="hidden"][name="amount"]')
      $quantity_hidden_field = $(@).find('input[type="hidden"][name="quantity"]')
      $amount_label = $(@).find('span.amount')
      min_days = +$day_select.attr('min')
      amount_per_day = +$amount_hidden_field.val()

      currentDays = ->
        return +$day_select.val()

      setAmount = ->
        if currentDays() >= min_days
          days = currentDays()
        else
          days = min_days
          $day_select.val(days)
        amount = amount_per_day*days
        $quantity_hidden_field.val(days)
        $amount_label.text(amount)

      setAmount()

      $day_select.change ->
        setAmount()

$ ->
  $('.packages').packageCalculator()
