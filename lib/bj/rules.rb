require 'yaml'

RULES = {}

rules_dir = File.join(File.dirname(__FILE__), '..', '..', 'config', 'rules')

Dir.foreach(rules_dir) do |fname|
  if !File.directory?(fname)
    rules = YAML.load_file(
      File.join(rules_dir, fname)
    )
    rule_set_name = fname.match(/(.+)\.yml/)[1]
    RULES[rule_set_name] = rules
  end
end
