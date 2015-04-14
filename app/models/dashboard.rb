class Dashboard

  def initialize user
    @user = user
  end

  def categories
    Category.all
    #Eventually can be limited to top 10 categories, or according to user preference
  end

end

