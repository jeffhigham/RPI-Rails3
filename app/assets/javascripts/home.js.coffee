jQuery ->
  video = '<div class="flex-video widescreen">
      <iframe src="http://www.youtube.com/embed/s-7mqmWOQNI?controls=0&amp;rel=0&amp;loop=1&amp;autoplay=1&amp;showsearch=0&amp;version=3&amp;showinfo=0&amp;modestbranding=0&amp;fs=0&amp;yt:stretch=16:9" frameborder="0" allowfullscreen></iframe>
    </div>'
  $('.rpi-video a').on 'click', (event) ->
    event.preventDefault()
    $(@).replaceWith(video)