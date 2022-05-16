import TwoFactorEmail from "./TwoFactorEmail.js";
import TwoFactorPhone from "./TwoFactorPhone.js";

// Test for two factor email
let twoFactor = new TwoFactorEmail();
twoFactor.authenticate("Jack", "12345");

// Test for two factor phone
twoFactor = new TwoFactorPhone();
twoFactor.authenticate("King", "12345");

