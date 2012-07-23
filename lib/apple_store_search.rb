require "apple_store_search/version"

module AppleStoreSearch
  # Your code goes here...
  class Search
    include HTTParty
    BASE_URI = 'http://itunes.apple.com/search?'
    
    def search(options,selected = nil)
      load_options(options)
      data = search_parse
      if data.has_key?('errorMessage')
        return "Invalid key-value pair(s) in request" 
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
      get_selected(data, selected)
    end

    protected

     def get_selected(data, selected)
        return data if selected.nil?
        count = data['resultCount']
        j = 0
        result = Hash.new
        data['results'].each do |data|
           i = 0
           set = Array.new
     def get_selected(selected)
        count = @data['resultCount']
        j = 0
        @result = Hash.new
        @data['results'].each do |data|
           i = 0
           @set = Array.new
           selected.each do |key|
              set.push(data[key])
           end
           result[j] = set
           @result[j] = @set
           j+=1
        end
        result
    end

    def search_parse #(selected)
      page = self.class.get(BASE_URI).body
      data = JSON.parse(page)
    def search_parse  #(selected)
      curl = CURL.new
      page = curl.get_raw(@base_url)
      @data = JSON.parse(page)
      return @data
    end

    def load_options(opt)
      opt.each_with_index do |(key,value),index|
        BASE_URI << "#{key}=#{value}&"
      end
    end
  end
end
