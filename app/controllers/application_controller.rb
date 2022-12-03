class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  
  #movies controller

  get "/movies" do
    movies = Movie.all 
    movies.to_json  
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json(only: [:id, :title, :image, :year], include: {
      reviews: { only: [:comments, :user_rating, :scare_scale]}
    })
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json
  end


  #reviews controller


  get "/reviews" do 
    reviews = Review.all 
    reviews.to_json(:include => [:movie]) 
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json(:include => [:movie])
  end

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

  get "/movies/:id/reviews" do
    review = Movie.find(params[:id]).reviews
    review.to_json
  end

end


