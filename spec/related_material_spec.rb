# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::RelatedMaterial, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "related_material.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should provide read access to first level attributes" do
    related_material = ONIX::RelatedMaterial.from_xml(@root.to_s)

    related_material.related_work.size.should eql(1)
    related_material.related_product.size.should eql(1)
  end
end
