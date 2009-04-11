module ProjectsHelper
  def task_list(project)
    @tasks=project.tasks
    @name=[]
    @tasks.each do |t|
      @name<<t.name
    end
    @name=@name.join(":")
  end

  def project_state(project)
    @state_boolean=project.state
    if @state_boolean
      @state="Finished"
    else
      @state="Unfinished"
    end
  end

  def project_importance(project)
    @imp_boolean=project.importance
    if @imp_boolean
      @imp="important"
    else
      @imp="not important"
    end
  end
end
