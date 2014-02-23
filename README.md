# Foundation Wysihtml5 for Rails

[![Gem Version](https://badge.fury.io/rb/foundation-wysihtml5-rails.png)](http://badge.fury.io/rb/foundation-wysihtml5-rails)


This is a port of Bootstrap Wysihtml5 to Zurb Foundation.

[Bootstrap Wysihtml5](https://github.com/jhollingworth/bootstrap-wysihtml5) is a plugin for Bootstrap designed by James Hollingworth. It provides a stylish wysiwyg editor for Bootstrap.

This project is a fork from [Nerian's `bootstrap-wysihtml5-rails`](https://github.com/Nerian/bootstrap-wysihtml5-rails) and it was modified to work with Zurb Foundation.


## Rails > 3.1
Include foundation-wysihtml5-rails in Gemfile;

``` ruby
gem 'foundation-wysihtml5-rails'
```

and run bundle install.

This gem doesn't include Foundation. You can get Foundation here: https://github.com/zurb/foundation-rails.

It also has as dependency [`font-awesome`](http://fortawesome.github.io/Font-Awesome/) for the icons. Please add it to your project.

## Configuration

Foundation-wysihtml5 depends on jquery, foundation and font-awesome.

app/assets/stylesheets/application.css
``` css
*= require foundation-wysihtml5
```

app/assets/javascripts/application.js
```javascript
//= require foundation-wysihtml5

You may include all locales like this:

//= require foundation-wysihtml5/locales

Or just add the ones that you want

//= require foundation-wysihtml5/locales/de-DE
//= require foundation-wysihtml5/locales/es-ES
```

You may need to restart your rails server.

## Using foundation-wysihtml5-rails

Just call wysihtml5() with any selector.

```html
<textarea id="some-textarea" class='wysihtml5' placeholder="Enter text ..."></textarea>

<script type="text/javascript">
  $(document).ready(function(){
    $('.wysihtml5').wysihtml5();
  })
</script>

```

## If using Turbolinks

```
$(document).on('page:load', function(){
  window['rangy'].initialized = false
})
```

## License
Copyright (c) 2014 Josemar Luedke

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
