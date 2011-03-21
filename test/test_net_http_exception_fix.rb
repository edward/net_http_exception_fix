require 'test/unit'
require 'net_http_exception_fix'

class TestNetHttpExceptionFix < Test::Unit::TestCase
  def test_valid_exception
    assert_raise Net::HTTPBroken do
      raise Net::HTTPBadResponse
    end
  end

  def test_invalid_exception
    begin
      raise Errno::EACCES
    rescue StandardError => e
      assert !e.is_a?(Net::HTTPBroken)
    end
  end
end