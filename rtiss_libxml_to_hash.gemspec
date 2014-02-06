require File.join(File.dirname(__FILE__), 'lib', 'rtiss_libxml_to_hash')

Gem::Specification.new do |s|
  s.name        = 'rtiss_libxml_to_hash'
  s.version     = LibXmlNode::VERSION
  s.date        = '2014-02-06'
  s.summary     = "A simple library to convert XML strings to hashes using libxml"
  s.rubyforge_project = 'rtiss_libxml_to_hash'
  s.description = "A simple library to convert XML strings to hashes using libxml

This adds to from_lib_xml method to the Hash class which uses libxml (which
is much faster than ReXML) to convert a XML string into a Hash"

  s.authors     = ["Johannes Thoma"]
  s.email       = 'johannes.thoma@gmx.at'
  s.homepage    = 'https://github.com/rtiss/libxml-to-hash'
  s.add_dependency("libxml-ruby")

  s.require_paths = %w[lib]

  s.files       =  Dir.glob("{lib,test}/**/*").delete_if { |item| item.match( /\.(svn|git)/ ) }
end
