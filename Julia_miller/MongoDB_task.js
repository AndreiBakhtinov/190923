db.users.find({
  country: { $nin: ["USA", "UK"] },
  fullname: { $ne: "Ivan Ivanov" },
});
