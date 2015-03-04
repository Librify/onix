# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::CollateralDetail, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "collateral_detail.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should provide read access to first level attributes" do
    collateral_detail = ONIX::CollateralDetail.from_xml(@root.to_s)

    collateral_detail.text_content.size.should eql(4)
    collateral_detail.cited_content.size.should eql(1)
    collateral_detail.supporting_resource.size.should eql(2)
  end
end
