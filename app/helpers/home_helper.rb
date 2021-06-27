module HomeHelper
	def resource_name
    :student
  end
 
  def resource
    @resource ||= Student.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:student]
  end

  def resource_name1
    :teacher
  end
 
  def resource1
    @resource ||= Teacher.new
  end
 
  def devise_mapping1
    @devise_mapping ||= Devise.mappings[:teacher]
  end
end
