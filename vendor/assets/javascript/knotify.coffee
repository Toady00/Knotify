class Knotify
  constructor: (options = {}) ->
    @wbktNote  = window.webkitNotifications

    @onDisplay = options.onDisplay ? (->)
    @onClose   = options.onClose   ? (->)
    @onClick   = options.onClick   ? (->)
    @onError   = options.onError   ? (->)
    @img       = options.image     ? ''
    @title     = options.title     ? ''
    @content   = options.content   ? ''

    @_createNotification()
    @show() if options.now?

  show: ->
    @notification.show()

  _createNotification: ->
    @notification = @wbktNote.createNotification(@img, @title, @content)
    @notification.ondisplay = @onDisplay
    @notification.onclose   = @onClose
    @notification.onclick   = @onClick
    @notification.onerror   = @onError

class KnotifyPermission
  constructor: (target, eventTrigger = 'click') ->
    document.querySelector(target).addEventListener eventTrigger, =>
      @_getPermission() unless @_checkPermission() == 0

  _getPermission: ->
    window.webkitNotifications.requestPermission()

  _checkPermission: ->
    window.webkitNotifications.checkPermission()

window.Knotify = Knotify
window.KnotifyPermission = KnotifyPermission
