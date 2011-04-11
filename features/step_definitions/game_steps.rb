Given /^I sit alone at the table$/ do
  @game = BJ::Game.new
end

When /^I play "([^"]*)" shoe$/ do |num_shoes|
  @game.shoes_to_play = num_shoes
  @game.play
end
