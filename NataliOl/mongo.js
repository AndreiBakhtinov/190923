//Поместить в каталог со своим именем_фамилией в произвольный файл
db.users.find(
    {
        country: { $nin: ['USA', 'UK'] },
        fullname: { $ne: 'Ivan Ivanov' }
    }
)