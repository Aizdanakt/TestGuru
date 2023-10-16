class UserPassedTestsController < ApplicationController
  before_action :set_user_passed_test, only: %i[show update result]

  def show; end

  def result; end

  def update
    @user_passed_test.accept!(params[:answer_ids])

    if @user_passed_test.completed?
      redirect_to result_user_passed_test_path(@user_passed_test)
    else
      puts @user_passed_test.inspect
      redirect_to user_passed_test_path(@user_passed_test)
    end
  end

  private

  def set_user_passed_test
    @user_passed_test = UserPassedTest.find(params[:id])
  end
end