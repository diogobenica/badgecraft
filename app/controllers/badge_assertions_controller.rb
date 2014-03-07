class BadgeAssertionsController < ApplicationController
  before_action :set_badge_assertion, only: [:show, :edit, :update, :destroy]

  # GET /badge_assertions
  def index
    @badge_assertions = BadgeAssertion.all
  end

  # GET /badge_assertions/1
  def show
  end

  # GET /badge_assertions/new
  def new
    @badge_assertion = BadgeAssertion.new
  end

  # GET /badge_assertions/1/edit
  def edit
  end

  # POST /badge_assertions
  def create
    @badge_assertion = BadgeAssertion.new(badge_assertion_params)

    if @badge_assertion.save
      redirect_to @badge_assertion, notice: 'Badge assertion was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /badge_assertions/1
  def update
    if @badge_assertion.update(badge_assertion_params)
      redirect_to @badge_assertion, notice: 'Badge assertion was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /badge_assertions/1
  def destroy
    @badge_assertion.destroy
    redirect_to badge_assertions_url, notice: 'Badge assertion was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badge_assertion
      @badge_assertion = BadgeAssertion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def badge_assertion_params
      params.require(:badge_assertion).permit(:badge_id, :user_id)
    end
end
