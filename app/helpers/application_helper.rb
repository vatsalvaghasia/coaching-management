module ApplicationHelper
	def has_role(role)
		current_student	&& current_student.has_role?(role) || current_teacher && current_teacher.has_role?(role)
	end

	def is_teacher?
		current_teacher && current_teacher.has_role?(:teacher)
	end

	def is_student?
		current_teacher && current_student.has_role?(:student)
	end

	def is_teacher_admin?
		current_teacher && current_teacher.has_role?(:admin)
	end

	def is_student_admin?
		current_student && current_student.has_role?(:admin)
	end
end
# && current_user.has_role?(role)
