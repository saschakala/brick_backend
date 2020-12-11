class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :user_id, :created_at
end
