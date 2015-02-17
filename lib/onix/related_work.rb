# coding: utf-8

module ONIX
  class RelatedWork
    include ROXML

    xml_name "RelatedWork"

    xml_accessor :work_relation_code, :from => "WorkRelationCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :work_identifier, :from => "WorkIdentifier", :as => [ONIX::WorkIdentifier]

    def initialize
      self.work_identifier = []
    end

  end
end
