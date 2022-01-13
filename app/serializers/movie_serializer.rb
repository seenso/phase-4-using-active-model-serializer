class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary

  # build a custom instance method that will let us customize the info returned
  def summary 
    # byebug
    "Serializer Summary - #{self.object.title} - #{self.object.description[0..49]}..."
  end
end
