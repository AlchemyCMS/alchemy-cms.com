$ ->
  doc = $('html')
  header = $('header')
  $(window).scroll ->
    if doc.scrollTop() > 100
      header.addClass 'small'
    else
      header.removeClass 'small'
