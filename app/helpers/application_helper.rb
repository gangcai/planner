# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def all_task(project)
    @tasks=project.tasks
  end

  def all_project
    @project=Project.find(:all)
  end

  def state(s)
    if s
     return "finished"
    else
      return "unfinished"
    end
  end
end
