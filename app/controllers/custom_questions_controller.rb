class CustomQuestionsController < ApplicationController
  # GET /custom_questions
  # GET /custom_questions.xml
  def index
    @custom_questions = CustomQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custom_questions }
    end
  end

  # GET /custom_questions/1
  # GET /custom_questions/1.xml
  def show
    @custom_question = CustomQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_question }
    end
  end

  # GET /custom_questions/new
  # GET /custom_questions/new.xml
  def new
    @custom_question = CustomQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_question }
    end
  end

  # GET /custom_questions/1/edit
  def edit
    @custom_question = CustomQuestion.find(params[:id])
  end

  # POST /custom_questions
  # POST /custom_questions.xml
  def create
    @custom_question = CustomQuestion.new(params[:custom_question])

    respond_to do |format|
      if @custom_question.save
        format.html { redirect_to(@custom_question, :notice => 'Custom question was successfully created.') }
        format.xml  { render :xml => @custom_question, :status => :created, :location => @custom_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_questions/1
  # PUT /custom_questions/1.xml
  def update
    @custom_question = CustomQuestion.find(params[:id])

    respond_to do |format|
      if @custom_question.update_attributes(params[:custom_question])
        format.html { redirect_to(@custom_question, :notice => 'Custom question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_questions/1
  # DELETE /custom_questions/1.xml
  def destroy
    @custom_question = CustomQuestion.find(params[:id])
    @custom_question.destroy

    respond_to do |format|
      format.html { redirect_to(custom_questions_url) }
      format.xml  { head :ok }
    end
  end
end
