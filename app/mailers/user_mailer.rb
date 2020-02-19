class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: “yandong.liu@qq.com”, subject: "#{user.name} | #{user.email} 的激活邮件"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "密码重置"
  end
end
