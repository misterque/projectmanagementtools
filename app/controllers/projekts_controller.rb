class ProjektsController < ApplicationController
  layout "test"
  # GET /projekts
  # GET /projekts.xml
  def index
    if params[:mitarbeiter_id]
      @projekts = Projekt.find_all_by_mitarbeiter_id(params[:mitarbeiter_id])
    else
      @projekts = Projekt.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projekts }
    end
  end

  # GET /projekts/1
  # GET /projekts/1.xml
  def show
    @projekt = Projekt.find(params[:id])
    if params[:mitarbeiter_id]
      @mitarbeiter = Mitarbeiter.find(params[:mitarbeiter_id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @projekt }
    end
  end

  # GET /projekts/new
  # GET /projekts/new.xml
  def new
    @projekt = Projekt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @projekt }
    end
  end

  # GET /projekts/1/edit
  def edit
    @projekt = Projekt.find(params[:id])
    if params[:mitarbeiter_id]
      @mitarbeiter = Mitarbeiter.find(params[:mitarbeiter_id])
    end
    
  end

  # POST /projekts
  # POST /projekts.xml
  def create
    @projekt = Projekt.new(params[:projekt])

    respond_to do |format|
      if @projekt.save
        flash[:notice] = 'Projekt was successfully created.'
        format.html { redirect_to(@projekt) }
        format.xml  { render :xml => @projekt, :status => :created, :location => @projekt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @projekt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projekts/1
  # PUT /projekts/1.xml
  def update
    @projekt = Projekt.find(params[:id])

    respond_to do |format|
      if @projekt.update_attributes(params[:projekt])
        flash[:notice] = 'Projekt was successfully updated.'
        format.html { redirect_to(@projekt) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @projekt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projekts/1
  # DELETE /projekts/1.xml
  def destroy
    @projekt = Projekt.find(params[:id])
    @projekt.destroy

    respond_to do |format|
      format.html { redirect_to(projekts_url) }
      format.xml  { head :ok }
    end
  end
  
end
