authorization do

  role :admin do
    has_permission_on :admin_extensions, :to => [:manage]
  end

end
