class NodesController < ApplicationController
  before_filter :set_node, only: [:show, :edit, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    if params[:category_id].blank?
      @nodes = Node.all
      @category = nil
    else
      @category = Category.find(params[:category_id])
      @nodes = @category.nodes
    end
  end
  
  # # GET /nodes/days
 #  # GET /nodes/days.json
 #  def days
 #    @nodes = Node.where(:category => "day")
 #  end
 #  
 #  # GET /nodes/people
 #  # GET /nodes/people.json
 #  def people
 #    @nodes = Node.where(:category => "person")
 #  end
 #  
 #  # GET /nodes/places
 #  # GET /nodes/places.json
 #  def places
 #    @nodes = Node.where(:category => "place")
 #  end
 #  
 #  # GET /nodes/concepts
 #  # GET /nodes/concepts.json
 #  def concepts
 #    @nodes = Node.where(:category => "concept")
 #  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
  end

  # GET /nodes/new
  def new
    @node = Node.new
  end

  # GET /nodes/1/edit
  def edit
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(params[:node])

    respond_to do |format|
      if @node.save
        format.html { redirect_to @node, notice: 'Node was successfully created.' }
        format.json { render action: 'show', status: :created, location: @node }
      else
        format.html { render action: 'new' }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    respond_to do |format|
      if @node.update_attributes(params[:node])
        format.html { redirect_to @node, notice: 'Node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to nodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

end
