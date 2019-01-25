$(document).ready ->
  typingTimer = undefined
  typingInterval = 400
  
  $source_currency = $("#source_currency")
  $target_currency = $("#target_currency")
  $invert_currency = $('#invert_currency')

  $('#amount').keyup ->
    clearTimeout typingTimer
    if $('#amount').val
      typingTimer = setTimeout(convert, typingInterval)
    return
  
  convert = ->
    $.ajax '/convert',
      type: 'GET'
      dataType: 'json'
      data: {
        source_currency: $source_currency.val(),
        target_currency: $target_currency.val(),
        amount: $('#amount').val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)

    return false

  $invert_currency.click ->
    aux = $source_currency.val()
    $source_currency.val($target_currency.val())
    $target_currency.val(aux)

    convert()

  $source_currency.change -> convert() unless !$('#amount').val()
  $target_currency.change -> convert() unless !$('#amount').val()