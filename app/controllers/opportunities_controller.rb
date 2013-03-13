class OpportunitiesController < ApplicationController
  include Databasedotcom::Rails::Controller

  before_filter :set_client

  def set_client
    # databasedotcom-rails (hereafter dbdc-r) requires the presesence of
    # rails_root/config/databasedotcom.yml but the actual auth params 
    # can be pulled from (and in this case are) the omni-auth auth hash
    # setup as we login. This ensures that if user A logs in to org FOO
    # he/she can only see records that they have access to.
    @config = {:token => session[:omniauthToken], 
              :instance_url => session[:omniauthUrl],
              :refresh_token => session[:omniauthRefresh],
              :version => "27.0"}
    dbdc_client= Databasedotcom::Client.new
    dbdc_client.authenticate(@config)
    self.dbdc_client= dbdc_client

  end

  # GET /opportunities
  # GET /opportunities.json
  def index
    @opportunities = Opportunity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @opportunities }
    end
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def show
    @opportunity = Opportunity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @opportunity }
    end
  end

  # GET /opportunities/new
  # GET /opportunities/new.json
  def new
    @opportunity = Opportunity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @opportunity }
    end
  end

  # GET /opportunities/1/edit
  def edit
    @opportunity = Opportunity.find(params[:id])
  end

  # POST /opportunities
  # POST /opportunities.json
  def create
    @opportunity = Opportunity.new(Opportunity.coerce_params(params[:opportunity]))

    respond_to do |format|
      if @opportunity.save
        format.html { redirect_to @opportunity, notice: 'Opportunity was successfully created.' }
        format.json { render json: @opportunity, status: :created, location: @opportunity }
      else
        format.html { render action: "new" }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /opportunities/1
  # PUT /opportunities/1.json
  def update
    @opportunity = Opportunity.find(params[:id])

    respond_to do |format|
      if @opportunity.update_attributes(Opportunity.coerce_params(params[:opportunity]))
        format.html { redirect_to @opportunity, notice: 'Opportunity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opportunities/1
  # DELETE /opportunities/1.json
  def destroy
    @opportunity = Opportunity.find(params[:id])
    @opportunity.destroy

    respond_to do |format|
      format.html { redirect_to opportunities_url }
      format.json { head :no_content }
    end
  end
end
