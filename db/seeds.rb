user_list = [
  ["Ship Captain", "The Administrator", true, 0, "admin2@admin2", "123456"],
  ["Bounty Hunter", "Rick", false, 0, "ric2@rick2", "123456"],
]

user_list.each do |role,  name, admin, attack_level, email, password|
  User.create(role: role, name: name, admin: admin, attack_level: attack_level, email: email, password: password )
end
