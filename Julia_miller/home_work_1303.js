//1. Заблокировать юзеров не из France с балансом от 200 до 500 EUR

db.users.updateMany(
  { balance: { $gte: 200, $lte: 500 }, country: { $ne: "France" } },
  {
    $set: {
      is_blocked: true,
    },
  }
);

// 2.  Вывести имена и баланс незаблокированных юзеров из Germany и France

db.users.find(
  { is_blocked: { $ne: true }, country: ["France", "Germany"] },
  { fullname: 1, balance: 1, _id: 0 }
);

// 3. Разблокировать юзеров из UK и Germany с положительным балансом

db.users.updateMany(
{country: ["UK", "Germany"], balance: {$gte: 0}},
{$unset: {is_blocked: null}}
)

// 4. Увеличить баланс на 3.5% и разблокировать всех юзеров из UK с положительным балансом

db.users.updateMany(
  { balance: { $gte: 0 }, country: "UK" },
  { $unset: { is_blocked: null }, $mul: { balance: 0.035 } }
);

// 5. Уменьшить баланс на 20 EUR всех юзеров из France с балансом от 500 EUR и более

db.users.updateMany(
  { balance: { $gte: 500 }, country: "France" },
  { $inc: { balance: -20 } }
);