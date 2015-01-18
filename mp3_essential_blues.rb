# A script to fix the title, artists etc for the
# "Blues Masters - Essential Blues Collection"

require "mp3info"

SONGS_DIR = "/Users/aerohit/Music/Blues Masters - copy"

Dir.glob("#{SONGS_DIR}/**/*.mp3") do |mp3_file|
  puts "*********"
  puts mp3_file
  #parent_dir = File.dirname(mp3_file).split("/")[-1]
  #album_title = "Essential Blues - #{parent_dir}"
  #puts "Album", album_title
  #tokens = File.basename(mp3_file).split("-")
  #artist = tokens[1].strip
  #puts "Artist", artist
  #song_title = "#{tokens[0].strip} - #{tokens[2].strip}"
  #puts "Song Title", song_title
  Mp3Info.open(mp3_file) do |mp3|
    puts mp3
    #mp3.tag.album = album_title
    #mp3.tag.title = song_title
    #mp3.tag.artist = artist
    #mp3.tag.tracknum = song_title.split(" ")[0].to_i
    #mp3.tag.genre = 0
    #puts mp3.tag.title
    #puts mp3.tag.artist
    #puts mp3.tag.album
    #puts mp3.tag.tracknum
  end
end
