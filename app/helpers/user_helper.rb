module UserHelper

  def full_name
    if @user.first_name.nil? && @user.last_name.nil?
      nil
    elsif @user.first_name.nil?
      @user.last_name
    elsif @user.last_name.nil?
      @user.first_name
    else
      @user.first_name + " " + @user.last_name
    end
  end
end
