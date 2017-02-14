require 'pp'
require 'gosu'

%w{window human cat bowl}.each do |f|
  require "catherder/#{f}"
end

module Catherder
  def self.start
    w = Window.new
    w.show
  end
end
