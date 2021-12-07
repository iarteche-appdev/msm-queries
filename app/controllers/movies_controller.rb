class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    movie_id = params.fetch("an_id")
    @the_movie = Movie.where({:id=>movie_id}).at(0)
    #@the_movie_director = Director.where({:id => @the_movie.director_id}).at(0)
    render({ :template => "movie_templates/show.html.erb"})
  end

end
