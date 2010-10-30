class BasicsController < ApplicationController
  # GET /basics
  # GET /basics.xml
  def index
    @basics = Basic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @basics }
    end
  end

  # GET /basics/1
  # GET /basics/1.xml
  def show
    @basic = Basic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @basic }
    end
  end

  # GET /basics/new
  # GET /basics/new.xml
  def new
    @basic = Basic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @basic }
    end
  end

  # GET /basics/1/edit
  def edit
    @basic = Basic.find(params[:id])
  end

  # POST /basics
  # POST /basics.xml
  def create
    @basic = Basic.new(params[:basic])

    respond_to do |format|
      if @basic.save
        format.html { redirect_to(@basic, :notice => 'Basic was successfully created.') }
        format.xml  { render :xml => @basic, :status => :created, :location => @basic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @basic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /basics/1
  # PUT /basics/1.xml
  def update
    @basic = Basic.find(params[:id])

    respond_to do |format|
      if @basic.update_attributes(params[:basic])
        format.html { redirect_to(@basic, :notice => 'Basic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @basic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /basics/1
  # DELETE /basics/1.xml
  def destroy
    @basic = Basic.find(params[:id])
    @basic.destroy

    respond_to do |format|
      format.html { redirect_to(basics_url) }
      format.xml  { head :ok }
    end
  end
end
