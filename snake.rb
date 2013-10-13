# --                                                            ; {{{1
#
# File        : snake.rb
# Maintainer  : Felix C. Stegerman <flx@obfusk.net>
# Date        : 2013-10-13
#
# Copyright   : Copyright (C) 2013  Felix C. Stegerman
# Licence     : GPLv2
#
# --                                                            ; }}}1

require 'coffee-script'
require 'haml'
require 'sinatra/base'

class Snake < Sinatra::Base

  SCRIPTS = %w{
    /js/jquery.min.js
    /js/underscore.min.js
    /__coffee__/big-bang.js
    /__coffee__/snake.js
  }

  get '/' do
    redirect '/snake'
  end

  get '/snake' do
    haml :snake
  end

  get '/__coffee__/:name.js' do |name|
    content_type 'text/javascript'
    coffee :"coffee/#{name}"
  end

end

# vim: set tw=70 sw=2 sts=2 et fdm=marker :
