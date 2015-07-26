class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
  end

  def create
    cohort = Cohort.create(cohort_params)

    redirect_to cohort_url(cohort)
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)

    redirect_to cohort_url(cohort)
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy

    redirect_to cohorts_url
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name)
  end
end
