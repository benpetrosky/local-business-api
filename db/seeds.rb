class Seed

  def self.begin
    seed = Seed.new
    seed.generate_companies
  end

  def generate_companies
    20.times do |i|
      author =
      company = Company.create!(
        name: Faker::Company.name,
        department: Faker::Commerce.department,
        product: Faker::Commerce.product_name,
      )
      puts "Company #{i}: The company name is #{company.name} and is focused in the area of '#{company.department}'. Their best selling product is #{company.product}."
    end
  end
end

Seed.begin
