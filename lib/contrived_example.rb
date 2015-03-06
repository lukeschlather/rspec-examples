module ContrivedExample
  def self.add_to_key(hash, key, value)
    result = hash[key] + value
    hash[key] = 5
    result
  end
end
