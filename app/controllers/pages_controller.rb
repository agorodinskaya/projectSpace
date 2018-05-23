class PagesController < ApplicationController

  def home
    api_key = Rails.application.secrets.nasa_api_key
      url = "https://api.nasa.gov/planetary/apod?api_key=#{api_key}"

    results = HTTParty.get( url )
    @results = results
    # raise "hell"
  end

end

# {
# "copyright": "Talha Zia",
# "date": "2018-05-22",
# "explanation": "Why does the right part of this image of the Moon stand out?  Shadows. The terminator line -- the line between light and dark -- occurs in the featured image so that just over half the Moon's face is illuminated by sunlight. The lunar surface appears different nearer the terminator because there the Sun is nearer the horizon and therefore causes shadows to become increasingly long.  These shadows make it easier for us to discern structure, giving us depth cues so that the two-dimensional image, when dominated by shadows, appears almost three-dimensional. Therefore, as the Moon fades from light to dark, shadows not only tell us the high from the low, but become noticeable for increasingly shorter structures. For example, many craters appear near the terminator because their height makes them easier to discern there.  The image was taken two weeks ago when the lunar phase was waning gibbous. The next full moon, a Moon without shadows, will occur one week from today.",
# "hdurl": "https://apod.nasa.gov/apod/image/1805/TerminatorMoon_Zia_1176.jpg",
# "media_type": "image",
# "service_version": "v1",
# "title": "Craters and Shadows at the Lunar Terminator",
# "url": "https://apod.nasa.gov/apod/image/1805/TerminatorMoon_Zia_960.jpg"
# }
