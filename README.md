# Myntra Clone

A **responsive clone** of the popular e-commerce website **Myntra**, built using **HTML** and **CSS**.  
It includes a homepage with navigation, search bar, main banner, categories, and footer.

---

## 📑 Table of Contents

- [Demo](#demo)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [AWS Implementation](#aws-implementation)
- [Terraform Deployment](#terraform-deployment)
- [Netlify Deployment](#netlify-deployment)
- [Contact](#contact)
- [License](#license)

---

## 🚀 Demo

- **GitHub Pages**: [Live Demo](https://priyanshuksharma.github.io/MyntraClone/)  
- **AWS Hosting**: [myntraclonebypriyanshu.s3-website.ap-south-1.amazonaws.com](http://myntraclonebypriyanshu.s3-website.ap-south-1.amazonaws.com/)  
- **Netlify Hosting**: [majestic-faloodeh-224c28.netlify.app](https://majestic-faloodeh-224c28.netlify.app/)  

---

## ✨ Features

- Responsive **navigation bar** with section links.  
- **Search bar** with placeholder text.  
- **Main banner image** for promotions.  
- **Category sections** with images and hover effects.  
- **Footer** with multiple columns for useful links.  

---

## 🛠️ Technologies Used

- **HTML5**  
- **CSS3**

---

## 🏁 Getting Started

Follow these steps to run the project locally:

### ✅ Prerequisites
- A modern web browser (Chrome, Edge, Firefox, Safari).

### 📥 Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/PriyanshuKSharma/MyntraClone.git
   ```

2. Navigate into the project directory:

   ```sh
   cd MyntraClone
   ```
3. Open `index.html` in your browser:

   ```sh
   open index.html
   ```

---

## 📂 Folder Structure

```
myntra-clone/
├── images/
│   ├── myntra_logo.webp
│   ├── banner.jpg
│   ├── offers/
│   │   ├── 1.png
│   │   ├── 2.png
│   │   ├── ...
│   ├── categories/
│       ├── 1.jpg
│       ├── 2.jpg
│       ├── ...
├── main.tf
├── index.html
└── index.css
```

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repo.
2. Create your feature branch:

   ```sh
   git checkout -b feature/AmazingFeature
   ```
3. Commit your changes:

   ```sh
   git commit -m 'Add some AmazingFeature'
   ```
4. Push to your branch:

   ```sh
   git push origin feature/AmazingFeature
   ```
5. Open a Pull Request.

---

## ☁️ AWS Implementation

### Step 1: Create an AWS Account

* Sign up at [AWS](https://aws.amazon.com/).

### Step 2: Choose Hosting Option

* **Amazon S3** → Static websites.
* **Amazon EC2** → Dynamic apps.
* **AWS Amplify** → Full-stack deployment.
* **Amazon Lightsail** → VPS setup.

### Step 3: Static Website Hosting with Amazon S3

1. Create a **bucket** in [S3 Console](https://console.aws.amazon.com/console/home).
2. Upload website files (`index.html`, `index.css`, images, etc.).
3. Enable **Static website hosting** in bucket properties.
4. Add a **Bucket Policy** for public access:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::YOUR-BUCKET-NAME/*"
    }
  ]
}
```

5. Access the website via the bucket endpoint.

---

## ⚙️ Terraform Deployment

This project includes a `main.tf` for automating deployment.

### Steps:

1. Install Terraform.
2. Configure AWS credentials.
3. Run:

```sh
terraform init
terraform plan
terraform apply
```

Terraform will:

* Create an S3 bucket.
* Configure static hosting.
* Apply the public bucket policy.
* Upload files automatically.

---

## 🌐 Netlify Deployment

### Prerequisites

* GitHub account.
* Netlify account ([Sign up here](https://www.netlify.com/)).

### Steps:

1. Push code to GitHub.
2. Login to Netlify → **"Add new site"** → **Import project**.
3. Connect the `MyntraClone` repo.
4. Set **Publish Directory** → `/` (root).
5. Click **Deploy site**.
6. Access via auto-generated link (customize if needed).

---

## 📬 Contact

👤 **Priyanshu K Sharma**

* Twitter: [@itspriyanshuks](https://x.com/itspriyanshuks)
* GitHub: [PriyanshuKSharma](https://github.com/PriyanshuKSharma)

🔗 **Project Link**: [MyntraClone Repo](https://github.com/PriyanshuKSharma/MyntraClone.git)

---

## 📜 License

This project is **not currently licensed**.

---
