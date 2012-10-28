class AspParserController < ApplicationController
  include WLServer::WebEx

  def parse     
    render :text => read_and_process("#{Rails.root}/public_asp/", "#{params[:filename]}.asp"),
			 :content_type => 'text/html'
  end
  
  def nvram_print     
	 render :xml => Nvram.all
  end
end
