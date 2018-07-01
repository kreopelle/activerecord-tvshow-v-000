class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
    binding.pry
  end

  def self.most_popular_show
    Show.where(:rating = Show.highest_rating)
    SELECT * FROM shows ORDER BY show.rating DESC LIMIT 1

  end

  def self.lowest_rating
  end

  def self.least_popular_show
  end

  def self.ratings_sum
  end

  def self.popular_shows
  end

  def self.shows_by_alphabetical_order
  end


end
