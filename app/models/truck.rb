class Truck < ActiveRecord::Base
  belongs_to :dayofweek

  def self.search(search, type)
    if !@trucks.instance_of?(Array) || search != nil
      @trucks = []
      if type == 'location'
        @results = Truck.where("location LIKE ?", "%#{search}%")
        @results.each do |result|
          @trucks << result
        end

      elsif type == 'cuisine'
        @results = Truck.where("cuisine LIKE ?", "%#{search}%")
        @results.each do |result|
          @trucks << result
        end

      elsif type == 'truck'
        @results = Truck.where("name LIKE ?", "%#{search}%")
        @results.each do |result|
          @trucks << result
        end

      else
        @day = Dayofweek.where("day LIKE ?", "%#{search}%")
        @results = Truck.where(dayofweek_id: "#{@day[0]["id"]}")
        @results.each do |result|
          @trucks << result
        end
      end
    end

    sleep(2)
    return @trucks
  end

end
