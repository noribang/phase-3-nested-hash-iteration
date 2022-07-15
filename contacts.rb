require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end


def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    # binding.pry
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        # binding.pry
        if attribute == :favorite_ice_cream_flavors
          # binding.pry
          data.delete_if {|ice_cream| ice_cream == "strawberry"}
        end
      end
    end

  end

end


# print the output to the terminal for inspection
pp remove_strawberry(contacts)




# def remove_strawberry(contacts)
#   # your code here!  

#   emails = []

#   contacts.each do |person, data|
#     # puts "#{person}: #{data}"
#     data.each do |attribute, value|
#       # puts "#{attribute}: #{value}"

#       # if attribute == :favorite_ice_cream_flavors
#       #   value.each do |flavor|
#       #     puts "#{flavor}"
#       #   end
#       # end

#       # if attribute == :email
#       #   emails << value
        
#       # end

#     end
#   end

#   puts emails
#   # binding.pry
# end

# remove_strawberry(contacts)

