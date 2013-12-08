require "privy/version"

class Privy
  def initialize(object)
    @object = object
  end

  def method_missing(method, *args, &block)
    @object.__send__(method, *args, &block)
  end
end

Object.define_singleton_method(:privy!) do
  Privy.new(self)
end

Object.__send__(:define_method, :privy!) do
  Privy.new(self)
end
