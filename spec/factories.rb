FactoryGirl.define do
  factory(:user) do
    role('Bounty Hunter')
    name('Rick')
    admin(false)
    avatar(nil)
    attack_level(0)
    email('Rick@Rick')
    password 123456
  end

  factory(:item) do
    name('sword')
    user_attack_increase(10)
    one_time_attack(50)
  end
end
