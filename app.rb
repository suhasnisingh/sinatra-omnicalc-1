require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @number = params.fetch("number").to_i
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @number = params.fetch("number").to_i
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @years = params.fetch("years").to_f
  @pv = params.fetch("pv").to_f
  @numerator = (@apr / (100 * 12)) * @pv
  @denominator = 1 - ((1-@apr)**(-12 * @years))
  @result = @numerator / @denominator
  erb(:payment_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  @result = rand(@min..@max)

  erb(:random_results)
end
