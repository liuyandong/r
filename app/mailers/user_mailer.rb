class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: 'yandong.liu@qq.com', subject: "#{user.name} | #{user.email} 激活"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
