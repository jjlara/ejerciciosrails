json.array!(@preguntas) do |pregunta|
  json.extract! pregunta, :id, :titulo, :ejercicio_id
  json.url pregunta_url(pregunta, format: :json)
end
