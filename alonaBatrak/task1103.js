db.users.find(
{country:{$nin:['USA', 'France']},
fullname:{$ne:'Ivan Ivanov'}})
