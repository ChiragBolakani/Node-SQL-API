require("dotenv").config();

const dbHost = process.env.DB_HOST;
const dbUser = process.env.DB_USER;
const dbPass = process.env.DB_PASS;
const dbName = process.env.DB_NAME;
const transporterUser = process.env.TRANSPORTER_USER;
const transporterPass = process.env.TRANSPORTER_PASS;
const trasporterSender = process.env.TRANSPRTER_SENDER;

module.exports = {
  dbUser,
  dbName,
  dbHost,
  dbPass,
  transporterUser,
  transporterPass,
  trasporterSender,
};
