
User.create(
  username: "Robnarok", 
  email: "rob@gmail.com", 
  password: "password")

User.create(
  username: "Thadman", 
  email: "thad@gmail.com", 
  password: "password")

p "User Created"

Monster.create(
  user_id: 1, 
  name: "Egg", 
  age: 0, 
  weight: 1, 
  hunger: 0, 
  strength: 0, 
  poop: 0, 
  sick: false, 
  death: 30, 
  level: "Egg",
  image: "Egg")

Monster.create(
  user_id: 1, 
  name: "Egg", 
  age: 0, 
  weight: 1, 
  hunger: 0, 
  strength: 0, 
  poop: 0, 
  sick: false, 
  death: 30, 
  level: "Egg",
  image: "Egg")

p "Monster Created"



