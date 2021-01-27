class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :subject_name, :image_url, :slug

  has_many :reviews
end
