<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Свой бизнес: с чего начать</title>
<style>
  :root {
    --bg: #faf7f2;
    --card: #ffffff;
    --ink: #222222;
    --muted: #6b6b6b;
    --accent: #e0643b;
    --accent-dark: #b9482a;
    --soft: #f3ece2;
    --line: #e7dfd3;
    --ok: #2f7d5b;
    --radius: 14px;
  }
  * { box-sizing: border-box; }
  body {
    margin: 0;
    font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
    background: var(--bg);
    color: var(--ink);
    line-height: 1.55;
  }
  header {
    padding: 56px 20px 40px;
    background: linear-gradient(135deg, #f7d9c4, #f3ece2 60%);
    text-align: center;
  }
  header h1 { margin: 0 0 12px; font-size: clamp(28px, 5vw, 42px); line-height: 1.2; }
  header p { margin: 0 auto; max-width: 620px; color: #4a4a4a; font-size: 18px; }
  nav {
    position: sticky; top: 0; z-index: 10;
    background: rgba(250, 247, 242, 0.95);
    backdrop-filter: blur(6px);
    border-bottom: 1px solid var(--line);
    display: flex; justify-content: center; gap: 4px; flex-wrap: wrap;
    padding: 10px;
  }
  nav a {
    color: var(--ink); text-decoration: none; padding: 8px 14px;
    border-radius: 999px; font-size: 15px;
  }
  nav a:hover { background: var(--soft); }
  main { max-width: 860px; margin: 0 auto; padding: 24px 18px 80px; }
  section { margin-top: 40px; scroll-margin-top: 70px; }
  h2 { font-size: 26px; margin: 0 0 8px; }
  .lead { color: var(--muted); margin: 0 0 20px; }
  .card {
    background: var(--card); border: 1px solid var(--line);
    border-radius: var(--radius); padding: 22px; margin-bottom: 16px;
  }
  h3 { margin: 0 0 8px; font-size: 20px; }
  h4 { margin: 18px 0 6px; font-size: 15px; text-transform: uppercase; letter-spacing: .04em; color: var(--muted); }
  .q { font-weight: 600; margin: 18px 0 10px; }
  .chips { display: flex; flex-wrap: wrap; gap: 8px; }
  .chip {
    border: 1px solid var(--line); background: #fff; color: var(--ink);
    padding: 8px 14px; border-radius: 999px; cursor: pointer; font-size: 15px;
    font-family: inherit;
  }
  .chip[aria-pressed="true"] { background: var(--accent); border-color: var(--accent); color: #fff; }
  .radios { display: grid; gap: 8px; }
  .radios label {
    display: flex; gap: 10px; align-items: center;
    border: 1px solid var(--line); border-radius: 10px; padding: 10px 12px; cursor: pointer; background: #fff;
  }
  .radios label:has(input:checked) { border-color: var(--accent); background: #fff6f1; }
  .btn {
    background: var(--accent); color: #fff; border: 0; border-radius: 10px;
    padding: 12px 20px; font-size: 16px; cursor: pointer; font-family: inherit;
  }
  .btn:hover { background: var(--accent-dark); }
  .btn.secondary { background: #fff; color: var(--ink); border: 1px solid var(--line); }
  .btn.secondary:hover { background: var(--soft); }
  .row { display: flex; gap: 10px; flex-wrap: wrap; margin-top: 18px; }
  ul, ol { padding-left: 20px; margin: 6px 0; }
  li { margin: 4px 0; }
  .tag {
    display: inline-block; background: var(--soft); color: var(--accent-dark);
    border-radius: 6px; padding: 2px 8px; font-size: 13px; margin: 0 6px 6px 0;
  }
  .reasons li { color: var(--ok); }
  .reasons li span { color: var(--ink); }
  .meta { color: var(--muted); font-size: 14px; }
  .tip { background: var(--soft); border-radius: 10px; padding: 12px 14px; margin-top: 14px; font-size: 15px; }
  .hidden { display: none; }
  label.field { display: block; font-weight: 600; margin: 14px 0 6px; font-size: 15px; }
  input[type="text"], textarea {
    width: 100%; font: inherit; padding: 10px 12px; border: 1px solid var(--line);
    border-radius: 10px; background: #fff; color: var(--ink);
  }
  textarea { min-height: 240px; resize: vertical; }
  .steps { counter-reset: s; list-style: none; padding: 0; }
  .steps li { counter-increment: s; position: relative; padding: 14px 14px 14px 56px; background: #fff; border: 1px solid var(--line); border-radius: 12px; margin-bottom: 10px; }
  .steps li::before {
    content: counter(s); position: absolute; left: 14px; top: 12px;
    width: 30px; height: 30px; border-radius: 50%; background: var(--accent); color: #fff;
    display: flex; align-items: center; justify-content: center; font-weight: 700;
  }
  .services { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 14px; }
  .services .card { margin: 0; }
  .note { font-size: 14px; color: var(--muted); margin-top: 16px; }
  footer { text-align: center; color: var(--muted); font-size: 14px; padding: 30px 20px; }
</style>
</head>
<body>

<header>
  <h1>Свой бизнес: с чего начать</h1>
  <p>Ответь на несколько вопросов, получи подходящие идеи и понятный план первой недели. Потом собери черновик своего плана и узнай, как сделать сайт.</p>
</header>

<nav>
  <a href="#idea">Подобрать идею</a>
  <a href="#plan">Черновик плана</a>
  <a href="#site">Как создать сайт</a>
</nav>

<main>

  <!-- ============ 1. ПОДБОР ИДЕИ ============ -->
  <section id="idea">
    <h2>1. Подобрать идею</h2>
    <p class="lead">Чем больше отметишь, тем точнее подбор. Ничего не нужно знать заранее.</p>

    <div class="card" id="wizard">
      <div class="q">Что тебе интересно? (можно выбрать несколько)</div>
      <div class="chips" id="interests"></div>

      <div class="q">Что ты умеешь или любишь делать?</div>
      <div class="chips" id="skills"></div>

      <div class="q">Сколько денег готов вложить в старт?</div>
      <div class="radios" id="budget"></div>

      <div class="q">Сколько часов в неделю можешь уделять делу?</div>
      <div class="radios" id="hours"></div>

      <div class="row">
        <button class="btn" id="findBtn">Показать идеи</button>
      </div>
    </div>

    <div id="results" class="hidden"></div>
  </section>

  <!-- ============ 2. ЧЕРНОВИК ПЛАНА ============ -->
  <section id="plan">
    <h2>2. Черновик плана</h2>
    <p class="lead">Ответь на шесть вопросов о своём деле. Из ответов соберётся короткий план, который можно сохранить и скопировать.</p>

    <div class="card">
      <label class="field" for="pName">Как будет называться дело?</label>
      <input type="text" id="pName" placeholder="Например: «Пекарня Мира»">

      <label class="field" for="pOffer">Что ты будешь продавать? (товар или услугу)</label>
      <input type="text" id="pOffer" placeholder="Например: домашние торты на заказ">

      <label class="field" for="pAudience">Кто будет покупать?</label>
      <input type="text" id="pAudience" placeholder="Например: мамы в моём районе, офисы на праздники">

      <label class="field" for="pPrice">Сколько будет стоить?</label>
      <input type="text" id="pPrice" placeholder="Например: 8 000 ₸ за торт">

      <label class="field" for="pChannel">Где найдёшь первых клиентов?</label>
      <input type="text" id="pChannel" placeholder="Например: Instagram, знакомые, местные чаты">

      <label class="field" for="pCost">Что нужно купить для старта и сколько это стоит?</label>
      <input type="text" id="pCost" placeholder="Например: духовка есть, коробки и ингредиенты около 30 000 ₸">

      <div class="row">
        <button class="btn" id="buildPlan">Собрать план</button>
        <button class="btn secondary" id="copyPlan">Скопировать</button>
        <button class="btn secondary" id="savePlan">Сохранить в браузере</button>
      </div>

      <div style="margin-top:18px">
        <textarea id="planOut" placeholder="Здесь появится твой план"></textarea>
      </div>
      <p class="note">Сохранение работает только в этом браузере. Текст никуда не отправляется.</p>
    </div>
  </section>

  <!-- ============ 3. КАК СОЗДАТЬ САЙТ ============ -->
  <section id="site">
    <h2>3. Как создать сайт</h2>
    <p class="lead">Сайт нужен, чтобы клиенты нашли тебя и поняли, что ты предлагаешь. Для начала хватит одной страницы.</p>

    <ol class="steps">
      <li><strong>Выбери название и проверь, свободно ли оно.</strong> Посмотри, не занят ли адрес сайта и аккаунты в соцсетях с таким же именем.</li>
      <li><strong>Определи, что должен сделать сайт.</strong> Например: рассказать об услуге, принять заявку, продать товар. От этого зависит выбор платформы.</li>
      <li><strong>Выбери платформу.</strong> Для одной страницы подойдут конструкторы (см. ниже). Для магазина или блога лучше выбрать более гибкий вариант.</li>
      <li><strong>Собери страницу.</strong> Обычно нужны: заголовок с обещанием, описание услуги или товара, цены, отзывы или примеры работ, контакты и кнопка для заявки.</li>
      <li><strong>Подключи форму или мессенджер.</strong> Пусть клиент оставит номер или сразу напишет тебе в WhatsApp или Telegram.</li>
      <li><strong>Опубликуй и проверь на телефоне.</strong> Большинство людей откроет сайт именно с телефона.</li>
    </ol>

    <h4>Где делают сайты</h4>
    <div class="services">
      <div class="card">
        <h3>Tilda</h3>
        <p class="meta">Конструктор без кода</p>
        <p>Хорошо подходит для одностраничного сайта с красивым дизайном и формой заявки. Есть русскоязычный интерфейс.</p>
      </div>
      <div class="card">
        <h3>Carrd</h3>
        <p class="meta">Очень простой конструктор</p>
        <p>Одна страница за короткое время. Подходит для визитки, портфолио или запуска идеи.</p>
      </div>
      <div class="card">
        <h3>Wix</h3>
        <p class="meta">Универсальный конструктор</p>
        <p>Много готовых шаблонов, можно добавить несколько страниц, магазин и приложения.</p>
      </div>
      <div class="card">
        <h3>Google Sites</h3>
        <p class="meta">Бесплатный вариант</p>
        <p>Простой сайт на несколько страниц без оплаты и без установки. Дизайн скромный, зато быстро.</p>
      </div>
      <div class="card">
        <h3>WordPress</h3>
        <p class="meta">Гибкая система</p>
        <p>Подходит для блога, каталога или интернет-магазина. Понадобится немного времени на настройку.</p>
      </div>
      <div class="card">
        <h3>GitHub Pages</h3>
        <p class="meta">Бесплатный хостинг</p>
        <p>Для простых статичных страниц. Удобно, если готов немного работать с файлами и кодом.</p>
      </div>
    </div>
    <p class="note">Условия тарифов и бесплатных планов часто меняются. Перед выбором проверь актуальную информацию на сайте сервиса.</p>
  </section>

</main>

<footer>Начни с малого: один понятный продукт, одна страница и первые три клиента.</footer>

<script>
  // ---------- Данные ----------
  // budget / hours: 1 = мало, 2 = средне, 3 = много
  const INTERESTS = [
    { id: "food", label: "Еда и готовка" },
    { id: "beauty", label: "Красота и уход" },
    { id: "crafts", label: "Ручная работа" },
    { id: "digital", label: "Интернет и технологии" },
    { id: "kids", label: "Дети и семья" },
    { id: "animals", label: "Животные" },
    { id: "sport", label: "Спорт и здоровье" },
    { id: "creative", label: "Фото, видео, дизайн" },
    { id: "travel", label: "Путешествия и город" },
    { id: "home", label: "Дом и ремонт" },
    { id: "education", label: "Обучение и языки" },
    { id: "sales", label: "Торговля и покупка-продажа" }
  ];

  const SKILLS = [
    { id: "cooking", label: "Готовлю вкусно" },
    { id: "handmade", label: "Руки растут откуда надо" },
    { id: "people", label: "Умею общаться с людьми" },
    { id: "digital", label: "Уверенно работаю с телефоном и соцсетями" },
    { id: "writing", label: "Пишу тексты" },
    { id: "teaching", label: "Могу объяснить и научить" },
    { id: "creative", label: "Умею снимать или рисовать" },
    { id: "sales", label: "Умею продавать" }
  ];

  const BUDGETS = [
    { id: 1, label: "До 50 000 ₸" },
    { id: 2, label: "От 50 000 до 300 000 ₸" },
    { id: 3, label: "Больше 300 000 ₸" }
  ];

  const HOURS = [
    { id: 1, label: "До 5 часов" },
    { id: 2, label: "От 5 до 15 часов" },
    { id: 3, label: "Больше 15 часов" }
  ];

  const IDEAS = [
    {
      name: "Домашние десерты на заказ",
      interests: ["food", "sales"], skills: ["cooking", "people"], budget: 1, hours: 1,
      about: "Торты, капкейки, печенье к праздникам и дням рождения. Заказы в основном через соцсети и знакомых.",
      earn: "Заказы на выходные могут окупать себя с первых месяцев.",
      week: [
        "Сделай 3 пробных десерта и сфотографируй их при дневном свете.",
        "Составь меню с 3–5 позициями и ценами. Опубликуй в Instagram или локальных чатах.",
        "Прими первые 3 заказа, попроси отзыв и сфотографируй готовые работы."
      ]
    },
    {
      name: "Доставка готовых обедов",
      interests: ["food", "sales"], skills: ["cooking", "people"], budget: 2, hours: 3,
      about: "Ежедневные обеды или заготовки для офисов и занятых людей. Меню меняется раз в неделю.",
      earn: "Постоянные клиенты дают стабильный доход, но нужен регулярный график.",
      week: [
        "Выбери 2–3 рабочих дня и составь меню на неделю с ценами.",
        "Найди 5 офисов или знакомых, которые согласятся попробовать неделю.",
        "Договорись о доставке и собери обратную связь после первой недели."
      ]
    },
    {
      name: "Фото и видео для мероприятий",
      interests: ["creative", "kids"], skills: ["creative", "digital"], budget: 2, hours: 2,
      about: "Съёмка дней рождения, свадеб, небольших событий и коротких роликов для бизнеса.",
      earn: "Один заказ может приносить заметную сумму. Портфолио со временем становится главным инструментом.",
      week: [
        "Сними 3–5 бесплатных работ для друзей или знакомых и собери портфолио.",
        "Опиши 2–3 пакета услуг с ценами.",
        "Размести подборку в соцсетях и попроси знакомых поделиться."
      ]
    },
    {
      name: "Ведение соцсетей для малого бизнеса",
      interests: ["digital", "sales"], skills: ["digital", "writing"], budget: 1, hours: 2,
      about: "Помогаешь кафе, мастерам и магазинам вести Instagram: тексты, публикации, простой график.",
      earn: "Ежемесячная оплата от каждого клиента, поэтому доход постепенно растёт.",
      week: [
        "Оформи свой аккаунт как пример работы: 9 публикаций и понятное описание.",
        "Найди 10 местных бизнесов, у которых слабые соцсети, и предложи бесплатный разбор.",
        "Заключи первый договор на пробный месяц."
      ]
    },
    {
      name: "Онлайн-репетитор или курсы",
      interests: ["education", "kids"], skills: ["teaching", "writing"], budget: 1, hours: 2,
      about: "Уроки языка, школьных предметов или навыков, например Excel, через видеозвонки.",
      earn: "Оплата за каждое занятие. Доход зависит от количества учеников.",
      week: [
        "Выбери одну тему, в которой ты сильнее всего, и напиши программу из 4 уроков.",
        "Сделай бесплатное пробное занятие для 3 знакомых.",
        "Попроси отзывы и запиши 2–3 объявления о наборе учеников."
      ]
    },
    {
      name: "Изделия ручной работы",
      interests: ["crafts", "home"], skills: ["handmade", "creative"], budget: 1, hours: 2,
      about: "Свечи, украшения, мыло, открытки или декор, которые продаются на заказ или в небольших партиях.",
      earn: "Маржа выше, когда изделие уникально. Окупаемость зависит от цены материалов.",
      week: [
        "Сделай 5 образцов и посчитай себестоимость каждого.",
        "Сфотографируй изделия и опубликуй их в 2–3 местах.",
        "Продай первые 10 штук знакомым или на локальной ярмарке."
      ]
    },
    {
      name: "Уход за питомцами",
      interests: ["animals", "home"], skills: ["people", "handmade"], budget: 1, hours: 2,
      about: "Выгул собак, передержка на время отъезда, визиты к кошкам. Работа в своём районе.",
      earn: "Оплата за визит или за день. Частые клиенты дают стабильность.",
      week: [
        "Расскажи о себе знакомым и соседям, у которых есть питомцы.",
        "Оформи карточку с ценами и фото (с разрешения владельцев).",
        "Выполни первые 3 визита и попроси отзывы."
      ]
    },
    {
      name: "Организация детских праздников",
      interests: ["kids", "creative"], skills: ["people", "creative"], budget: 2, hours: 3,
      about: "Сценарии, декор и аниматоры для дней рождения. Работаешь с готовыми подрядчиками или сам.",
      earn: "Один праздник приносит заметную сумму, но нужна организованность.",
      week: [
        "Составь 3 тематических сценария праздника с примерной сметой.",
        "Сделай пробный праздник для семьи знакомых.",
        "Собери отзывы и фото для публикации."
      ]
    },
    {
      name: "Перепродажа через интернет",
      interests: ["sales", "digital"], skills: ["sales", "digital"], budget: 2, hours: 3,
      about: "Покупаешь товары дешевле и продаёшь дороже через маркетплейсы или соцсети.",
      earn: "Прибыль небольшая с каждой штуки, поэтому важны объём и точный подсчёт расходов.",
      week: [
        "Выбери одну категорию товаров и найди 10 позиций с хорошим спросом.",
        "Посчитай прибыль с учётом доставки, комиссий и упаковки.",
        "Выстави 5 товаров и проверь, какие продаются."
      ]
    },
    {
      name: "Мелкий ремонт и сборка мебели",
      interests: ["home", "crafts"], skills: ["handmade", "people"], budget: 1, hours: 2,
      about: "Сборка мебели, мелкий ремонт, навески полок и уборка после ремонта.",
      earn: "Оплата за заказ. Спрос сильный, если работаешь аккуратно и вовремя.",
      week: [
        "Составь список услуг с ценами за час или за работу.",
        "Расскажи о себе в районных чатах и группах жильцов.",
        "Выполни первые заказы и попроси отзывы с фото."
      ]
    },
    {
      name: "Создание сайтов для малого бизнеса",
      interests: ["digital", "creative"], skills: ["digital", "creative"], budget: 1, hours: 3,
      about: "Делаешь простые сайты-визитки или лендинги для мастеров, кафе и специалистов.",
      earn: "Разовая оплата за сайт и, по желанию, ежемесячная поддержка.",
      week: [
        "Сделай 2 сайта-примера (можно для себя или знакомых) на конструкторе.",
        "Составь 3 пакета услуг с ценами.",
        "Найди 5 мастеров без сайта и предложи бесплатный макет."
      ]
    },
    {
      name: "Экскурсии по родному городу",
      interests: ["travel", "education"], skills: ["people", "writing"], budget: 1, hours: 2,
      about: "Авторские прогулки для туристов и местных: истории, маршруты, интересные места.",
      earn: "Оплата за группу. Сезонность важна, зимой спрос ниже.",
      week: [
        "Подготовь маршрут на 2 часа и текст рассказа.",
        "Проведи бесплатную прогулку для 3–5 друзей и попроси честный отзыв.",
        "Опубликуй маршрут в картах и профилях с ценой."
      ]
    },
    {
      name: "Персональные тренировки",
      interests: ["sport", "sales"], skills: ["people", "teaching"], budget: 1, hours: 2,
      about: "Тренировки онлайн или на улице. Подходит тем, у кого есть базовое образование в спорте или опыт.",
      earn: "Оплата за занятие. Лучше начинать с небольшого числа клиентов.",
      week: [
        "Убедись, что у тебя есть нужная квалификация или достаточный опыт.",
        "Проведи 3 бесплатные тренировки для знакомых.",
        "Заведи страницу в соцсетях и объявления с ценами пакетов."
      ]
    },
    {
      name: "Салон красоты на дому",
      interests: ["beauty", "sales"], skills: ["handmade", "people"], budget: 2, hours: 3,
      about: "Маникюр, брови, укладки или уход. Работа на дому или в арендованном месте по часам.",
      earn: "Доход зависит от загрузки. Нужны аккуратность и хорошие отзывы.",
      week: [
        "Проверь правила работы на дому в своём районе и требования к гигиене.",
        "Сделай бесплатные процедуры для первых клиентов и собери фото работ.",
        "Заведи запись через мессенджер и покажи цены."
      ]
    }
  ];

  // ---------- Состояние ----------
  const state = { interests: new Set(), skills: new Set(), budget: 1, hours: 1 };

  // ---------- Отрисовка выбора ----------
  function chipGroup(containerId, items, set) {
    const box = document.getElementById(containerId);
    items.forEach(item => {
      const b = document.createElement("button");
      b.className = "chip";
      b.type = "button";
      b.textContent = item.label;
      b.setAttribute("aria-pressed", "false");
      b.addEventListener("click", () => {
        const on = !set.has(item.id);
        on ? set.add(item.id) : set.delete(item.id);
        b.setAttribute("aria-pressed", String(on));
      });
      box.appendChild(b);
    });
  }

  function radioGroup(containerId, items, key, name) {
    const box = document.getElementById(containerId);
    items.forEach((item, i) => {
      const label = document.createElement("label");
      const input = document.createElement("input");
      input.type = "radio";
      input.name = name;
      input.value = item.id;
      if (i === 0) input.checked = true;
      input.addEventListener("change", () => { state[key] = item.id; });
      label.appendChild(input);
      label.appendChild(document.createTextNode(" " + item.label));
      box.appendChild(label);
    });
  }

  chipGroup("interests", INTERESTS, state.interests);
  chipGroup("skills", SKILLS, state.skills);
  radioGroup("budget", BUDGETS, "budget", "budget");
  radioGroup("hours", HOURS, "hours", "hours");

  // ---------- Подбор ----------
  const LABEL_BY_ID = Object.fromEntries(INTERESTS.map(i => [i.id, i.label]));
  const SKILL_BY_ID = Object.fromEntries(SKILLS.map(s => [s.id, s.label]));

  function scoreIdea(idea) {
    let score = 0;
    const reasons = [];

    const matchedInterests = idea.interests.filter(i => state.interests.has(i));
    if (matchedInterests.length) {
      score += matchedInterests.length * 3;
      reasons.push("Связано с интересами: " + matchedInterests.map(i => LABEL_BY_ID[i].toLowerCase()).join(", "));
    }

    const matchedSkills = idea.skills.filter(s => state.skills.has(s));
    if (matchedSkills.length) {
      score += matchedSkills.length * 2;
      reasons.push("Опирается на твои навыки: " + matchedSkills.map(s => SKILL_BY_ID[s].toLowerCase()).join(", "));
    }

    if (state.budget >= idea.budget) {
      score += 2;
      reasons.push("Бюджета хватит на старт");
    } else {
      score -= 2;
    }

    if (state.hours >= idea.hours) {
      score += 2;
      reasons.push("Хватит времени в неделю");
    } else {
      score -= 2;
    }

    return { idea, score, reasons };
  }

  function renderResults() {
    const ranked = IDEAS.map(scoreIdea).sort((a, b) => b.score - a.score);
    const top = ranked.slice(0, 3);
    const box = document.getElementById("results");
    box.innerHTML = "";
    box.classList.remove("hidden");

    const head = document.createElement("h3");
    head.textContent = "Твои варианты";
    head.style.marginTop = "28px";
    box.appendChild(head);

    const intro = document.createElement("p");
    intro.className = "lead";
    intro.textContent = state.interests.size === 0
      ? "Ты не выбрал интересы, поэтому подбор основан на бюджете и времени. Вернись и отметь больше вариантов для точности."
      : "Вот три идеи, которые лучше всего подходят под твои ответы.";
    box.appendChild(intro);

    top.forEach((r, index) => {
      const card = document.createElement("div");
      card.className = "card";

      const title = document.createElement("h3");
      title.textContent = (index + 1) + ". " + r.idea.name;
      card.appendChild(title);

      const about = document.createElement("p");
      about.textContent = r.idea.about;
      card.appendChild(about);

      if (r.reasons.length) {
        const ul = document.createElement("ul");
        ul.className = "reasons";
        r.reasons.forEach(text => {
          const li = document.createElement("li");
          const span = document.createElement("span");
          span.textContent = text;
          li.appendChild(span);
          ul.appendChild(li);
        });
        card.appendChild(ul);
      }

      const earnTitle = document.createElement("h4");
      earnTitle.textContent = "Что с доходом";
      card.appendChild(earnTitle);
      const earn = document.createElement("p");
      earn.textContent = r.idea.earn;
      card.appendChild(earn);

      const weekTitle = document.createElement("h4");
      weekTitle.textContent = "План первой недели";
      card.appendChild(weekTitle);
      const ol = document.createElement("ol");
      r.idea.week.forEach(step => {
        const li = document.createElement("li");
        li.textContent = step;
        ol.appendChild(li);
      });
      card.appendChild(ol);

      const tip = document.createElement("div");
      tip.className = "tip";
      tip.textContent = "Перед тем как вкладывать деньги, спроси 10 человек, готовы ли они купить это и за сколько. Ответы важнее твоих догадок.";
      card.appendChild(tip);

      box.appendChild(card);
    });

    box.scrollIntoView({ behavior: "smooth", block: "start" });
  }

  document.getElementById("findBtn").addEventListener("click", renderResults);

  // ---------- Черновик плана ----------
  const FIELDS = {
    name: "pName", offer: "pOffer", audience: "pAudience",
    price: "pPrice", channel: "pChannel", cost: "pCost"
  };

  function readFields() {
    const data = {};
    Object.entries(FIELDS).forEach(([key, id]) => {
      data[key] = document.getElementById(id).value.trim();
    });
    return data;
  }

  function buildPlanText(d) {
    const v = (x, fallback) => x || fallback;
    return [
      "ЧЕРНОВИК ПЛАНА: " + v(d.name, "название ещё не придумано"),
      "",
      "1. Что продаю",
      v(d.offer, "—"),
      "",
      "2. Для кого",
      v(d.audience, "—"),
      "",
      "3. Цена",
      v(d.price, "—"),
      "",
      "4. Как найду первых клиентов",
      v(d.channel, "—"),
      "",
      "5. Затраты на старт",
      v(d.cost, "—"),
      "",
      "6. Что сделать на этой неделе",
      "- Проверить, что 10 человек из аудитории готовы платить за это.",
      "- Сделать простую страницу или публикацию с ценой.",
      "- Получить первого клиента или первую предоплату.",
      "",
      "Пересматривай план раз в месяц: сверяй доход, расходы и отзывы клиентов."
    ].join("\n");
  }

  document.getElementById("buildPlan").addEventListener("click", () => {
    document.getElementById("planOut").value = buildPlanText(readFields());
  });

  document.getElementById("copyPlan").addEventListener("click", async () => {
    const out = document.getElementById("planOut");
    if (!out.value) out.value = buildPlanText(readFields());
    try {
      await navigator.clipboard.writeText(out.value);
      alert("План скопирован");
    } catch (e) {
      out.select();
      alert("Выдели текст и скопируй вручную");
    }
  });

  document.getElementById("savePlan").addEventListener("click", () => {
    const out = document.getElementById("planOut");
    if (!out.value) out.value = buildPlanText(readFields());
    try {
      localStorage.setItem("businessPlanDraft", JSON.stringify({ fields: readFields(), text: out.value }));
      alert("Черновик сохранён в этом браузере");
    } catch (e) {
      alert("Не удалось сохранить: браузер не разрешает хранение");
    }
  });

  // Восстановление сохранённого черновика
  try {
    const saved = JSON.parse(localStorage.getItem("businessPlanDraft") || "null");
    if (saved && saved.fields) {
      Object.entries(FIELDS).forEach(([key, id]) => {
        document.getElementById(id).value = saved.fields[key] || "";
      });
      document.getElementById("planOut").value = saved.text || "";
    }
  } catch (e) { /* хранение недоступно, ничего страшного */ }
</script>

</body>
</html>
