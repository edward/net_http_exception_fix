require 'net/http'

module Net::HTTPBroken; end

[Timeout::Error, Errno::ETIMEDOUT, Errno::EINVAL, Errno::ECONNRESET,
 Errno::ECONNREFUSED, EOFError, Net::HTTPBadResponse,
 Net::HTTPHeaderSyntaxError, Net::ProtocolError].each do |m|
   m.send(:include, Net::HTTPBroken)
 end