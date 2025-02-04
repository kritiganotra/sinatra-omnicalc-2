require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num + @second_num

  erb(:add_result)
end 

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num_sub = params.fetch("first_number_sub").to_f
  @second_num_sub = params.fetch("second_number_sub").to_f
  @result_sub = @second_num_sub - @first_num_sub

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num * @second_num
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num / @second_num
  erb(:div_result)
end
