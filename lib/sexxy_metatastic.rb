# SexxyMetatastic
module SexxyMetatastic
  module ActionView
    
    def display_meta(defaults = {})
      output = ""
      defaults.each_pair do |key,value|
        output += "<meta name='#{key.to_s}' content='#{value}' />\n"
      end
      return output
    end
    
  end
end