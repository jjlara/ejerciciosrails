json.array!(@ejercicios) do |ejercicio|
  json.extract! ejercicio, :id, :nombre
  json.url ejercicio_url(ejercicio, format: :json)
end
