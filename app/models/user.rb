class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :user_items


  def attack_level_math
    items = []
    attack_increase = 0
    self.user_items.each {|ui| items.push(Item.find(ui.item_id))}
    items.each do |item|
      attack_increase += item.user_attack_increase
    end
    self.attack_level + attack_increase
  end
end
