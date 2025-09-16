# Myntra Clone

This is a responsive clone of the popular e-commerce website Myntra. It includes a homepage with a navigation bar, search bar, main banner, category sections, and a footer. The project is built using HTML and CSS.

## Table of Contents

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

## Demo

You can view a live demo of the project [here](https://priyanshuksharma.github.io/MyntraClone/).

## Features

- Responsive navigation bar with links to different sections.
- Search bar with placeholder text.
- Main banner image.
- Category sections with images and hover effects.
- Footer with multiple columns for different links.

## Technologies Used

- HTML5
- CSS3

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need a modern web browser to view the project.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/PriyanshuKSharma/MyntraClone.git
   ```
2. Navigate to the project directory
   ```sh
   cd MyntraClone
   ```
3. Open `index.html` in your web browser
   ```sh
   open index.html
   ```

## Folder Structure

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

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## AWS Implementation

Step 1: Create an AWS Account
If you don’t already have an AWS account, sign up at AWS.

Step 2: Choose a Hosting Option
There are multiple ways to host a website on AWS, depending on your requirements. The most common options are:

1. Amazon S3 (Static Websites): For static websites (HTML, CSS, JS).
2. Amazon EC2 (Dynamic Websites): For dynamic websites requiring server-side processing.
3. AWS Amplify (Web and Mobile Apps): Simplifies the process of deploying full-stack web and mobile apps.
4. Amazon Lightsail: Simplifies the setup of virtual private servers.

Step 3: Set Up a Static Website with Amazon S3
This is suitable for hosting simple static websites.

Create a Bucket:

Open the [@Amazon S3 console](https://console.aws.amazon.com/console/home?nc2=h_ct&src=header-signin).
1. Click on “Create bucket”.
2. Provide a bucket name (this should be unique across all of AWS).
3. Choose a region and configure other settings as per your needs.
4. Click on “Create bucket” at the bottom.

Upload Your Website Files:

1. Click on your newly created bucket.
2. Click on the “Upload” button.
3. Add your website files (HTML, CSS, JS, images, etc.).
4. Click on “Upload” to start the upload process.

Enable Static Website Hosting:

1. Click on your bucket and go to the “Properties” tab.
2. Scroll down to the “Static website hosting” section.
3. Select “Use this bucket to host a website”.
4. Specify the index document (e.g., index.html) and an error document (e.g., error.html).
5. Save the changes.

Make Your Bucket Public:

Go to the “Permissions” tab.

Edit the “Bucket policy” to allow public access. You can use the following policy (replace YOUR-BUCKET-NAME with your bucket name):

## Setting S3 Bucket Policy

To set the S3 bucket policy, use the following bash script:

```
#Go to the “Permissions” tab.
#Edit the “Bucket policy” to allow public access. You can use the following policy (replace YOUR-BUCKET-NAME with your bucket name):

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
Access Your Website:

The website will be available at the bucket’s endpoint, which you can find in the “Static website hosting” section.

---

## Terraform Deployment

This project includes Terraform configuration to automate the deployment of the website to an AWS S3 bucket.

### Steps to Deploy with Terraform

1. Ensure you have Terraform installed on your machine.
2. Configure your AWS credentials for Terraform to access your AWS account.
3. Navigate to the project directory containing the `main.tf` file.
4. Run the following commands:

```sh
terraform init
terraform plan
terraform apply
```

5. Terraform will create an S3 bucket, configure it for static website hosting, set the appropriate bucket policy, and upload all the website files to the bucket.
6. After successful deployment, you can access your website using the S3 bucket website endpoint.

This automation simplifies the deployment process and ensures your website is consistently and reliably hosted on AWS.

---

## Netlify Deployment

To deploy this project on **Netlify**, follow these steps:

### Prerequisites
- A GitHub account.
- A Netlify account (sign up at [Netlify](https://www.netlify.com/)).

### Steps to Deploy
1. **Push Your Code to GitHub**:
   Ensure your repository is up to date and pushed to GitHub.

2. **Login to Netlify**:
   - Go to [Netlify](https://www.netlify.com/) and log in using your credentials.

3. **Create a New Site**:
   - On the Netlify dashboard, click on the **"Add new site"** button.
   - Select **"Import an existing project"**.

4. **Connect GitHub Repository**:
   - Authorize Netlify to access your GitHub account.
   - Select the `MyntraClone` repository.

5. **Configure Build Settings**:
   - Since this is a static website, no additional build commands are required. 
   - Ensure the **Publish directory** is set to the root directory (`/`).

6. **Deploy Your Site**:
   - Click **"Deploy site"**.
   - Netlify will begin deploying your project. Once the deployment is complete, you will see a live link to access your site.

7. **Customize the Domain**:
   - You can update the auto-generated domain to a custom domain by going to the **"Domain settings"** in Netlify.

Your project is now live and accessible via the Netlify URL.

---

## Contact

Priyanshu K Sharma - [@Twitter](https://x.com/itspriyanshuks)  
GitHub: [PriyanshuKSharma](https://github.com/PriyanshuKSharma)  

Project Link: https://github.com/PriyanshuKSharma/MyntraClone.git  
AWS Hosting: http://myntraclonebypriyanshu.s3-website.ap-south-1.amazonaws.com/  
Netlify Hosting: https://majestic-faloodeh-224c28.netlify.app/

---

## License

This project is not currently licensed.

---
