class CompaniesController < ApplicationController


    def index
        @companies = Company.where(nil)
        if params[:name].present? && params[:name] === "random"
        @companies = Company.find(rand(0..(Company.all.length)))
      end
      if params[:name].present? && params[:name] != "random"
        @companies = @companies.search(params[:name])
      end

      json_response(@companies)
    end

    def show
      @company = Company.find(params[:id])
      json_response(@company)
    end

    def create
      @company = Company.new(company_params)
      if @company.save
      json_response(@company, :created)
      else
        render status: 422, json: {
         message: "Company did not meet validation."
         }

      end
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

   def filtering_params(params)
     params.slice(:name, :department, :product)
   end


   def company_params
     params.permit(:name, :department, :product)
   end
 end
