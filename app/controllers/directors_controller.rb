class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    directors_with_dob = Director.where.not(:dob => nil)
    directors_by_age = directors_with_dob.order({:dob => :asc})
    @eldest_director = directors_by_age.at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def strongest
    directors_with_dob = Director.where.not(:dob => nil)
    directors_by_age = directors_with_dob.order({:dob => :desc})
    @youngest_director = directors_by_age.at(0)
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details
    director_id = params.fetch("an_id")
    @the_director = Director.where({:id=>director_id}).at(0)
    @filmography = Movie.where({:director_id=>director_id})
    render({ :template => "director_templates/show.html.erb"})
  end

end