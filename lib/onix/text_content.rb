# coding: utf-8

module ONIX
  class TextContent
    include ROXML

    xml_name "TextContent"

    xml_accessor :text_type, :from => "TextType", :as => Fixnum
    xml_accessor :content_audience, :from => "ContentAudience", :as => Fixnum
    xml_accessor :text, :from => "Text"
    xml_accessor :source_title, :from => "SourceTitle"

  end
end
