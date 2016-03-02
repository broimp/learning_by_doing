#!/usr/bin/env ruby

# bottles of beer recursively
class Lyrics
  def initialize(bots = 99)
    @bots = bots
  end

  def stanzas
    return if @bots == 1
    print "#{@bots} bottles of beer on the wall, "
    print "#{@bots} bottles of beer."
    puts
    second_stanza_line
    @bots -= 1
    stanzas
  end

  def second_stanza_line
    print "Take one down and pass it around, #{@bots - 1} "
    if @bots == 2
      puts 'bottle of beer on the wall.'
    else
      puts 'bottles of beer on the wall.'
    end
    puts
  end

  def last_stanzas
    print @bots
    puts " bottle of beer on the wall, #{@bots} bottle of beer."
    print 'Take one down and pass it around, '
    puts 'no more bottles of beer on the wall.'
    puts
    print 'No more bottles of beer on the wall, '
    puts 'no more bottles of beer.'
    print 'Go to the store and buy some more, '
    puts '99 bottles of beer on the wall.'
  end
end

song = Lyrics.new
song.stanzas
song.last_stanzas
