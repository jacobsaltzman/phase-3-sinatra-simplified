class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  
  #movies controller

  get "/movies" do
    movies = Movie.all 
    movies.to_json  
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json
  end


  #reviews controller

  post "/reviews" do
    review = Review.create(params)
    review.to_json(:include => [:movie])
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(params) 
    review.to_json(:include => [:movie])
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end


end


