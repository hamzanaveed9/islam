class ApplicationController < ActionController::Base
  before_action :load_header_setting

  private

  def load_header_setting
    @header_setting = HeaderSetting.last
  end
end
