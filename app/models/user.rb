class User < ActiveRecord::Base
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role_type: [ :student, :educator,:admin ]
  self.primary_key = :id
  # belongs_to :educator
  
  validates :id, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:id]
  
  after_create :create_profile
  
  def create_profile
    if(self.educator?)
      Educator.create(user_id:self)
    elsif(self.student?)
      Student.create(user_id:self.id)
      
    end
  end
         
  def email_required?
    false
  end

  def email_changed?
    false
  end

end
