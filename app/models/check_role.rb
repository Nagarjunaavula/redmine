class CheckRole

  def check_external_user (projectlist)
    @restult=false
    projectlist.each do |projectitem|
      if User.current.roles_for_project(projectitem).include?Role.find_by_id(27)
        @restult= true
      else
        @result=false
      end
    end
    return @restult
  end
end
