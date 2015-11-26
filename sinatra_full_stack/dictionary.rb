class Dictionary

  def initialize(initial_hash)
    @internal_hash = initial_hash
  end

  def to_json
    return @internal_hash.to_json
  end

  def add(key,value)
    if key.is_a?(String) && value.is_a?(String)
      @internal_hash[key]=value
      return @internal_hash
    end

  end

  def to_hash
    return @internal_hash
  end

end

# starting_hash=  {
#     :happy=>'joy joy'
#   }
#
# happy_things = Dictionary.new(starting_hash)
# fun_things = Dictionary.new({
#   :woot => 'sledding'
#   })

get '/happy' do
  happy_things=Dictionary.new({
    :theworld => 'is awesome'
    })
  return happy_things.to_json
end
