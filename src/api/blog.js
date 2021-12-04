const express = require("express");
const router = express.Router();
const posts = require("../controllers/controller");

// create post
router.post("/authors/posts", posts.create);

//update post using postID
router.put("/authors/:authorID/posts/:postID", posts.update);

//delete posts using postID
router.delete("/authors/:authorID/posts/:postID", posts.delete);

//get all posts
router.get("/posts", posts.findAll);

//get posts by authorID
router.get("/authors/:authorID/posts", posts.findPostsByAuthor);

module.exports = router;
