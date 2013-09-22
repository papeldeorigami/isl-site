class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  protected    
  def set_locale
    if params[:locale].blank?
      I18n.locale = :'pt-BR'
    else
      I18n.locale = params[:locale]
    end
  end   

  # ensure locale persists
  def default_url_options(options={})
    {:locale => I18n.locale}
  end
end
