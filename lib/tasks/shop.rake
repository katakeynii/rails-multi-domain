namespace :shop do
  desc "TODO"
  task seed: :environment do
    Product.delete_all
    Shop.delete_all
    shop_names = ["shookone", "sandaga", "kolways"]
    shop_names.each do |name|
      shop = Shop.create!({name: FFaker::CompanyFR.name,
        subdomain: name ,
        tagline: FFaker::LoremFR.phrase,
        phone_number: FFaker::PhoneNumber.phone_number
      }) 
      products = (5..rand(5..20)).to_a.map do |x|
        { 
          name: FFaker::Product.product_name, 
          description: FFaker::LoremFR.paragraph, 
          price: rand(2000..15000), 
          shop: shop
        }
      end
      Product.create! products
    end
    shop_list = [
      {
        name: FFaker::CompanyFR.name,
        subdomain: "shopone",
        tagline: FFaker::LoremFR.phrase,
        phone_number: FFaker::PhoneNumber.phone_number
      },
      {
        name: FFaker::CompanyFR.name,
        subdomain: "shopone",
        tagline: FFaker::LoremFR.phrase,
        phone_number: FFaker::PhoneNumber.phone_number
      }

    ]
  end

end
