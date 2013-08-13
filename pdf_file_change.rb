#
# search pdf file and then change the pdf file name
#

require "pdf/reader"

def change_file_name(file_name)
  
  reader = PDF::Reader.new(file_name)
  pdf_info = reader.info
  title = pdf_info[:Title]

  file_path = File.dirname(file_name)
  File.rename(file_name, file_path + "/" + title + File.extname(file_name))
  
end

def is_pdf_file?(file_name)
  if file_name.length < 4
    return false
  else
    file_extension = file_name[(file_name.length - 4)..file_name.length]
    if file_extension == ".pdf"
      return true
    end
  end
  return false
end

def search_pdf_files(file_path)
  if File.directory? file_path
    Dir.foreach(file_path) do |file|
      if file != "." and file != '..'
        search_pdf_files(file_path + "/" + file)
      end
    end
  else
    if is_pdf_file? file_path
      change_file_name(file_path)
    end
  end
end
