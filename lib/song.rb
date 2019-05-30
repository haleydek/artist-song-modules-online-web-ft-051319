require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  extend Findable

  def self.all
    @@songs
  end
  
  extend Memorable::ClassMethods

  def artist=(artist)
    @artist = artist
  end

  include Paramable

end
