Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action=>"wisest"})

  get("/directors/youngest", { :controller => "directors", :action=>"strongest"})

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})

  get("/movies", {:controller => "movies", :action => "index"})

  get("/actors", {:controller => "actors", :action => "index"})

  get("/directors/:an_id", { :controller => "directors", :action=>"director_details"})

  get("/movies/:an_id", {:controller => "movies", :action => "movie_details"})

  get("/actors/:an_id", {:controller => "actors", :action => "actor_details"})

end