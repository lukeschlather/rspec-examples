module MockThatThing
  def self.service_call(service)
    service.make_request
  end

  def self.forget_service_call(service)
  end
end
