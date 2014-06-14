require "minitest_helper"
require "reporter"

describe Reporter do
  it "should be a module" do
    expect(Reporter).to_be_instance_of Module
  end
end
