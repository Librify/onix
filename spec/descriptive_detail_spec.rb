# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::DescriptiveDetail, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "descriptive_detail.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should provide read access to first level attributes" do
    descriptive_detail = ONIX::DescriptiveDetail.from_xml(@root.to_s)

    descriptive_detail.product_composition.should eql(0)
    descriptive_detail.product_form_details.should eql("B105")
    descriptive_detail.product_form.should eql("BC")
    descriptive_detail.country_of_manufacture.should eql("GB")
    descriptive_detail.measures.size.should eql(4)
    descriptive_detail.collections.size.should eql(1)
    descriptive_detail.title_details.size.should eql(2)
    descriptive_detail.contributors.size.should eql(4)
    descriptive_detail.languages.size.should eql(2)
    descriptive_detail.extents.size.should eql(2)
    descriptive_detail.subjects.size.should eql(6)
    descriptive_detail.audience.size.should eql(1)
  end

  it "should provide write access to first level attributes" do
    descriptive_detail = ONIX::DescriptiveDetail.from_xml(@root.to_s)

    descriptive_detail.product_form_details = "B103"
    descriptive_detail.to_xml.to_s.include?("<ProductFormDetail>B103</ProductFormDetail>").should be_true

    descriptive_detail.product_form = "BC"
    descriptive_detail.to_xml.to_s.include?("<ProductForm>BC</ProductForm>").should be_true

  end
end