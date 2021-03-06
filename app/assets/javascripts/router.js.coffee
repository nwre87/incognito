Router = Backbone.Router.extend
  routes:
    'registration': 'showRegistration'
    'login':        'showLogin'
    'calendar':     'showCalendar'

  showLogin: -> @showPage "/login", HandlebarsTemplates['session/new']
  showRegistration: -> @showPage "/registration", HandlebarsTemplates['registration/new']
  showCalendar: -> @showPage "/calendar", HandlebarsTemplates['calendar/new']

  showPage: (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      data: 'json'
      success: (data) ->
        console.log templateFunc()
        $('body').html(templateFunc())
      error: (x,y,z) ->
        console.log x,y,z
        $('body').html(templateFunc())


$ ->
  new Router()
  Backbone.history.start pushState: false