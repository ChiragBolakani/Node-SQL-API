const Post = require("../models/blogModel");

//create posts
exports.create = (req, res) => {
  if (Object.keys(req.body).length < 3) {
    res.status(400).send({
      errors: {
        status: 400,
        message: "Content can not be empty!",
      },
    });
    return;
  }

  if (
    req.body.title === "" ||
    req.body.description === "" ||
    req.body.authorID === ""
  ) {
    res.status(400).send({
      errors: {
        status: 400,
        message: "Content can not be empty!",
      },
    });
    return;
  }

  // console.log("Created Post : ", req.body);
  const post = new Post({
    title: req.body.title,
    description: req.body.description,
    authorID: req.body.authorID,
  });

  Post.create(post, (err, data) => {
    if (err) {
      res.status(500).send({
        errors: {
          status: 500,
          message:
            err.message || "Some error occurred while creating the post.",
        },
      });
      return;
    } else res.status(200).send({ status: 200, data });
  });
};

//update posts
exports.update = (req, res) => {
  // Validate Request
  if (Object.keys(req.body).length < 2) {
    res.status(400).send({
      errors: {
        status: 400,
        message: "Content can not be empty!",
      },
    });
    return;
  }

  if (req.body.title === "" || req.body.description === "") {
    res.status(400).send({
      errors: {
        status: 400,
        message: "Content can not be empty!",
      },
    });
    return;
  }
  // console.log("Updated post", req.body);

  Post.updateById(
    req.params.authorID,
    req.params.postID,
    new Post(req.body),
    (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            errors: {
              status: 404,
              message: `Could not find post.`,
            },
          });
          return;
        } else {
          res.status(500).send({
            errors: {
              status: 500,
              message: "Error while updating Post",
            },
          });
          return;
        }
      } else res.status(200).send({ status: 200, data });
    }
  );
};

//delete post
exports.delete = (req, res) => {
  Post.remove(req.params.authorID, req.params.postID, (err) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          errors: {
            status: 404,
            message: `Could Not find Post`,
          },
        });
        return;
      } else {
        res.status(500).send({
          errors: {
            status: 500,
            message: "Could not delete Post",
          },
        });
        return;
      }
    } else res.send({ status: 200, message: `Post was deleted successfully!` });
  });
};

//get all posts
exports.findAll = (req, res) => {
  if (Object.keys(req.query).length != 2) {
    offset = 0;
    limit = 5;
  } else {
    offset = req.query.offset;
    limit = req.query.limit;
  }

  Post.getAll(offset, limit, (err, data) => {
    if (err) {
      res.status(500).send({
        errors: {
          status: 500,
          message: err.message || "Some error occurred while retrieving posts.",
        },
      });
      return;
    } else res.send({ status: 200, data });
  });
};

//find posts by authorID
exports.findPostsByAuthor = (req, res) => {
  Post.getPostsByAuthor(req.params.authorID, (err, data) => {
    if (err) {
      res.status(500).send({
        errors: {
          status: 500,
          message: err.message || "Some error occurred while retrieving posts.",
        },
      });
      return;
    }

    if (data == "" || Object.keys(data).length == 0) {
      res.status(404).send({
        errors: {
          status: 404,
          message: `Could not find any posts`,
        },
      });
      return;
    } else res.status(200).send({ status: 200, data });
  });
};
