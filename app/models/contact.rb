class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/
  attribute :message
  attribute :nickname, :captcha => true

  def headers
    {
        :subject => "Mailing you",
        :to => "jsaintvi@kent.edu",
        :from => %("#{name}" <#{email}> )
    }
  end
end