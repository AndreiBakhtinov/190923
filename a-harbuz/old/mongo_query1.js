db.users.find(
    {country: {$nin: ['USA', 'UK']}, fullname: {$nin: ['Ivan Ivanov']}},
    {fullname: 1 , _id: 0}
)
