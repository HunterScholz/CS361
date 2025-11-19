class GoogleWeatherAPI
    # Set the location for all subsequent queries
    #
    # Example: set_location(97701)
    def set_location(location)
    end

    # Return the temperature on a given scale
    #
    # Example: get_temperature(GoogleWeatherAPI::CELCIUS)
    # Example: get_temperature(GoogleWeatherAPI::FAHRENHEIT)
    def get_temperature(scale)
    end

    # Return the wind direction in degrees and speed in mph
    #
    # Example: get_wind() -> "190@8"
    def get_wind()
    end

    # Return the sky conditions as a string
    #
    # Example: get_sky_conditions() -> "partly cloudy"
    def get_sky_conditions()
    end
end

class PirateWeatherAPI
    # Return the current temperature in Celcius for a given zipcode
    #
    # Example: current_temp(97701) -> 20
    def current_temp(location)
    end

    # Convert a Celcius temperation to Fahrenheit
    #
    # Example c_to_f(21) -> 69.8
    def c_to_f(c)
    end

    # Return the wind direction in degrees for a given zipcode
    #
    # Example: wind_dir(97701) -> 190
    def wind_dir(location)
    end

    # Return the wind speed in kph for a given zipcode
    #
    # Example: wind_speed(97701) -> 8.2
    def wind_speed(location)
    end

    # Return the sky conditions as a string for a given zipcode
    #
    # Example: sky_status(97701) -> "Partly cloudy; visibility 10 mi"
    def sky_status(location)
    end
end

class GoogleWeatherWrapper
    def initialize()
        @weather_api = GoogleWeatherAPI.new
    end

    def set_location(location)
        @weather_api.set_location(location)
    end

    def get_temp(scale)
        weather_api.get_temperature(GoogleWeatherAPI::scale)
    end

    def get_wind_status
        @weather_api.get_wind
    end

    def get_sky_status
        @weather_api.get_sky_conditions
    end
end

class PirateWeatherWrapper
    def initialize()
        @weather_api = PirateWeatherAPI.new
    end

    def set_location(location)
        @location = location
    end

    def get_temp(scale)
        if scale == :CELCIUS
            @weather_api.current_temp(@location)
        elsif scale == :FAHRENHEIT
            temp = @weather_api.current_temp(@location)
            @weather_api.c_to_f(temp)
        end
    end

    def get_wind_status
        @weather_api.wind_dir(@location)
    end

    def get_sky_status
        @weather_api.sky_status(@location)
    end
end

class Weather
  def initialize(api)
    @weather_api = api
  end

  def weather_summary(zip)
    @weather_api.set_location(zip)
    temp = @weather_api.get_temp(:FAHRENHEIT)
    sky = @weather_api.get_sky_status()
    wind = @weather_api.get_wind_status()

    "#{zip} #{temp} #{sky} #{wind}"
  end
end

api = PirateWeatherWrapper.new
w = Weather.new(api)

puts w.weather_summary(97701)
puts w.weather_summary(95959)
puts w.weather_summary(01772)