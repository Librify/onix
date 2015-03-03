# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::Price do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "price.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should correctly convert to a string" do
    p = ONIX::Price.from_xml(@root.to_s)
    p.to_xml.to_s[0,7].should eql("<Price>")
  end

  it "should provide read access to first level attributes" do
    p = ONIX::Price.from_xml(@root.to_s)

    p.price_type_code.should eql(2)
    p.price_amount.should eql(BigDecimal.new("7.5"))
  end

  it "should provide write access to first level attributes" do
    p = ONIX::Price.new

    p.price_type_code = 1
    p.to_xml.to_s.include?("<PriceTypeCode>01</PriceTypeCode>").should be_true

    p.price_amount = BigDecimal.new("7.5")
    p.to_xml.to_s.include?("<PriceAmount>7.5</PriceAmount>").should be_true

  end
end

describe ONIX::Price, "ONIX 3.0" do

  before(:each) do
    data_path = File.join(File.dirname(__FILE__),"..","data")
    file1    = File.join(data_path, "onix3_price.xml")
    @doc     = Nokogiri::XML::Document.parse(File.read(file1))
    @root = @doc.root
  end

  it "should correctly convert to a string" do
    p = ONIX::Price.from_xml(@root.to_s)
    p.to_xml.to_s[0,7].should eql("<Price>")
  end

  it "should provide read access to first level attributes" do
    p = ONIX::Price.from_xml(@root.to_s)

    p.price_type.should eql(2)
    p.price_amount.should eql(BigDecimal.new("7.99"))
    p.currency_code.should eql("GBP")
    p.printed_on_product.should eql(2)
    p.position_on_product.should eql(1)
    p.price_status.should eql(2)
  end

  it "should provide write access to first level attributes" do
    p = ONIX::Price.new

    p.price_type = 1
    p.to_xml.to_s.include?("<PriceType>01</PriceType>").should be_true

    p.price_amount = BigDecimal.new("7.5")
    p.to_xml.to_s.include?("<PriceAmount>7.5</PriceAmount>").should be_true
  end

end
