# Building a Professional Tech Portfolio with GitHub Pages

## A comprehensive guide based on my experience creating https://shahmeetk.github.io/Resume/

![Portfolio Banner](https://shahmeetk.github.io/Resume/assets/images/prof2.jpg)

In today's competitive tech landscape, having a standout professional portfolio is no longer optional—it's essential. As a Cloud & AI Practice Lead specializing in AIOps and DevSecOps, I recently rebuilt my portfolio using GitHub Pages to showcase my expertise in a way that resonates with recruiters and peers alike.

In this guide, I'll walk you through the exact process I used to create [my portfolio](https://shahmeetk.github.io/Resume/), from initial setup to deployment and optimization.

## Why GitHub Pages?

Before diving into the how-to, let's address why GitHub Pages is an excellent choice for tech professionals:

1. **It's free** with no hidden costs or limitations
2. **It integrates with your existing GitHub workflow**
3. **It demonstrates your technical abilities** just by existing
4. **It gives you complete control** over design and content
5. **It's automatically version-controlled**

Now, let's get into the step-by-step process.

## Step 1: Repository Setup and Structure

I started by creating a new GitHub repository named "Resume" and initializing it with a README.md file. After cloning it locally, I established a clean, organized structure:

```
Resume/
├── assets/
│   ├── css/styles.css
│   ├── js/script.js
│   └── images/
├── index.html
├── README.md
├── .nojekyll
└── .github/workflows/deploy.yml
```

This structure separates concerns and makes maintenance straightforward. The `.nojekyll` file prevents GitHub from processing the site with Jekyll, which can cause unexpected behavior with certain file paths.

## Step 2: Creating the HTML Foundation

My `index.html` file serves as the backbone of the portfolio. Here's a simplified version of the structure I used:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meet Shah - Cloud & AI Practice Lead</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <!-- Profile section with photo, name, title -->
    </header>

    <nav>
        <!-- Navigation menu -->
    </nav>

    <section id="about">
        <!-- About section highlighting AI, Cloud, DevSecOps expertise -->
    </section>

    <section id="experience">
        <!-- Professional experience with timeline -->
    </section>

    <section id="skills">
        <!-- Skills categorized by domain -->
    </section>

    <!-- Additional sections for education, certifications, etc. -->

    <footer>
        <!-- Copyright and contact information -->
    </footer>

    <script src="assets/js/script.js"></script>
</body>
</html>
```

I made sure to include semantic HTML5 elements for better accessibility and SEO.

## Step 3: Styling with Modern CSS

For the visual design, I created a clean, professional look using CSS variables for consistent styling:

```css
:root {
    --primary-color: #0284c7;
    --secondary-color: #0ea5e9;
    --dark-color: #0c4a6e;
    --light-color: #e0f2fe;
    --accent-color: #3b82f6;
    --background-color: #f8fafc;
    --text-color: #1e293b;
    --border-radius: 8px;
    --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    --transition: all 0.3s ease;
}
```

For the profile image, I used a circular frame with subtle hover effects:

```css
.profile-image img {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    border: 5px solid rgba(255, 255, 255, 0.3);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    object-fit: cover;
    object-position: top center; /* Ensures face is centered */
    transition: var(--transition);
}

.profile-image img:hover {
    transform: scale(1.05);
    border-color: white;
    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.25);
}
```

For responsive layouts, I used CSS Grid and Flexbox:

```css
.skills-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 30px;
}

.header-content {
    display: flex;
    align-items: center;
    gap: 40px;
}
```

And media queries for mobile responsiveness:

```css
@media (max-width: 768px) {
    .header-content {
        flex-direction: column;
        text-align: center;
    }
    
    .skills-container {
        grid-template-columns: 1fr;
    }
}
```

## Step 4: Adding Interactivity with JavaScript

To enhance user experience, I added smooth scrolling and active state highlighting:

```javascript
document.addEventListener('DOMContentLoaded', function() {
    // Smooth scrolling for navigation links
    const navLinks = document.querySelectorAll('nav a');
    
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            const targetSection = document.querySelector(targetId);
            
            window.scrollTo({
                top: targetSection.offsetTop - 70,
                behavior: 'smooth'
            });
        });
    });
    
    // Add active class to navigation items on scroll
    const sections = document.querySelectorAll('.section');
    
    window.addEventListener('scroll', function() {
        let current = '';
        
        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            
            if (pageYOffset >= sectionTop - 100) {
                current = section.getAttribute('id');
            }
        });
        
        navLinks.forEach(link => {
            link.classList.remove('active');
            if (link.getAttribute('href') === `#${current}`) {
                link.classList.add('active');
            }
        });
    });
});
```

## Step 5: Crafting Content That Resonates

The most crucial aspect of my portfolio was tailoring the content to highlight my expertise in AI, Cloud Management, and DevSecOps. I used this structure for my about section:

```html
<p class="highlight-text">Pioneering the convergence of AI, Cloud, and DevSecOps to create intelligent, secure, and scalable enterprise solutions.</p>

<p>As a <strong>Cloud & AI Practice Lead</strong>, I specialize in building AI-powered cloud ecosystems that transform how organizations operate. My expertise lies in implementing <strong>AIOps solutions</strong> that leverage machine learning for predictive analytics, automated remediation, and intelligent observability across complex cloud environments.</p>

<p>With a deep background in <strong>multi-cloud architecture</strong> (Azure, AWS, GCP) and <strong>DevSecOps practices</strong>, I integrate security throughout the development lifecycle while enabling rapid innovation.</p>
```

For skills, I created visual highlight boxes with icons:

```html
<div class="highlight-item">
    <div class="highlight-icon"><i class="fas fa-brain"></i></div>
    <div class="highlight-content">
        <h4>AI & Machine Learning</h4>
        <p>Implementing AIOps, predictive analytics, and intelligent automation to revolutionize IT operations</p>
    </div>
</div>
```

## Step 6: Setting Up Automatic Deployment

To ensure my portfolio stays up-to-date, I created a GitHub Actions workflow file at `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - main
  workflow_dispatch:

permissions:
  contents: write
  pages: write
  id-token: write

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: .
          force_orphan: true
```

This configuration automatically deploys my site whenever I push changes to the main branch, making updates seamless.

## Step 7: Optimizing for Recruiters

To ensure my portfolio resonates with recruiters in the AI and cloud space, I:

1. **Used industry-specific keywords** throughout the content
2. **Highlighted quantifiable achievements** from my experience
3. **Organized information** for quick scanning
4. **Ensured mobile responsiveness** for viewing on any device
5. **Optimized loading speed** by compressing assets

## Results and Benefits

Since launching my portfolio at [https://shahmeetk.github.io/Resume/](https://shahmeetk.github.io/Resume/), I've received positive feedback from recruiters and peers alike. The benefits have been numerous:

1. **Increased visibility** in my professional network
2. **More targeted job inquiries** aligned with my expertise
3. **A professional showcase** that demonstrates both my technical skills and my attention to detail
4. **Complete control** over my professional brand
5. **Easy updates** through the GitHub workflow

## Conclusion

Creating a professional portfolio with GitHub Pages is a powerful way to showcase your skills while demonstrating your technical abilities. The platform is free, flexible, and integrates perfectly with your existing GitHub workflow.

By following this guide, you can create a portfolio that not only looks professional but also effectively communicates your value to potential employers or clients.

Feel free to explore my portfolio at [https://shahmeetk.github.io/Resume/](https://shahmeetk.github.io/Resume/) for inspiration, and don't hesitate to reach out if you have any questions!

---

*Meet Shah*  
*Cloud & AI Practice Lead | AIOps | DevSecOps | Multi-Cloud Architect*  
*[LinkedIn](https://www.linkedin.com/in/meetshah10290/) | [GitHub](https://github.com/shahmeetk)*
