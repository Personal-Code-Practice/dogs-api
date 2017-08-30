json.array! @dogs.each do |dog|
  json.name dog.name
  json.breed dog.breed
  json.age dog.age
  json.id dog.id
end
