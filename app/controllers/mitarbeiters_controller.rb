class MitarbeitersController < ApplicationController
  layout "test"
  
  # GET /mitarbeiters
  # GET /mitarbeiters.xml
  def index
    @mitarbeiters = Mitarbeiter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mitarbeiters }
    end
  end

  # GET /mitarbeiters/1
  # GET /mitarbeiters/1.xml
  def show
    @mitarbeiter = Mitarbeiter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mitarbeiter }
    end
  end

  # GET /mitarbeiters/new
  # GET /mitarbeiters/new.xml
  def new
    @mitarbeiter = Mitarbeiter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mitarbeiter }
    end
  end

  # GET /mitarbeiters/1/edit
  def edit
    @mitarbeiter = Mitarbeiter.find(params[:id])
  end

  # POST /mitarbeiters
  # POST /mitarbeiters.xml
  def create
    @mitarbeiter = Mitarbeiter.new(params[:mitarbeiter])

    respond_to do |format|
      if @mitarbeiter.save
        flash[:notice] = 'Mitarbeiter was successfully created.'
        format.html { redirect_to(@mitarbeiter) }
        format.xml  { render :xml => @mitarbeiter, :status => :created, :location => @mitarbeiter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mitarbeiter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mitarbeiters/1
  # PUT /mitarbeiters/1.xml
  def update
    @mitarbeiter = Mitarbeiter.find(params[:id])

    respond_to do |format|
      if @mitarbeiter.update_attributes(params[:mitarbeiter])
        flash[:notice] = 'Mitarbeiter was successfully updated.'
        format.html { redirect_to(@mitarbeiter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mitarbeiter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mitarbeiters/1
  # DELETE /mitarbeiters/1.xml
  def destroy
    @mitarbeiter = Mitarbeiter.find(params[:id])
    @mitarbeiter.destroy

    respond_to do |format|
      format.html { redirect_to(mitarbeiters_url) }
      format.xml  { head :ok }
    end
  end
end
