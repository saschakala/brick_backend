class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :created_at, :user
end
