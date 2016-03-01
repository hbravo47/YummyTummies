class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /orders
  # GET /orders.json
  def index
     @meal= Meal.all.where(:premium=>false)
    @orders = Order.all
    @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
     @meal= Meal.all.where(:premium=>false)
    @meals= Meal.all
    @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
  end

  # GET /orders/new
  def new
     @meal= Meal.all.where(:premium=>false)
   @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
       @meals= Meal.all
        @meal= Meal.all.where(:premium=>false)
       @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
  end

  # POST /orders
  # POST /orders.json
  def create
    @drink =params[:drink]
    @side = params[:side]
    
      @meals= Meal.all
     @meal= Meal.all.where(:premium=>false)
    
     @name = @side.to_s+@drink.to_s
  @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
    @order = Order.new(order_params)
    @ci = current_user.id
   @order.update_attribute(:user_id, @ci)
   @order.update_attribute(:Mealname, @name)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
     @meal= Meal.all.where(:premium=>false)
  @kid = Register.all.where(:user_id=>current_user.id).where(:approved=>true)
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:Mealname, :mealID,:premium, :day, :price, :kidsID, :orderID)
    end
end
