class CustomQuestionAnswersController < ApplicationController
  # GET /custom_question_answers
  # GET /custom_question_answers.xml
  def index
    @custom_question_answers = CustomQuestionAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custom_question_answers }
    end
  end

  # GET /custom_question_answers/1
  # GET /custom_question_answers/1.xml
  def show
    @custom_question_answer = CustomQuestionAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_question_answer }
    end
  end

  # GET /custom_question_answers/new
  # GET /custom_question_answers/new.xml
  def new
    @custom_question_answer = CustomQuestionAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_question_answer }
    end
  end

  # GET /custom_question_answers/1/edit
  def edit
    @custom_question_answer = CustomQuestionAnswer.find(params[:id])
  end

  # POST /custom_question_answers
  # POST /custom_question_answers.xml
  def create
    @custom_question_answer = CustomQuestionAnswer.new(params[:custom_question_answer])

    respond_to do |format|
      if @custom_question_answer.save
        format.html { redirect_to(@custom_question_answer, :notice => 'Custom question answer was successfully created.') }
        format.xml  { render :xml => @custom_question_answer, :status => :created, :location => @custom_question_answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_question_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_question_answers/1
  # PUT /custom_question_answers/1.xml
  def update
    @custom_question_answer = CustomQuestionAnswer.find(params[:id])

    respond_to do |format|
      if @custom_question_answer.update_attributes(params[:custom_question_answer])
        format.html { redirect_to(@custom_question_answer, :notice => 'Custom question answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_question_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_question_answers/1
  # DELETE /custom_question_answers/1.xml
  def destroy
    @custom_question_answer = CustomQuestionAnswer.find(params[:id])
    @custom_question_answer.destroy

    respond_to do |format|
      format.html { redirect_to(custom_question_answers_url) }
      format.xml  { head :ok }
    end
  end
end
