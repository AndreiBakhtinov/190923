//Задача. Вывести юзеров не из USA и не из UK, имена которых не Ivan Ivanov//
db.users.find(
    {
        country: { $nin: ['USA', 'UK'] },
        fullname: { $ne: 'Ivan Ivanov' }
    }
)