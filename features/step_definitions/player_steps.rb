Given /^I bet (\d+) dollars each hand$/ do |ammt|
  @game.player.bet_size = ammt
end
