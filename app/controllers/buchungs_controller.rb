class BuchungsController < ApplicationController
  layout "test"
  
  # GET /buchungs
  # GET /buchungs.xml
  def index
    if params[:mitarbeiter_id]
      @buchungs = Buchung.find_all_by_mitarbeiter_id(params[:mitarbeiter_id])
    else
      @buchungs = Buchung.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @buchungs }
    end
  end

  # GET /buchungs/1
  # GET /buchungs/1.xml
  def show
    @buchung = Buchung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @buchung }
    end
  end

  # GET /buchungs/new
  # GET /buchungs/new.xml
  def new
    @projekt = Projekt.find(params[:projekt_id])
    @buchung = Buchung.new
    @buchung.projekt = @projekt

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @buchung }
    end
  end

  # GET /buchungs/1/edit
  def edit
    @buchung = Buchung.find(params[:id])
  end

  # POST /buchungs
  # POST /buchungs.xml
  def create
    @buchung = Buchung.new(params[:buchung])
    @projekt = @buchung.projekt

    respond_to do |format|
      if @buchung.save
        flash[:notice] = 'Buchung was successfully created.'
        format.html { redirect_to(@buchung) }
        format.xml  { render :xml => @buchung, :status => :created, :location => @buchung }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @buchung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /buchungs/1
  # PUT /buchungs/1.xml
  def update
    @buchung = Buchung.find(params[:id])

    respond_to do |format|
      if @buchung.update_attributes(params[:buchung])
        flash[:notice] = 'Buchung was successfully updated.'
        format.html { redirect_to(@buchung) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @buchung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /buchungs/1
  # DELETE /buchungs/1.xml
  def destroy
    @buchung = Buchung.find(params[:id])
    @buchung.destroy

    respond_to do |format|
      format.html { redirect_to(buchungs_url) }
      format.xml  { head :ok }
    end
  end
  
  def depute
    @buchung = Buchung.find(params[:id])
  end
  
  def confirm
    @buchung = Buchung.find(params[:id])
  end
end
