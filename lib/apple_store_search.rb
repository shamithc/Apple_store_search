require "apple_store_search/version"

module AppleStoreSearch
  # Your code goes here...
  class Search
    #initialization 
    def initialize
      @base_url = "http://itunes.apple.com/search?"
      #@curl = CURL.new
    end
   
    def search(options,selected)
      @base_url = load_options(options)
      search_parse
      if @data.has_key?('errorMessage')
         puts "Invalid key-value pair(s) in request"
         return
      end
      get_selected(selected)
      return @result
      #puts @data
    end

    protected

     def get_selected(selected)
        count = @data['resultCount']
        j = 0
        @result = Hash.new
        @data['results'].each do |data|
           i = 0
           @set = Array.new
           selected.each do |key|
              #@result[j] << data[key]
              @set.push(data[key])
           end
           @result[j] = @set
           j+=1
        end
        #puts @result
    end

    def search_parse  #(selected)
      curl = CURL.new
      page = curl.get_raw(@base_url)
      @data = JSON.parse(page)
      return @data
    end

    def load_options(opt)
      opt.each_with_index do |(key,value),index|
        @base_url << "#{key}=#{value}&"
      end
       return @base_url
    end
  end
end
