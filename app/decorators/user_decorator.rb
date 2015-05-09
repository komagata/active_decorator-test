# coding: utf-8
module UserDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def link
    link_to full_name, website
  end
end
