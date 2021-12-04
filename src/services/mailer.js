const nodemailer = require("nodemailer");
require("dotenv").config();
const config = require("../config/config");

const sendEmail = async (toEmail, subject, body) => {
  const transporter = await nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    secure: false,
    auth: {
      user: config.transporterUser,
      pass: config.transporterPass,
    },
  });

  transporter.verify().catch(console.error);

  let info = await transporter.sendMail(
    {
      from: `"Chirag Bolakani" <${config.trasporterSender}>`,
      to: toEmail,
      subject: `${subject}`,
      html: `${body}`,
    },
    (err, info) => {
      if (err) {
        console.error("Could not send email");
      }
    }
  );
  transporter.close();
};

module.exports = { sendEmail };
