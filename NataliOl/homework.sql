//В рамках БД 190923_music напишите след/запросы:
//Вывести данные об одном треке (на ваш выбор)
db.track.findOne(
    {title: 'bim-bim-bom-bomgit checkout -b '},
    {_id: 0}
)

//Вывести данные клиентов из Germany (в проекции - без страны)
db.users.find(
    {country: 'Germany'},
    {country: 0, _id: 0}
)

//Вывести данные о треках (в проекции - без первичного ключа)
db.track.find(
    {},
    {_id: 0}
)

//Вывести страны и имена всех клиентов
db.users.find(
    {},
    {country: 1, fullname: 1, _id: 0}
)