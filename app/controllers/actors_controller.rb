class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    actor_id = params.fetch("an_id")
    @the_actor = Actor.where({:id=>actor_id}).at(0)
    render({ :template => "actor_templates/show.html.erb"})
  end

end
