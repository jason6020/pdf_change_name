#
# pdf_manager
#
# this code can do something about pdf, there is a lot of
# pdf files in my computer, I can know their names clearly,
# so I wrote this code to make the pdf to have their own right name!
#
# by yangjie
#
# 2013-08-10
#

require 'rubygems'
require 'pdf/reader'
require './help'
require './pdf_file_change'

if ARGV.size != 1
  pdf_manager_help
  exit
end

$file_path = ARGV[0].to_s

search_pdf_files ($file_path)
































