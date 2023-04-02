<p align="center"> 
    <img src="https://github.com/ojasjain24/portfolio/blob/master/assets/images/neon_widgets_logo.png" align="center" height="150"></img>
</p>

<h1 align="center"> Software Developer Portfolio 🔥 </h1> 
<h3 align="center"> A clean, beautiful, responsive, and 100% customizable portfolio <br /> template for Software Developers! </h3>

<h2 align="center">Chack out the <a href="https://ojas-jain.web.app/#/">Live Demo</a> here!!!</h2>


<p align="center"> 
    <a href="https://ojas-jain.web.app" target="_blank">
    <img src="https://github.com/ojasjain24/portfolio/blob/master/Demo/Screenshot%202023-03-26%20105106.jpg"></img>
  </a>
  <a href="https://ojas-jain.web.app" target="_blank">
    <img src="https://github.com/ojasjain24/portfolio/blob/master/Demo/Ojas%20Jain%20-%20Google%20Chrome%2026-03-2023%2011_23_22%20(2).png"></img>
  </a>
</p>

:star: Star us on GitHub — it helps!

# Sections 📚

✔️ Summary and About me\
✔️ Skills \
✔️ Projects\
✔️ Technical and Non Technical Experience\
✔️ Volenteer Experience\
✔️ Education\
✔️ Degree and Certifications 🏆\
✔️ Acheavements\
✔️ Hobbies\
✔️ Socials


# Clone and Use 📋

- The website is completely built on `Flutter` and that's why we need `flutter` and `dart` installed
- After the successful installation and setup of `flutter`, clone the repository into your local system using below command:
 
 ```
   git clone https://github.com/ojasjain24/portfolio.git
  ```
  This will clone the whole repository in your system.
- The website use various dependencies like <a href="https://pub.dev/packages/neon_widgets">Neon Widgets<a> for neon effects, to download required dependencies to your system, navigate to the directory where the cloned repository resides and execute following command:
 
 ```
  flutter pub get
  ```
- Now the project is ready to use

# Customize it to make your own portfolio ✏️

In this project, there is only Two things that you need to change to customize this to anyone else's portfolio: **Personal Information** and **Main Image**.


### Personal Information

You will find `lib/data_file.dart` file which contains the complete information about the user. The file looks something like below:

```dart

static String myName = "Your Name";
static String tagLine = "Catchy Tagline";
static List<String> skills = [...];
 
 ...

static List<BuildsModel> experienceList = [ ... ];
  
...
```

You can change the personal information, experience, education, social media, certifications, blog information, contact information basically everything in `lib/data_file.dart` to directly reflect them in portfolio website.

### Main Image

As soon as you land on home page, you see a large image of yourself, to change that image, go to `assets/images/` there you will find a image named as `myPic.webp`, you need to replace that file with your own image. Note : It is recommended to use webp format image for this particular section as it maintains picture quality while reducing its size significantly and hence will load quickly. 

# Deployment 📦

- Once you are done with your setup and have successfully completed all steps above, you need to put your website online!
- I personally have deployed my portfolio on firebase. You can use any deployment platform like Heroku, Vercel, Firebase, DigtalOcean, AWS, etc. to deploy your portfolio.


# Contribute : 

1 : Create a proposal and add it to issues.

2 : wait for acceptance.

3 : push your changes to dev branch

4 : Give this repo a :star: star, it helps to increase the reach.
