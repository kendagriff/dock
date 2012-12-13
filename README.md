# Dock

Provides authentication libraries for Banzai APIs

## Install

```
gem 'dock', git: 'git://github.com/kendagriff/dock.git'
```

## Usage

### Basic Authentication

Set credentials in an initializer or an environment file:

```
BasicCrendentials = BasicCredentials.new('username', 'password')
```

Add the following filter to your controller

```
class MyController < ApplicationController
  before_filter :require_basic_authentication
end
```
