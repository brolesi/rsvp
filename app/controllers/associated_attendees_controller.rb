class AssociatedAttendeesController < ApplicationController
  # GET /associated_attendees
  # GET /associated_attendees.xml
  def index
    @associated_attendees = AssociatedAttendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @associated_attendees }
    end
  end

  # GET /associated_attendees/1
  # GET /associated_attendees/1.xml
  def show
    @associated_attendee = AssociatedAttendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @associated_attendee }
    end
  end

  # GET /associated_attendees/new
  # GET /associated_attendees/new.xml
  def new
    @associated_attendee = AssociatedAttendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @associated_attendee }
    end
  end

  # GET /associated_attendees/1/edit
  def edit
    @associated_attendee = AssociatedAttendee.find(params[:id])
  end

  # POST /associated_attendees
  # POST /associated_attendees.xml
  def create
    @associated_attendee = AssociatedAttendee.new(params[:associated_attendee])

    respond_to do |format|
      if @associated_attendee.save
        format.html { redirect_to(@associated_attendee, :notice => 'Associated attendee was successfully created.') }
        format.xml  { render :xml => @associated_attendee, :status => :created, :location => @associated_attendee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @associated_attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /associated_attendees/1
  # PUT /associated_attendees/1.xml
  def update
    @associated_attendee = AssociatedAttendee.find(params[:id])

    respond_to do |format|
      if @associated_attendee.update_attributes(params[:associated_attendee])
        format.html { redirect_to(@associated_attendee, :notice => 'Associated attendee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @associated_attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /associated_attendees/1
  # DELETE /associated_attendees/1.xml
  def destroy
    @associated_attendee = AssociatedAttendee.find(params[:id])
    @associated_attendee.destroy

    respond_to do |format|
      format.html { redirect_to(associated_attendees_url) }
      format.xml  { head :ok }
    end
  end
end
