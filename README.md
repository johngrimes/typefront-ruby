# TypeFront for Ruby

IMPORTANT NOTE: This repository is no longer actively maintained.

This is a wrapper around TypeFront's RESTful API for adding, removing, updating and getting details about your fonts being served by [TypeFront](http://typefront.com).

Check out the [TypeFront API Documentation](http://typefront.com/documentation) for more information.

## Installation

`gem install typefront`

## Setup

`typefront = TypeFront.new('login', 'password')`

### Getting a listing of your fonts

`typefront.fonts`

### Getting the details of a font

`typefront.font_details(101)`

### Uploading a new font

`typefront.upload_font(File.new('somefont.ttf'))`

### Remove font

`typefront.remove_font(101)`

### Activate a font format

`typefront.activate_format(101, 301)`

### Disable a font format

`typefront.disable_format(101, 301)`

### Add new allowed domain

`typefront.add_domain(101, 'http://somedomain.com')`

### Remove allowed domain

`typefront.remove_domain(101, 201)`

---

Copyright (c) 2010 Small Spark Pty Ltd, released under the MIT license
