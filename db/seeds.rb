# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#name description price
Product.create(:image_url => "womens.png",:name => 'Women\'s Funny T-Shirt', :description => 'Women\'s Keep Calm and Carry a Watermellon T-Shirt', :price => '25.00')
Product.create(:image_url => "womens.png",:name => 'Women\'s  Aphorism T-Shirt', :description => 'Women\'s Aphorism of the day T-Shirt', :price => '20.00')
Product.create(:image_url => "mens.png",:name => 'Men\'s Funny T-Shirt', :description => 'Men\'s NYC number plate T-Shirt', :price => '25.00')
Product.create(:image_url => "mens.png",:name => 'Men\'s Aphorism T-Shirt', :description => 'Men\'s Aphorism of the day T-Shirt', :price => '20.00')
Product.create(:image_url => "mug.png",:name => 'Accessory - Mug', :description => 'Mug with caption', :price => '4.99')
Product.create(:image_url => "apron.png",:name => 'Accessory - Apron', :description => 'Apron with caption', :price => '9.99')
