# 🏠 SecondHomeLife

**Plan B of your life** - A beautiful Ruby on Rails application for managing and discovering your perfect second home.

![Rails](https://img.shields.io/badge/Rails-8.0.2.1-red.svg)
![Ruby](https://img.shields.io/badge/Ruby-3.3.0-red.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📋 Table of Contents

- [Features](#-features)
- [Screenshots](#-screenshots)
- [Tech Stack](#-tech-stack)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Usage](#-usage)
- [Database Schema](#-database-schema)
- [API Endpoints](#-api-endpoints)
- [Deployment](#-deployment)
- [Contributing](#-contributing)
- [License](#-license)

## ✨ Features

- 🏡 **Home Management**: Add, edit, and delete property listings
- 🔍 **Property Search**: Browse homes with detailed information
- 📸 **Image Gallery**: Beautiful property photos with fallback placeholders
- 📱 **Responsive Design**: Works perfectly on desktop and mobile
- 🎨 **Modern UI**: Clean, Bootstrap-powered interface
- 🏷️ **Detailed Listings**: Price, bedrooms, bathrooms, square footage, and descriptions
- 🚀 **Fast Performance**: Optimized database queries and caching
- 🔧 **Service Architecture**: Modular service layer for business logic

## 📸 Screenshots

### Home Index Page
- Beautiful card-based layout
- Property images with responsive design
- Quick action buttons (View, Edit, Delete)
- Search and filter capabilities

### Property Details
- Comprehensive property information
- High-quality images
- Detailed descriptions and features

## 🛠 Tech Stack

- **Backend**: Ruby on Rails 8.0.2.1
- **Frontend**: HTML5, CSS3, Bootstrap 5
- **Database**: SQLite3 (development), PostgreSQL (production)
- **Ruby Version**: 3.3.0
- **Web Server**: Puma
- **Asset Pipeline**: Importmap
- **Styling**: Bootstrap CSS Framework

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby 3.3.0** (recommended: use [rbenv](https://github.com/rbenv/rbenv))
- **Bundler** gem
- **Git**
- **Node.js** (for asset compilation)

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/secondhomelife.git
   cd secondhomelife
   ```

2. **Install Ruby dependencies**
   ```bash
   bundle install
   ```

3. **Set up the database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit the application**
   Open your browser and go to `http://localhost:3000`

## 💻 Usage

### Adding a New Home

1. Click the "Add New Home" button on the homepage
2. Fill in the property details:
   - Address
   - City, State, ZIP Code
   - Price
   - Bedrooms and Bathrooms
   - Square Footage
   - Description
   - Image URL
3. Click "Create Home" to save

### Managing Homes

- **View Details**: Click "View Details" to see full property information
- **Edit**: Click "Edit" to modify property details
- **Delete**: Click "Delete" to remove a property (with confirmation)

### Sample Data

The application comes with sample data including:
- Luxury homes in California
- Properties in Napa Valley, Silicon Valley, and coastal areas
- High-quality property images
- Detailed descriptions and features

## 🗄 Database Schema

### Homes Table

| Column | Type | Description |
|--------|------|-------------|
| id | integer | Primary key |
| address | string | Property address |
| city | string | City name |
| state | string | State abbreviation |
| zip_code | string | ZIP/postal code |
| price | decimal | Property price |
| bedrooms | integer | Number of bedrooms |
| bathrooms | decimal | Number of bathrooms |
| square_feet | integer | Property size in sq ft |
| description | text | Property description |
| image_url | string | URL to property image |
| created_at | datetime | Record creation timestamp |
| updated_at | datetime | Record update timestamp |

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Homepage with all properties |
| GET | `/homes` | List all homes |
| GET | `/homes/:id` | Show specific home |
| GET | `/homes/new` | New home form |
| POST | `/homes` | Create new home |
| GET | `/homes/:id/edit` | Edit home form |
| PATCH/PUT | `/homes/:id` | Update home |
| DELETE | `/homes/:id` | Delete home |

## 🚀 Deployment

### Free Hosting Options

#### Render (Recommended)
1. Push your code to GitHub
2. Sign up at [render.com](https://render.com)
3. Connect your GitHub repository
4. Choose "Web Service"
5. Add environment variables if needed
6. Deploy!

#### Railway
1. Push your code to GitHub
2. Sign up at [railway.app](https://railway.app)
3. Connect your repository
4. Deploy automatically

#### Fly.io
1. Install Fly CLI
2. Run `fly launch`
3. Follow the setup prompts
4. Deploy with `fly deploy`

### Environment Variables

For production deployment, set these environment variables:

```bash
RAILS_ENV=production
SECRET_KEY_BASE=your_secret_key_here
DATABASE_URL=your_database_url_here
```

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
rails test

# Run specific test file
rails test test/models/home_test.rb

# Run with coverage
rails test --coverage
```

## 📁 Project Structure

```
secondhomelife/
├── app/
│   ├── controllers/          # Application controllers
│   ├── models/              # ActiveRecord models
│   ├── views/               # ERB templates
│   ├── services/            # Business logic services
│   └── assets/              # CSS, JS, images
├── config/                  # Application configuration
├── db/                      # Database files and migrations
├── storage/                 # SQLite database files
├── test/                    # Test files
└── public/                  # Static assets
```

## 🔧 Development

### Adding New Features

1. Create a new branch: `git checkout -b feature/new-feature`
2. Make your changes
3. Add tests for new functionality
4. Run tests: `rails test`
5. Commit changes: `git commit -m "Add new feature"`
6. Push to GitHub: `git push origin feature/new-feature`
7. Create a Pull Request

### Code Style

This project follows Ruby and Rails best practices:
- Use `rubocop` for code linting
- Follow Rails conventions
- Write descriptive commit messages
- Add tests for new features

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Your Name** - *Initial work* - [YourGitHub](https://github.com/yourusername)

## 🙏 Acknowledgments

- Ruby on Rails community for excellent documentation
- Bootstrap team for the beautiful UI framework
- Unsplash for high-quality property images
- All contributors who help improve this project

## 📞 Support

If you have any questions or need help:

- Create an [issue](https://github.com/yourusername/secondhomelife/issues)
- Check the [documentation](https://guides.rubyonrails.org/)
- Join the [Rails community](https://discuss.rubyonrails.org/)

---

**Made with ❤️ using Ruby on Rails**

*Plan B of your life - Find your perfect second home today!*