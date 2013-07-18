class AccountsController < ApplicationController
  def show
    @account = Account.find(1)
  end

  def update
    @account = Account.find(params[:id])
    @account.update_attributes(account_params)
    redirect_to account_url(@account)
  end

  private

  def account_params
    params.require(:account).permit(:balance)
  end
end
