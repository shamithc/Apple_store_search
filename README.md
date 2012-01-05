# Apple Store Search #


Apple Store Search is the gem to search from apple store.

  * Simple to use
   
## How to use it ##

    gem install apple_store_search

You can call the Gem by 

    AppleStoreSearch::Search.new.search(options,selected) #it will return a json 

You can parse the JSON result. Pass the argument. options should be a hash that describe search criteria.
selected should be an array.This describe what are the parameter should be returned from API call.    

eg:-
    options={:term=>"a",:lang=>"en",:limit=>500}
    selected=['artistId','artistName']
   

See the [Apple Search API Details](http://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html)
See the [Runygems](https://rubygems.org/gems/apple_store_search) to install.
