class Album

  def initialize(album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def id
    return @album_id
  end

  def title
    return @album_name
  end

  def artists
    return @artists
  end

  def tracks
    return @tracks
  end

  def tracks_to_array
    tracks_array = []
    @tracks.map do |track|
      tracks_array << track[:title]
    end
    return tracks_array
  end

  def display
    result = "Tracks: \n"
    tracks_to_array.each do |track|
      result << "#{track} \n"
    end
    result
  end

  def duration_min
    @tracks.map do |duration|
      time = duration[:duration_ms].to_i
      return time / 60000
    end
  end

  def summary
    <<-SUMMARY
Title - #{title}
Artists - #{artists}
Track - #{display}
Duration - #{duration_min}(mins)

SUMMARY
  end

end
