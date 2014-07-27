require 'mongoid'

class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :options, type: Hash

  def full_name
    [first_name, last_name].compact.join(" ")
  end

end
