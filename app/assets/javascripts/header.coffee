$ ->
  doc = $(document)
  header = $('header')
  nav_bar = $('.nav-bar')
  $(window).scroll ->
    if doc.scrollTop() > 100
      header.addClass 'small'
    else
      header.removeClass 'small'
  $('.nav-toggle').click ->
    $(this).toggleClass 'open'
    nav_bar.toggleClass 'visible'
