const db = require("../db/db");
const mailer = require("../services/mailer");
const mailTemplate = require("../templates/template");

//constructor
const Post = function (post) {
  this.title = post.title;
  this.description = post.description;
  this.authorID = post.authorID;
};

//create post
Post.create = (newPost, result) => {
  db.query(
    `INSERT INTO posts VALUES ("NULL", "${newPost.title}", "${newPost.description}", "${newPost.authorID}")`,
    (err, res) => {
      if (err) {
        // console.log("error: ", err);
        result(err, null);
        return;
      }
      // console.log("created post: ", { id: res.insertId, ...newPost });

      const responseData = {
        id: res.insertId,
        ...newPost,
        message: "Successfully inserted",
      };

      result(null, responseData);
      notifyAuthor(
        res.insertId,
        mailTemplate.createSubject,
        mailTemplate.createBody
      );
    }
  );
};

//update post
Post.updateById = (authorID, postID, post, result) => {
  db.query(
    "UPDATE posts SET postTitle = ?, postDescription = ? WHERE (postID = ? && authorID = ?)",
    [post.title, post.description, postID, authorID],

    (err, res) => {
      if (err) {
        // console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Post with the id
        result({ kind: "not_found" }, null);
        return;
      }

      // console.log("updated post: ", { id: postID, ...post });

      result(null, { id: postID, ...post, message: "successfully updated" });
      notifyAuthor(postID, mailTemplate.updateSubject, mailTemplate.updateBody);
    }
  );
};

//remove post
Post.remove = (authorID, postID, result) => {
  db.query(
    `DELETE FROM posts WHERE (postID = ${postID} && authorID = ${authorID})`,
    (err, res) => {
      if (err) {
        // console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Post with the id
        result({ kind: "not_found" }, null);
        return;
      }

      // console.log("deleted post with id: ", postID);
      result(null, res);
    }
  );
};

//get all posts
Post.getAll = (offset, limit, result) => {
  let query = `SELECT authorstable.authorID, authorstable.authorFirstName, authorstable.authorLastName, authorstable.authorEmail,
  posts.postID,posts.postTitle,posts.postDescription 
  FROM posts 
  INNER JOIN authorstable 
  WHERE authorstable.authorID = posts.authorID ORDER BY posts.postID LIMIT ${offset}, ${limit};`;

  db.query(query, (err, res) => {
    if (err) {
      // console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      result({ kind: "not_found" }, null);
      return;
    }

    // console.log("posts: ", res);
    result(null, res);
  });
};

//get posts by authorID
Post.getPostsByAuthor = (authorID, result) => {
  db.query(`SELECT * FROM posts WHERE authorID=${authorID}`, (err, res) => {
    if (err) {
      // console.log("error: ", err);
      result(null, err);
      return;
    }

    // console.log("posts: ", res);
    result(null, res);
  });
};

const notifyAuthor = (postID, subject, body) => {
  db.query(
    `SELECT authorEmail FROM authorstable WHERE authorID=(SELECT authorID FROM posts WHERE postID=${postID})`,
    (err, res) => {
      if (err) {
        console.log("Could not send Email");
        return;
      }
      if (Object.keys(res).length === 0) {
        console.log("Could not find Email");
        return;
      }
      // email = res;
      const toEmail = JSON.parse(JSON.stringify(res[0].authorEmail));
      // console.log(email[0].authorEmail);
      mailer.sendEmail(toEmail, subject, body);
    }
  );
};

module.exports = Post;
