# Knotify

Knotify is a simple js library for displaying web notifications. [Check browser support](http://caniuse.com/#search=notification)

## Installation

Add this line to your application's Gemfile:

    gem 'knotify'

And then execute:

    $ bundle

Add the following directive to your JavaScript manifest file (application.js):

    //= require knotify

## Usage

The user has to enable notifications before any can be created. This example has a user click a button labeled ````Enable Notifications````.

````html
<button id='#webkit-permission'>Enable Notifications</button>
````

In your ````.coffee```` file, create a new ````KnotifyPermission```` object, passing it the id of the button. Once the user clicks this button, notifications will be enabled. After that, you can fire off notifications by creating a new ````Knotify```` object passing it a json object with the options for the notification.

````coffeescript
jQuery ->
  new KnotifyPermission("#webkit-permission")

  options =
    image: 'my_image.png'
    title: 'This is a notification'
    content: 'This is only a test'
    now: true

  new Knotify(options)
````

_If you don't set_ ````now: true```` _then you'll need to store the notification in a variable and call ````show()```` when you are ready to display it._

## Knotify Options

| Key      | Description                                            | Default Value |
|----------|--------------------------------------------------------|---------------|
| onDisplay| function to execute when the notification is displayed | empty function|
| onClose  | function to execute when the notification is closed    | empty function|
| onClick  | function to execute if the notification is clicked     | empty function|
| onError  | function to execute if an error has occured            | empty function|
| image    | path to an image to use                                | empty string  |
| title    | title text to be displayed                             | empty string  |
| content  | the content body to be displayed                       | empty string  |
| now      | if true, display the notification immediately          | undefined     |

_Note: These options are largely based on the spec as implemented by [Chromium](http://www.chromium.org/developers/design-documents/desktop-notifications/api-specification)_

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
