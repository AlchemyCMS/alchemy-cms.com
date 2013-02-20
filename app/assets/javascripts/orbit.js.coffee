$(window).load ->
  $('#slide_gallery').orbit
    animation: 'horizontal-push'       # fade, horizontal-slide, vertical-slide, horizontal-push
    animationSpeed: 400                # how fast animtions are
    timer: true                        # true or false to have the timer
    resetTimerOnClick: false           # true resets the timer instead of pausing slideshow progress
    advanceSpeed: 4000                 # if timer is enabled, time between transitions
    pauseOnHover: false                # if you hover pauses the slider
    startClockOnMouseOut: false        # if clock should start on MouseOut
    startClockOnMouseOutAfter: 1000    # how long after MouseOut should the timer start again
    directionalNav: false              # manual advancing directional navs
    captions: false                    # do you want captions?
    captionAnimation: 'fade'           # fade, slideOpen, none
    captionAnimationSpeed: 200         # if so how quickly should they animate in
    bullets: true                      # true or false to activate the bullet navigation
    bulletThumbs: false                # thumbnails for the bullets
    bulletThumbLocation: ''            # location from this file where thumbs will be
    afterSlideChange: ->               # empty function
    fluid: '3x1'                       # or set a aspect ratio for content slides (ex: '4x3')
