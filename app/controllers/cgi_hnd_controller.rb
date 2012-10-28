class CgiHndController < ApplicationController
  def run
    case params[:filename]
	when 'apply'
	  params.each do |name, val|
	    if (rec = Nvram.find_by_name (name))
		  rec.val = val
          rec.save
		else
		  Nvram.create(:name => name, :val => val).save
		end	    
	  end	  
	  redirect_to :back

    when 'upgrade'
	  redirect_to :back	  

	when 'json'
	  render :json => Nvram.all

    when 'json_get'
	  render :json => Nvram.all

	when 'json_set'
	  
	end	
  end
end
