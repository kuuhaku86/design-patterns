from TwoFactorPhone import TwoFactorPhone
from TwoFactorEmail import TwoFactorEmail

# Test for two factor email
twoFactor = TwoFactorEmail()
twoFactor.authenticate("Jack", "12345")

# Test for two factor phone
twoFactor = TwoFactorPhone()
twoFactor.authenticate("King", "12345")
