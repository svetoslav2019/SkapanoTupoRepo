class TasksController < ApplicationController
require 'csv'
  require 'linear-regression/linear'




  def sums
    csv_file=params[:file]
    csv_path=csv_file.path
    sum=0
    CSV.foreach(csv_path) do |row|
        sum+=row[0].to_f
    end
    #sum="%.2f" % sum
    render :plain => sum.ceil(2)
  end
  def filters
    csv_file=params[:file]
    csv_path=csv_file.path
    sum=0
    CSV.foreach(csv_path) do |row|
      if row[2]%2!=0
        sum+=row[1].to_f
      end
    end
    sum="%.2f" % sum
    render :plain => sum
  end







	Col = 0;
	def calc
		arr = CSV.parse(params["file"].read, converters: :numeric)
		len = arr.length - 30
		i = 0
		maxSum = 0
		while i <= len do
			count = 0
			sum = 0
			arr.each do |n|
				if count >= i
					sum += n[Col]
				end
				count += 1
				if count == 30 + i
					break
				end
			end
			if maxSum <= sum
				maxSum = sum
			end
			i += 1
		end 
		render plain: "%.2f" % maxSum
	end
end
