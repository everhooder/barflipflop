json.array!(@flipfloppers) do |flipflopper|
  json.extract! flipflopper, :drink, :name, :surname, :email, :birthday, :comment
  json.url flipflopper_url(flipflopper, format: :json)
end
