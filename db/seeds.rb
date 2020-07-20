
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
  level: "Egg")

Monster.create(
  user_id: 2, 
  name: "Metal Greymon", 
  age: 15, weight: 50, 
  hunger: 5, 
  strength: 5, 
  poop: 0, 
  sick: false, 
  death: 30, 
  level: "Ultimate")

p "Monster Created"



