module ApplicationHelper
  def landing_page_is_current_page?
    controller.class == HighVoltage::PagesController and action_name == "show" and
      params[:id] == "index"
  end

  def class_for_menu
    if landing_page_is_current_page?
      "on_landing_page"
    else
      "not_on_landing_page"
    end
  end
end