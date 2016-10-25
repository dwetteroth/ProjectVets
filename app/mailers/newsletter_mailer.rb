class NewsletterMailer < ApplicationMailer
  def marketing_email(pp, name)

    mail(:subject => 'New user Project Vets signup',:to  => "info@projectvets.org" ,:from => 'info@projectvets.org',:html_body => "Name = #{name} - new newsletter sign up=> "+pp, :body=> "Name = #{name} - new newsletter sign up=> "+pp,:track_opens => 'true')
  end
end
