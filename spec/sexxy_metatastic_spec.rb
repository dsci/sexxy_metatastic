require File.dirname(__FILE__) + '/spec_helper'

include SexxyMetatastic::ActionView

describe SexxyMetatastic do

  it "should provide a display_meta method" do
    ActionView.methods.include?("display_meta").should be true
  end
  
  it "should return a meta_tag tag with keywords" do
    result = "<meta name='keywords' content='sun fishing water' />\n"
    display_meta({:keywords => "sun fishing water"}).should == result
  end
  
  it "should return meta_tag tags with keywords and description" do
    meta = display_meta({:keywords => "sun fishing water", :description => "sunshine site"})
    meta.include?("description").should be true
    meta.include?("keywords").should be true
  end

end