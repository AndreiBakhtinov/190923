db.users.find(
  {
    country: { $nin: [ 'USA', 'UA']},
    fullname: {$ne: 'Ivan Ivanov'}
  }

)