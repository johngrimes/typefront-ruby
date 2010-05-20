# TypeFront for Ruby and Ruby on Rails

This is a wrapper around TypeFront's RESTful API for adding, removing, updating and getting details about your fonts being served by TypeFront.

Checkout the TypeFront API Documentation.

## Installation

`gem install typefront`

## Configuration

In your environment.rb:

`TypeFront.settings = { 
  :email => 'YOUR EMAIL HERE', 
  :password => 'YOUR PASSWORD HERE'
}`

### Getting a listing of your fonts

`TypeFront.fonts`

### Getting the details of a font

`TypeFront.font_details(101)`

### Uploading a new font

`TypeFront.upload_font(File.new('somefont.ttf'))`

### Remove font

`TypeFront.remove_font(101)`

### Add new allowed domain

`TypeFront.add_domain(101, 'http://somedomain.com')`

### Remove allowed domain

`TypeFront.remove_domain(101, 201)`

---

Copyright (c) 2010 Small Spark Pty Ltd, released under the MIT license
