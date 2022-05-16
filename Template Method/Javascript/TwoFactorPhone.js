import TwoFactorAuthentication from "./TwoFactorAuthentication.js";

class TwoFactorPhone extends TwoFactorAuthentication {
  getData(username) {
    console.log(`Getting phone number data for ${username}`);
  }

  sendNotification(username) {
    console.log(`Sending SMS notification to ${username}`);
  }

  match(username) {
    console.log(`Matching ${username} SMS code`);
  }
}

export default TwoFactorPhone;
