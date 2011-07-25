require 'uri'
require 'json'
require 'oauth'

require 'simple_geo/hash_utils'
require 'simple_geo/connection'
require 'simple_geo/endpoint'
require 'simple_geo/client'
require 'simple_geo/record'

module SimpleGeo
  REALM = "http://api.simplegeo.com"
  path  = File.symlink?(__FILE__) ? File.readlink(__FILE__) : File.expand_path(__FILE__)
  VERSION = File.read(File.join(File.dirname(path), '..', 'VERSION'))

  class SimpleGeoError < StandardError; end
  class Unauthorized < SimpleGeoError; end
  class NotFound < SimpleGeoError; end
  class ServerError < SimpleGeoError; end
  class Unavailable < SimpleGeoError; end
  class DecodeError < SimpleGeoError; end
  class NoConnectionEstablished < SimpleGeoError; end
end
