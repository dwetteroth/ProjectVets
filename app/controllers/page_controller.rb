class PageController < ApplicationController

  def help

  end

  def who

  end

  def history

  end

  def mission

  end

  def board

  end

  def staff

  end

  def newsletter
    rr = Faraday.post("https://www.google.com/recaptcha/api/siteverify", {:secret=>"6LdPqB0TAAAAAH6Lunsv5rPjI5qE_5K-vhKdJfQz", :response=>params["g-recaptcha-response"]})

    response = JSON.parse rr.body

    if(response["success"])
      NewsletterMailer.marketing_email(params[:email]).deliver

      flash.keep
      redirect_to controller: 'welcome', action: 'index', notice: "Email Submitted - Thank you"
    else

      flash.keep
      redirect_to controller: 'welcome', action: 'index', alert: "Email Failure - or Captcha Failure"
    end
  end

  def contact

  end

  def world_map;end

  def donate;end
  def gallery;end
  def celebration;end
  def volunteer;end
  def equipment;end
  def assistance;end
  def by_name
    require 'csv'

    data_file = Rails.root.join('public',"ttt.csv")
    arr = []
    CSV.foreach(data_file, headers: true) do |row|
      arr<<row.fields[0]
    end
    @final=[]

    arr.each do |rt|
      er = rt.sub("\t",',')

      @final << er.gsub("\t",'')
    end

  end

  def donations
    render :donate
  end
end
