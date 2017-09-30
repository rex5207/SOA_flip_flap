require 'yaml'

# Module that can be included (mixin) to take and output YAML data
module YamlBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_yaml(yaml)
    @data = YAML.safe_load(yaml)
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_yaml
    @data = @data.to_yaml
  end
end
