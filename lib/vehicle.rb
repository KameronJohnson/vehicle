class Vehicle
  define_method(:initialize) do |make, model, year|
    @year = year #instance variable of year to be used with age method
    @make = make
  end

  define_method(:age) do
    current_year = Time.new().year() #.year() is a defined method
    current_year.-(@year)
  end

  define_method(:worth_buying?) do #method if car is american and less than 15 years old
    american_cars = ["Chrysler", "Ford", "GM"]
    american = american_cars.include?(@make)
    new_enough = age.<=(15) #calling the .age() method on self
    american.&(new_enough)
  end
end
