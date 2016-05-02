class Dashboard::Admin::AdminController < ApplicetionController
  before_action :authenticate_manager!
end
