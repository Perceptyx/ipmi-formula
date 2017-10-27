require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "IPMI" do
  it "package is installed" do
    expect(package("ipmitool")).to be_installed
  end
end
