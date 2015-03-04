# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::ProductSupply, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "product_supplies.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should provide read access to first level attributes" do
    product_supplies = ONIX::ProductSupply.from_xml(@root.to_s)

    product_supplies.markets.size.should eql(1)
    product_supplies.market_publishing_details.size.should eql(1)
    product_supplies.supply_details.size.should eql(1)
  end

end
