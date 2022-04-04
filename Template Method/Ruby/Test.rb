require_relative "TwoFactorPhone"
require_relative "TwoFactorEmail"

# Test for two factor email
twoFactor = TwoFactorEmail.new
twoFactor.authenticate("Jack", "12345")

# Test for two factor phone
twoFactor = TwoFactorPhone.new
twoFactor.authenticate("King", "12345")