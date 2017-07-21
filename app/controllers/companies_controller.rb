class CompaniesController < ApplicationController



    def index
      @companies = Company.all
      json_response(@companies)
    end

    def show
      @company = Company.find(params[:id])
      json_response(@company)
    end

    def create
      @company = Company.create!(company_params)
      json_response(@company)
    end

    def update
      @company = Company.find(params[:id])
      if @company.update!(company_params)
        render status: 200, json: {
         message: "Your company has been updated successfully."
         }
      end
    end

    def destroy
       @company = Company.find(params[:id])
       if @company.destroy
         render status: 200, json: {
         message: "Your quote has been deleted successfully"
       }
       end
     end

   private


   def company_params
     params.permit(:name, :department, :product)
   end
 end
