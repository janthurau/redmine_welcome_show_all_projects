module WelcomeControllerPatch

    
  def self.included(base)
    base.send(:include, InstanceMethods)
    
    base.class_eval do
      helper :projects
      include ProjectsHelper
      alias_method_chain :index, :all_projects
    end
  end

  module InstanceMethods
    def index_with_all_projects
      index_without_all_projects
      
      @projects = Project.visible.order('lft').all
    end
  end

end

WelcomeController.send(:include, WelcomeControllerPatch)
