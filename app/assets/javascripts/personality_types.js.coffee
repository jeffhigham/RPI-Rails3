jQuery ->
  $('.floating-left-arrow a img').on 'click', (event) ->
    event.preventDefault()
    id = parseInt($(location).attr('href').split('/').pop())
    if id <= 1
      previous_id = 1
    else
      previous_id = id-1
    window.location.href = "/personality_types/#{previous_id}"
  
  $('.floating-right-arrow a img').on 'click', (event) ->
    event.preventDefault()
    id = parseInt($(location).attr('href').split('/').pop())
    if id >= 16
      next_id = 16
    else
      next_id = id+1
    window.location.href = "/personality_types/#{next_id}"