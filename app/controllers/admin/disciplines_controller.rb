class Admin::DisciplinesController < Admin::BaseController
  add_breadcrumb "Предметы", :admin_disciplines_path

  before_action :set_discipline, only: [:edit, :update, :destroy]

  def index
    @disciplines = Discipline.order(id: :desc).page(params[:page])
  end

  def new
    add_breadcrumb "Новый предмет", new_admin_discipline_path

    @discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      redirect_to admin_disciplines_path, notice: 'Предмет успешно создан'
    else
      add_breadcrumb "Новый предмет", new_admin_discipline_path
      flash.now[:alert] = 'Не удалось создать предмет'
      render :new
    end
  end

  def edit
    add_breadcrumb "Редактировать предмет #{@discipline.name}", [:edit, :admin, @discipline]
  end

  def update
    if @discipline.update(discipline_params)
      redirect_to admin_disciplines_path, notice: 'Предмет успешно изменен'
    else
      add_breadcrumb "Редактировать #{@discipline.name}", [:edit, :admin, @discipline]
      flash.now[:alert] = 'Не удалось создать предмет'
      render :new
    end
  end

  def destroy
    if @discipline.destroy
      redirect_to admin_disciplines_path, notice: 'Предмет успешно удален'
    else
      redirect_to admin_disciplines_path, alert: 'Не удалось изменить предмет'
      render :edit
    end
  end

  private

  def set_discipline
    @discipline = Discipline.find(params[:id])
  end

  def set_active_main_menu
    @main_menu[:disciplines][:active] = true
  end

  def discipline_params
    params.require(:discipline).permit(:name)
  end
end
