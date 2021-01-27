class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :teacher_id
end
