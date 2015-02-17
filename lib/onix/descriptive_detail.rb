# coding: utf-8

module ONIX
  class DescriptiveDetail
    include ROXML

    xml_name "DescriptiveDetail"

    xml_accessor :product_composition, :from => "ProductComposition", :as => Integer
    xml_accessor :product_form, :from => "ProductForm"
    xml_accessor :product_form_details, :from => "ProductFormDetail"
    xml_accessor :measures, :from => "Measure", :as => [ONIX::Measure]
    xml_accessor :country_of_manufacture, :from => "CountryOfManufacture"
    xml_accessor :product_classifications, :from => "ProductClassification"
    xml_accessor :collection, :from => "Collection", :as => [ONIX::Collection]
    xml_accessor :title_details, :from => "TitleDetail", :as => [ONIX::TitleDetail]
    xml_accessor :contributors, :from => "Contributor", :as => [ONIX::Contributor]
    xml_accessor :contributor_statement, :from => "ContributorStatement"
    xml_accessor :languages, :from => "Language", :as => [ONIX::Language]
    xml_accessor :extents, :from => "Extent", :as => [ONIX::Extent]
    xml_accessor :subjects, :from => "Subject", :as => [ONIX::Subject]
    xml_accessor :audience, :from => "Audience", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :product_form_description, :from => "ProductFormDescription", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :product_parts, :from => "ProductPart", :as => [ONIX::ProductPart]
    xml_accessor :edition_number, :from => "EditionNumber", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :editions, :from => "Edition"
    xml_accessor :epub_technical_protections, :from => "EpubTechnicalProtection", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :product_content_type, :from => "ProductContentType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :epub_usage_constraint, :from => "EpubUsageConstraint", :as => [ONIX::EpubUsageConstraint]
    xml_accessor :number_of_copies, :from => "NumberOfCopies", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit

    def initialize
      self.measures = []
      self.collection = []
      self.title_details = []
      self.contributors = []
      self.languages = []
      self.extents = []
      self.subjects = []
      self.product_parts = []
      self.product_form_description = []
      self.epub_usage_constraint = []
      self.number_of_copies = []
    end

  end
end
