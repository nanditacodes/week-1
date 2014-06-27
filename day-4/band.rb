class Band
  attr_accessor :band_name, :perf_time
  def initialize(band_name, perf_time)
    @band_name = band_name
    @perf_time = perf_time
  end

def print_details
  puts  self.band_name 
end

end



band1 = Band.new "band1", 30
band2 = Band.new "band2", 20
band3 = Band.new "band3", 10
band4 = Band.new "band4", 40
@bands = [band1, band2, band3, band4]
#array to hold the chosen artists from the available bunch
@my_fav_artists = []
#array of band artists that user custom built
@my_concert = []
