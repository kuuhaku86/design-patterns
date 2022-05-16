import TwoFactorAuthentication from "./TwoFactorAuthentication.js";

class TwoFactorEmail extends TwoFactorAuthentication {
  getData(username) {
    console.log(`Getting email data for ${username}`);
  }

  sendNotification(username) {
    console.log(`Sending email notification to ${username}`);
  }

  match(username) {
    console.log(`Matching ${username} email code`);
  }
}

export default TwoFactorEmail;