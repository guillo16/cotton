class Contact < MailForm::Base
  validates :name, presence: true
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  validates :message, presence: true
  attribute :nickname, :captcha => true

  def headers
    {
      :subject => "Contact Form",
      :to => "youremail@foo.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
