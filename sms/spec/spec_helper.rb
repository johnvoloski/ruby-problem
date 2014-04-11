spec_root = File.expand_path(File.dirname(__FILE__))
$: << spec_root

require 'shoulda'
require File.join(File.dirname(__FILE__), '..', 'sms_converter')

RSpec.configure do |c|
  c.color_enabled = true
end
