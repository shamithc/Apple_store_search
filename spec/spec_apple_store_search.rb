require 'spec_helper'

describe AppleStoreSearch  do
  subject{AppleStoreSearch::Search.new}
  let(:base_u)
  let(:options)  {{:term=>"a",:lang=>"en",:limit=>500}}
  let(:selected) {['artistId','artistName']}
  
  it "apple store search respond to search" do
    subject.should respond_to :search
  end
  
  it "Should call search with one Argument" do
    expect{subject.search}.to raise_error
  end
end
