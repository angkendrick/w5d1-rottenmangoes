class Movie < ActiveRecord::Base
  has_many :reviews

  validates :title,
            presence: true

  validates :director,
            presence: true

  validates :runtime_in_minutes,
            numericality: { only_integer: true }

  validates :description,
            presence: true

  validates :poster_image_url,
            presence: true

  validates :release_date,
            presence: true

  validate :release_date_is_in_the_future

  #attr_accessor :poster

  mount_uploader :poster, PosterUploader

  def review_average
    # add check against reviews.size = 0
    # add this method to views where average is needed <%= @movie.review_average %>/10
    reviews.sum(:rating_out_of_ten)/reviews.size
  end

  protected

  def release_date_is_in_the_future
    if release_date.present?
      errors.add(:release_date, 'should probably be in the future') if release_date < Date.today
    end
  end

end
