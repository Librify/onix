# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper.rb'

describe ONIX::Normaliser, "with a simple short tag file" do

  before(:each) do
    @data_path = File.join(File.dirname(__FILE__),"..","data")
    @filename  = File.join(@data_path, "short_tags.xml")
    @outfile   = @filename + ".new"
  end

  after(:each) do
    File.unlink(@outfile) if File.file?(@outfile)
  end

  it "should correctly convert short tag file to reference tag" do
    ONIX::Normaliser.process(@filename, @outfile)

    File.file?(@outfile).should be_true
    content = File.read(@outfile)
    content.include?("<m174>").should be_false
    content.include?("<FromCompany>").should be_true
  end
end

describe ONIX::Normaliser, "with a simple short tag file that has no doctype" do

  before(:each) do
    @data_path = File.join(File.dirname(__FILE__),"..","data")
    @filename  = File.join(@data_path, "short_tags_no_doctype.xml")
    @outfile   = @filename + ".new"
  end

  after(:each) do
    File.unlink(@outfile) if File.file?(@outfile)
  end

  it "should correctly convert short tag file to reference tag" do
    pending
    ONIX::Normaliser.process(@filename, @outfile)

    File.file?(@outfile).should be_true
    content = File.read(@outfile)
    content.include?("<m174>").should be_false
    content.include?("<FromCompany>").should be_true
  end
end

describe ONIX::Normaliser, "with a short tag file that include HTML tags" do

  before(:each) do
    @data_path = File.join(File.dirname(__FILE__),"..","data")
    @filename  = File.join(@data_path, "short_tags_ivp.xml")
    @outfile   = @filename + ".new"
  end

  after(:each) do
    File.unlink(@outfile) if File.file?(@outfile)
  end

  it "should correctly convert short tag file to reference tag" do
    ONIX::Normaliser.process(@filename, @outfile)

    File.file?(@outfile).should be_true
    content = File.read(@outfile)
    content.include?("<m174>").should be_false
    content.include?("<FromCompany>").should be_true
    content.include?("<em>Discipleship Essentials</em>").should be_true
  end

end

describe ONIX::Normaliser, "with a utf8 file that has illegal control chars" do

  before(:each) do
    @data_path = File.join(File.dirname(__FILE__),"..","data")
    @filename  = File.join(@data_path, "control_chars.xml")
    @outfile   = @filename + ".new"
  end

  after(:each) do
    File.unlink(@outfile) if File.file?(@outfile)
  end

  # it "should remove all control chars except LF, CR and TAB" do
  #   debugger
  #   ONIX::Normaliser.process(@filename, @outfile)

  #   File.file?(@outfile).should be_true
  #   content = File.read(@outfile)

  #   content.include?("<TitleText>OXFORDPICTURE DICTIONARY CHINESE</TitleText>").should be_true
  # end
end

describe ONIX::Normaliser, "ONIX 3.0" do

  before(:each) do
    @data_path = File.join(File.dirname(__FILE__),"..","data")

    @onix3_filename  = File.join(@data_path, "onix3_shorttags.xml")
    @onix3_outfile   = @onix3_filename + ".new"
  end

  it "should correctly convert onix 3 short tag file to reference tag" do
    ONIX::Normaliser.process(@onix3_filename, @onix3_outfile, 3)

    File.file?(@onix3_outfile).should be_true
    content = File.read(@onix3_outfile)
    content.include?("<x307>").should be_false
    content.include?("<SentDateTime>").should be_true
  end

end
