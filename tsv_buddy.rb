require 'csv'

# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    @data = []
    CSV.parse(tsv, col_sep: "\t", headers: true) do |row|
      @data.push(row.to_hash)
    end
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    headers = @data.first.keys
    result = headers.join("\t") + "\n"
    @data.each do |row|
      result += row.values.join("\t") + "\n"
    end
    result
  end
end
