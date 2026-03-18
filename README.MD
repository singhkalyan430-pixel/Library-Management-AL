Features

📖 Book Management

👤 Member Management

🔄 Book Issue Tracking

✅ Availability Status Handling

🖥️ List Pages for easy data viewing

🛠️ Tech Stack

AL Language

Microsoft Dynamics 365 Business Central

Visual Studio Code

📁 Project Structure
src/
 ├── Table/
 │    ├── Book.al
 │    ├── Member.al
 │    └── Book Issue.al
 │
 ├── Page/
 │    ├── Book List.al
 │    └── Member List.al
 │
 ├── Report/
 │
app.json
HelloWorld.al
⚙️ Setup Instructions

Install VS Code

Install AL Language Extension

Connect to Business Central Sandbox

Open project folder

Press F5 to build & publish

▶️ How to Use

Open Business Central

Search (Alt + Q):

Book List

Member List

Add:

Books

Members

Create book issue entries

🔄 Workflow

Add Book → Available = TRUE

Add Member

Issue Book → Available = FALSE

Return Book → Available = TRUE

📌 Sample Fields
Book Table

Book ID

Title

Author

Available

Member Table

Member ID

Name

Email

Phone

Issue Table

Issue ID

Book ID

Member ID

Issue Date

Return Date

💡 Future Enhancements

🔁 Return Book Logic

⏰ Late Fee Calculation

📊 RDLC Reports

🔐 User Permissions

🔍 Lookup (TableRelation)

👨‍💻 Author

Zatin Singh (Business Central AL Developer)