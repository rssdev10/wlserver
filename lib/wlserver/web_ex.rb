module WLServer
  module WebEx
    def read_and_process dirname, filname
      template = File.read File.join(dirname, filname)
      template.gsub! /ZVMODELVZ/, 'RT-N16'
      template.gsub! /<%[.[^>]]*%>/ do |match|
        eval match[2..-3]   # exclude <% %>
      end
      template
    end
  
    protected
    def nvram_get name
      (res = Nvram.find_by_name(name)) ? res.val : ""
    end
  
    def nvram_match name, match, ret_val
	  if (res = Nvram.find_by_name(name))
	    res.val == match ? ret_val : ""
	  end
    end
  
    def include filename
      File.read "#{Rails.root}/public_asp/" + filename
    end
  
    def load_script script_name
    end 
  
    def nvram_double_match name1, match1, name2, match2, ret_val
    end  
  
    def nvram_dump script_name, params
    end
  
    def nvram_get_table list
    end
  
    def nvram_match_both param1, param2, param3, param4
    end
  
    def nvram_match_list name, group, match, ret_val
    end
  
    def select_channel
    end
  
    def select_country
    end
  
    def uptime
      DateTime.now.to_s
    end
  
    def urlcache
    end
  end
end