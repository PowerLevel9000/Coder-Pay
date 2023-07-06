<a name="readme-top"></a>
<!-- TABLE OF CONTENTS -->
<div align = "center">
  <img src="./personal-branding/adarsh-logo.png" alt="logo" width="140"  height="auto" />
</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🧪 Linters](#linters)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [👁️ Presentation And Live link for Project](#video-presentation-for-our-project)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

#  App mock

  <img src="./personal-branding/app.png" alt="App Mock under construction..." width="100%"  height="auto" />
  <img src="./personal-branding/tablet-black.png" alt="App Mock under construction..." width="50%" />
  <img src="./personal-branding/mobile-white.png" alt="App Mock under construction..." />


# 📖 Coder PAy <a name="about-project"></a>

Coder Pay is ROR based app which you can use to maintain your budget with different category in future we will make payment option to track you expenses on the real payments you make 

## 🧪 Linters And test <a name="linters"></a>
[![Linters](https://github.com/PowerLevel9000/Coder-Pay/actions/workflows/linters.yml/badge.svg)](https://github.com/PowerLevel9000/Coder-Pay/actions/workflows/linters.yml)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

In this project we utilize our skills and knowledge to create this project

<details>
  <summary>Project language </summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>FrameWork</summary>
  <ul>
    <li><a href="">ROR</a></li>
  </ul>
</details>

<details>
  <summary>DataBase</summary>
  <ul>
    <li><a href="">Postgres</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **log in**
- **Sign in**
- **Create A Category of Expanse**
- **Add Expense**
- **Create A Expanse**
- **Add to different Category**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Ruby installed in your machine
- Ruby on Rails installed in your machine
- Postgres installed and all password and user being setup
- Any integrated terminal like
  - CMD
  - Bash
  - PowerShell
  - etc

### Setup

Clone this repository to your desired folder:

for cloning follow this steps
- go to green `code` button very top left corner of this Repository container
- copy your `SSH` or `https` file and clone it in your desired folder 
- or just download `ZIP` file
- [ ] Change UserName and Password with yours in [database.yml](./config/database.yml) file 

**OR**

- [ ] Delete the [credentials.yml.enc](./config/credentials.yml.enc)
- run `EDITOR="<your editor name for example code is for VS code> --wait" bin/rails credentials:edit"` and add following line in the file and close it. message pop up file save
``` 
user:
  username: "your user name"
  password: "your Password"
``` 
### Install

Install this project with:

for now you don't need any installation to run project if you already followed [Prerequisites](#prerequisites)

and 
```
bundle install
npm install
```

### Usage

To run the project, execute the following command:

you can use it for you library purpose 
run following commands in you `terminal` in root `dir` and if you open http://localhost:3000/ you can see App running 
```
rails s # for running app server on port 3000
rails c # for rails console
```

### Run tests

To run tests, run the following command:


```
rspec spec 
```

And for Linters

```
rubocop . //=> for ruby file linting 
npx stylelint "**/*.{css,scss}" //=> for CSS or SASS file linting 
```
`-A` and `--fix` for auto fixing respectively 


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Adarsh Pathak**

- GitHub: [@PowerLevel9000](https://github.com/PowerLevel9000)
- Twitter: [@PowerLevel9002](https://twitter.com/PowerLevel9002)
- LinkedIn: [Adarsh pathak](https://linkedin.com/in/PowerLevel)
- GitUp Page: [Portfolio Page](https://powerlevel9000.github.io/portfolio-project/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# 👁️ Presentation for Project <a name="video-presentation-for-our-project"></a>

[presentation-video](https://youtu.be/OCLadxqMB7U)

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Styling of various webpage**
- [ ] **Payment for Bills**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give it star or buy a coffee for us

[![BuyMeACoffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/adi8090808E)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>


I would like to thank microverse for giving this opportunity to show up my skills

and the <a href="https://guides.rubyonrails.org/getting_started.html"> Ruby on rails docs </a>


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
