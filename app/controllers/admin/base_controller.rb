class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate_administrator!
  before_action :set_main_menu, except: :destroy
  before_action :set_active_main_menu, except: :destroy

  private

  def set_main_menu
    @main_menu = { teachers: { name: 'Преподаватели', path: admin_teachers_path },
                   disciplines: { name: 'Предметы', path: admin_disciplines_path },
                   courses: {name: 'Курсы', path: admin_courses_path} }
  end
end
