require "CSV"
HeroRow = 4
arr = CSV.parse(params["file"].read, converters: :numeric)

arr.each do |n|
	`curl --form "file=@/" %sums` n[HeroRow]
end
