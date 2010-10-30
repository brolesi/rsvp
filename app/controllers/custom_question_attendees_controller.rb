class CustomQuestionAttendeesController < ApplicationController
  # GET /custom_question_attendees
  # GET /custom_question_attendees.xml
  def index
    @custom_question_attendees = CustomQuestionAttendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custom_question_attendees }
    end
  end

  # GET /custom_question_attendees/1
  # GET /custom_question_attendees/1.xml
  def show
    @custom_question_attendee = CustomQuestionAttendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_question_attendee }
    end
  end

  # GET /custom_question_attendees/new
  # GET /custom_question_attendees/new.xml
  def new
    @custom_question_attendee = CustomQuestionAttendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_question_attendee }
    end
  end

  # GET /custom_question_attendees/1/edit
  def edit
    @custom_question_attendee = CustomQuestionAttendee.find(params[:id])
  end

  # POST /custom_question_attendees
  # POST /custom_question_attendees.xml
  def create
    @custom_question_attendee = CustomQuestionAttendee.new(params[:custom_question_attendee])

    respond_to do |format|
      if @custom_question_attendee.save
        format.html { redirect_to(@custom_question_attendee, :notice => 'Custom question attendee was successfully created.') }
        format.xml  { render :xml => @custom_question_attendee, :status => :created, :location => @custom_question_attendee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_question_attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_question_attendees/1
  # PUT /custom_question_attendees/1.xml
  def update
    @custom_question_attendee = CustomQuestionAttendee.find(params[:id])

    respond_to do |format|
      if @custom_question_attendee.update_attributes(params[:custom_question_attendee])
        format.html { redirect_to(@custom_question_attendee, :notice => 'Custom question attendee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_question_attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_question_attendees/1
  # DELETE /custom_question_attendees/1.xml
  def destroy
    @custom_question_attendee = CustomQuestionAttendee.find(params[:id])
    @custom_question_attendee.destroy

    respond_to do |format|
      format.html { redirect_to(custom_question_attendees_url) }
      format.xml  { head :ok }
    end
  end
end
