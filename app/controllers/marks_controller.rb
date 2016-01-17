class MarksController < ApplicationController
  def index
  	@marks = Mark.all
  end
  def new
  	@mark = Mark.new
  end
  def create
  	@mark = Mark.new(mark_params)
  	if @mark.save
  		flash[:notice] = "good."
  		redirect_to :action => 'index'
  	else
  		flash[:notice]=@mark.errors.full_messages.to_sentence
  		render(:action=> 'new')
  	end
  end
	def mark_params
		params.require(:mark).permit(:studentName, :project, :dob)
	end
  
end
