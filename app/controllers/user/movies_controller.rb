class User::MoviesController < ApplicationController
  require 'themoviedb-api'
   Tmdb::Api.key("24ae194a66e159e8302b86ee06e4b85c")
   Tmdb::Api.language("ja")

  def show

  end

  def serch
  end
end
