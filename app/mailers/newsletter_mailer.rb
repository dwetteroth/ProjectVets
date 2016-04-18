class NewsletterMailer < ApplicationMailer
  def marketing_email(pp)

    mail(:subject => 'New user Project Vets signup',:to  => "info@projectvets.org" ,:from => 'dwetteroth@vinelist.com',:html_body => "new newsletter sign up=> "+pp, :body=> "new newsletter sign up=> "+pp,:track_opens => 'true')
  end
end
