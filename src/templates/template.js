const currentDate = new Date();

const dateTime =
  currentDate.getDate() +
  "/" +
  (currentDate.getMonth() + 1) +
  "/" +
  currentDate.getFullYear() +
  ", " +
  currentDate.getHours() +
  ":" +
  currentDate.getMinutes() +
  ":" +
  currentDate.getSeconds();

const updateBody = `Your post has been updated at ${dateTime}`;
const updateSubject = `Post Updated Successfully!`;

const createBody = `Your post has been created at ${dateTime}`;
const createSubject = `Post Created Successfully!`;

module.exports = { updateBody, updateSubject, createBody, createSubject };
