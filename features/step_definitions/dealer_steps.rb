Given /^the dealer plays standard rules$/ do
  @game.rules = RULES["standard"]
end

Given /^the dealer uses a "([^"]*)" deck shoe$/ do |num_decks|
    @game.shoe_size = num_decks
end
