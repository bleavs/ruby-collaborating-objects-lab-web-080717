

class MP3Importer

  attr_accessor :path

  def initialize(file)
    @path = file
  end

  def files
    @files = Dir.new(path).entries.select {|f| f.include?(".mp3")}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
