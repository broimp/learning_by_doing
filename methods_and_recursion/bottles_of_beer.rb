#!/usr/bin/env ruby

# bottles of beer recursively
class Lyrics
  def initialize
    @bots = 99
    @bob = 'bottle of beer'
    @bos = 'bottles of beer'
    stanzas
  end

  def stanzas
    if @bots == 1
      puts "#{@bots} #{@bob} on the wall, #{@bots} #{@bob}."
      puts "Take one down and pass it around, no more #{@bos} on the wall."
      puts
      puts "No more #{@bos} on the wall, no more #{@bos}."
      print "Go to the store and buy some more, 99 #{@bos} on the wall."
      return
    end
    second_stanza_line
    stanzas
  end

  def second_stanza_line
    puts "#{@bots} #{@bos} on the wall, #{@bots} #{@bos}."
    print "Take one down and pass it around, #{@bots - 1} "
    if @bots == 2
      puts "#{@bob} on the wall."
    else
      puts "#{@bos} on the wall."
    end
    puts
    @bots -= 1
  end
end

Lyrics.new
