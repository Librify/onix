# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::PublishingDetail, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "publishing_detail.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should provide read access to first level attributes" do
    publishing_detail = ONIX::PublishingDetail.from_xml(@root.to_s)

    publishing_detail.city_of_publication.should eql("London")
    publishing_detail.country_of_publication.should eql("GB")
    publishing_detail.publishing_status.should eql(4)
    publishing_detail.publishing_date.size.should eql(3)
    publishing_detail.sales_rights.size.should eql(2)
    publishing_detail.row_sales_rights_type.should eql(2)
  end

  it "should provide write access to first level attributes" do
    publishing_detail = ONIX::PublishingDetail.from_xml(@root.to_s)

    publishing_detail.city_of_publication = "London"
    publishing_detail.to_xml.to_s.include?("<CityOfPublication>London</CityOfPublication>").should be_true

    publishing_detail.country_of_publication = "GB"
    publishing_detail.to_xml.to_s.include?("<CountryOfPublication>GB</CountryOfPublication>").should be_true

    publishing_detail.row_sales_rights_type = 02
    publishing_detail.to_xml.to_s.include?("<ROWSalesRightsType>02</ROWSalesRightsType>").should be_true
  end
end
