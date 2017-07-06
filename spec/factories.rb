FactoryGirl.define do
  factory(:user) do
    role('Bounty Hunter')
    name('Rick')
    admin(false)
    avatar(nil)
    attack_level(0)
    email('Rick@Rick')
  end
end
