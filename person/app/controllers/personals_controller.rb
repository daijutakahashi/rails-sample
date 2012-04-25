# -*- coding: utf-8 -*-
class PersonalsController < ApplicationController
  # GET /personals
  # GET /personals.json
  def index
    @personals = Personal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @personals }
    end
  end

  # GET /personals/1
  # GET /personals/1.json
  def show
    @personal = Personal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @personal }
    end
  end

  # GET /personals/new
  # GET /personals/new.json
  def new
    @personal = Personal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @personal }
    end
  end

  # GET /personals/1/edit
  def edit
    @personal = Personal.find(params[:id])
  end

  # POST /personals
  # POST /personals.json
  def create
    @personal = Personal.new(params[:personal])

    respond_to do |format|
      if @personal.save
        format.html { redirect_to @personal, :notice => 'Personal was successfully created.' }
        format.json { render :json => @personal, :status => :created, :location => @personal }
      else
        format.html { render :action => "new" }
        format.json { render :json => @personal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personals/1
  # PUT /personals/1.json
  def update
    @personal = Personal.find(params[:id])

    respond_to do |format|
      if @personal.update_attributes(params[:personal])
        format.html { redirect_to @personal, :notice => '更新成功' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @personal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.json
  def destroy
    @personal = Personal.find(params[:id])
    @personal.destroy

    respond_to do |format|
      format.html { redirect_to personals_url }
      format.json { head :no_content }
    end
  end

  def search
    @personal = Personal.all
    render :serach
  end
end
