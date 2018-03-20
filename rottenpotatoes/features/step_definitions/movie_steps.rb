Given /^the following movies exist:$/ do |table|
  table.hashes.each do |hash|
    Movie.create hash
  end
end

Then /^the director of "(.*)" should be "(.*)"/ do |title_value, director_value|
  movie = Movie.find_by(title: title_value)
  expect(movie.director).to eql(director_value)
end