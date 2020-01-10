require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]


### Your code below this

def name_and_size(companies)
    companies.map do |company|
        "#{company.name} - #{company.size}"
    end
end

def combine_all_sizes(companies)
    companies.reduce(0) {|sum, company| sum + company.size}
end

def companies_over_100(companies)
    companies.select do |company|
        company.size > 100
    end
end

def find_beta_company(companies)
    companies.find do |company|
        company.name = "Beta"
    end
end

def find_largest_company(companies)
    companies.max(1) do |company|
        company.size
    end
end
