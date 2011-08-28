require 'defly/tracable'
require 'defly/whinable'
require 'defly/inspectable'

module Defly
end

class Class
  def debug!
    self.send(:include, Defly::Inspectable)
    self.send(:include, Defly::Tracable)
  end
end

NoMethodError.send(:include, Defly::Whinable)
