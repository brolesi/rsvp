class AttendeeAnswersController < ApplicationController
  # GET /attendee_answers
  # GET /attendee_answers.xml
  def index
    @attendee_answers = AttendeeAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendee_answers }
    end
  end

  # GET /attendee_answers/1
  # GET /attendee_answers/1.xml
  def show
    @attendee_answer = AttendeeAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendee_answer }
    end
  end

  # GET /attendee_answers/new
  # GET /attendee_answers/new.xml
  def new
    @attendee_answer = AttendeeAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendee_answer }
    end
  end

  # GET /attendee_answers/1/edit
  def edit
    @attendee_answer = AttendeeAnswer.find(params[:id])
  end

  # POST /attendee_answers
  # POST /attendee_answers.xml
  def create
    @attendee_answer = AttendeeAnswer.new(params[:attendee_answer])

    respond_to do |format|
      if @attendee_answer.save
        format.html { redirect_to(@attendee_answer, :notice => 'Attendee answer was successfully created.') }
        format.xml  { render :xml => @attendee_answer, :status => :created, :location => @attendee_answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendee_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendee_answers/1
  # PUT /attendee_answers/1.xml
  def update
    @attendee_answer = AttendeeAnswer.find(params[:id])

    respond_to do |format|
      if @attendee_answer.update_attributes(params[:attendee_answer])
        format.html { redirect_to(@attendee_answer, :notice => 'Attendee answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendee_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendee_answers/1
  # DELETE /attendee_answers/1.xml
  def destroy
    @attendee_answer = AttendeeAnswer.find(params[:id])
    @attendee_answer.destroy

    respond_to do |format|
      format.html { redirect_to(attendee_answers_url) }
      format.xml  { head :ok }
    end
  end
end
