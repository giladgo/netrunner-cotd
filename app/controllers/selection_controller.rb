class SelectionController < ApplicationController
  def index
    @selections = Selection.all.includes(:card)
    @selections_by_month = @selections.group_by { |s| s.when.beginning_of_month }
  end

  def show
    @selection = Selection.find(params[:id])
  end

  def cotd
    @selection = Selection.get_or_create_of_today
    render 'selection/show'
  end
end