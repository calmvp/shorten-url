class Url < ActiveRecord::Base
  before_save :generate_shortened_url
  # Remember to create a migration!
  
  def generate_shortened_url
    short = 5.times.map { (rand(0..25) + 97).chr }.join
    if Url.where(short_name: short).any?
      generate_shortened_url
    else
      self.short_name = short
    end
  end

  def self.new_url
    Url.new(params[:long_name])
  end

end
