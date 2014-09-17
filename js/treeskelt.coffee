$(document).ready ->
  $.ajax {
    dataType: "jsonp",
    url: "https://www.codeschool.com/users/260418.json",
    success: (data)->
      template = Handlebars.compile($("#codeschool-badge").html())
      $('#codeschool').append template(data.courses)
      return
  }
  return
