class ThingsController < ApplicationController
    before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
    before_action :set_thing!, only: %i[show destroy edit update]  # @article = Article.find params[:id]   "Refactoring"
                                                               
    def index  
        @things = Thing.all
        @locals = Local.all
        @choice = Choice.all
        @q = Thing.ransack(params[:q])
        @pagy,@things = pagy @q.result(distinct: true),items:3
      end
     
    def show  
        @commentable = @thing
        @comment = Comment.new
        @locals = Local.new
        # @thing = Thing.find(params[:id]) :before_action :set_thing! only[show destroy edit update] "Refactoring"
     end
       
   
    def new  
        @thing = Thing.new  
        @locals = Local.all
        @choice = Choice.all
      end
     
    def create # 2: create (отправить форму. POST)   
        @thing = Thing.new(thing_params)
        @thing = current_user.things.build(thing_params)# Connection "user" 
     if @thing.valid?
        @thing.save 
        flash[:success] = "Оголошення Утворино"   
        redirect_to @thing 
     else
        render action: 'new' 
      end
    end
     
    def edit   
       #@thing = Thing.find params[:id] :before_action :set_thing! "Refactoring"
     end
   
    def update 
       #@thing = Thing.find(params[:id]) before_action :set_shing! "Refactoring"
     if @thing.update(thing_params) # Obnowlaem s nowymi parametromi
        redirect_to @thing
        flash[:success] = "Оголошення Редаговане" #Window Podtwerzdenija
       else
        render action: 'edit'    #"perenaprowlenie"
     end
   end
   
   def destroy 
     #@thing = Thing.find(params[:id]) # :before_action :set_thing! "Refactoring"
     @thing.destroy
     flash[:success] = "Оголошення Видалине"     #Window Podtwerzdenija
     redirect_to @thing  
   end
   
   #////////////////////////////////////////////////////////////////////////////////////
    private
   
     def thing_params
       params.require(:thing).permit(:title, :text, :local_id, :choice_id, :image)
    end
   
     def set_thing!  # :before_action :set_thing! only[show destroy edit update] "Refactoring"
       @thing = Thing.find(params[:id])
    end
   
end
