window.App ||= {}

App.init = ->
  $('.slider').slick();

$(document).on "turbolinks:load", ->
  App.init()
