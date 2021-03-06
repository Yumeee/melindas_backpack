class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    weather_and_day
  end

  def items
    @items
  end

  def pack_basic_clothes
    @items << 'pants'
    @items << 'shirt'
  end

  def weather_and_day
    # set up local variables used by rest of weather_and_day method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    pack_basic_clothes
    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def my_func
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
