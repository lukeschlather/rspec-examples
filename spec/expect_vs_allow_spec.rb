require 'expect_vs_allow'

describe 'call_service' do
  it 'this test passes even though the method is not called' do
    service = double()
    allow(service).to receive(:make_request).once
    MockThatThing.forget_service_call(service)
  end

  it 'this test fails because the method is not called' do
    service = double()
    expect(service).to receive(:make_request).once
    MockThatThing.forget_service_call(service)
  end

  it 'this test passes because it does the right thing' do
    service = double()
    expect(service).to receive(:make_request).once
    MockThatThing.service_call(service)
  end
end
