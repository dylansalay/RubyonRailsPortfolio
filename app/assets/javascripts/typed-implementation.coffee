ready = ->
  new Typed '.element',
    strings: [
      "Obstacles don’t have to stop you."
      "If you run into a wall, don’t turn around and give up."
      "Figure out how to climb it, go through it, or work around it."
      "- Michael Jordan"
    ]
    typeSpeed: 0
    loop: true
    showCursor: false
    backDelay: 2000
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready