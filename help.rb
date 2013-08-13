# help.rb
# 
# output some help infomation
#

def pdf_manager_help
  
  printf("\n\n ============pdf manager help begin========================= \n\n")

  printf("\n -v check version\n");
  printf("\n -h help \n");
  printf("\n -c start to change the pdf name\n")

  printf("\n\n ============pdf manager help end  ========================= \n\n")
end

def type_of(cmd)
  
  if cmd == "-v"
    printf("\nversion 1.0\n")
  end

  if cmd == "-h"
  end
end

