# frozen_string_literal: true

class Web::Account::ApplicationController < Web::ApplicationController
  before_action :authenticate_user!
end
