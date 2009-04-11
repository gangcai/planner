class TasksController < ApplicationController
  before_filter :login_required
  # GET /tasks
  # GET /tasks.xml

  before_filter :find_project
  def index
   # @tasks = Task.find(:all)
   #@tasks=@project.tasks.find(:all)

#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @tasks }
#    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    #@task = Task.find(params[:id])
    @task=@project.tasks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task=@project.tasks.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if(@project.tasks <<@task)
        flash[:notice]='Task was successfully created'
       format.html{redirect_to project_url(@project)}
      else
        format.html{render :action=>:new}
      end
    end

  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    @task=@project.tasks.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = "Task #{@task.name} was successfully updated."
      redirect_to project_url(@task.project_id)
    else
      render :action=>'edit'
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def destroy
    @task=@project.tasks.find(params[:id])
    @task.destroy

    respond_to do |format|
     format.html { redirect_to(@project) }
      format.xml  { head :ok }
    end
  end


  #list all the tasks
#  def list
#    render :template=>'list'
#  end

  private

  def find_project
    @project_id=params[:project_id]
    return(redirect_to(projects_url)) unless @project_id
    @project=Project.find(@project_id)
  end
end
