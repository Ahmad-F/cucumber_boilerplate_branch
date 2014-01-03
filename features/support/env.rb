# gems
require "rspec-expectations"
require "page-object"
require "data_magic"
require "require_all"
require "fig_newton"
require "pretty_face"

# local lib
require_relative "lib/sql.rb"

# require_all gem
require_rel "pages"

World(PageObject::PageFactory)
