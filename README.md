<h1>BestBuy Web App Otomasyon Projesi</h1>
Bu proje bestbuy web uygulaması otomasyonunu içermektedir. 
<h2>Tool stack</h2>

* Ruby
* Selenium
* Capybara
* Cucumber
* RSpec
* RubyMine

<h3>Kurulum</h3>
* Ruby kurulumu yapılmış olmalıdır. <a href="https://www.ruby-lang.org/en/downloads/">Link to install</a>

* Browserlara ait driverlar indirilmiş olmalıdır. <a href="https://chromedriver.chromium.org/downloads">chromedriver</a> <a href="https://github.com/mozilla/geckodriver/releases">firefox driver</a>

* İndirilen driverlar bir klasöre atılmalı ve bu klasör environment variable a eklenmelidir. Örn: C:\bin <a href="https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/">örnek variable ekleme</a>

* Proje locale clonlanır.

* Gerekli kütüphanelerin yüklenilebilmesi için, proje dizininde ```bundle install``` command i çalıştırılır.

* Tüm kütüphaneleri indirdikten sonra ``cucumber`` komutuyla proje çalıştırılır.

<h3>Proje yapısı</h3>

├── Gemfile
├── Gemfile.lock
├── README.md
└── features
├── config
│   └── base_config.rb
├── model
│   └── account_model.rb
├── pages
│   ├── filter_page.rb
│   ├── gmail_page.rb
│   ├── home_page.rb
│   ├── login_page.rb
│   ├── product_page.rb
│   └── search_page.rb
├── step_definitions
│   ├── filter_page_steps.rb
│   ├── general_steps.rb
│   ├── gmail_page_steps.rb
│   ├── home_page_steps.rb
│   ├── login_page_steps.rb
│   ├── product_page_steps.rb
│   └── search_page_steps.rb
├── support
│   ├── env.rb
│   └── hooks.rb
├── test
│   └── test.feature
└── utils
├── driver.rb
└── helper.rb



```
Given ön koşul
And ek koşul varsa
When aksiyonun alındığı kısım 
And ek aksiyon varsa
Then ilgili verifikasyonların yapıldığı yer
And ek verifikasyonlar 
```

<h5>Örnek</h5>

```

Given homepage is opened

And clicks on login button

And fill the valid credentials

When clicks on login button

Then user should see my account icon

And title should changed to "My Title"

```



