Given /^I start with (\d+) dollars of chips$/ do |ammt|
  @game.player.chip_stack = ammt
end
