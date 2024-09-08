
---

# Music Player Application

## Project Report

### ETIKALA SAI MAHITHA

---

### Introduction

Digital innovation has significantly evolved the way music is experienced. The development of music streaming services has transformed the industry by providing a vast collection of songs at our fingertips. However, the overwhelming variety of music choices can be daunting.

This project focuses on creating an innovative music streaming and recommendation platform where users can discover, appreciate, and personalize their musical experience. By integrating features like a recommendation engine and social playlist sharing, the goal is to reinvent how users interact with music. It combines music discovery with a sense of community, while maintaining strong data protection alongside personalization.

The platform is designed to provide:
- Liking songs
- Following favorite artists
- Creating personalized playlists

Through data analysis, the platform will understand each user's unique music preferences, offering a more tailored experience while also allowing users to connect and share their musical interests.

---

### Framework

The framework emphasizes user preferences, interactions, and community engagement, transforming the music experience through features like playlist creation, song liking, artist following, and social connections.

Key components include:
- **Users:** Creating playlists, liking songs, and following artists.
- **Playlists:** User-generated song collections.
- **Songs & Artists:** Central to user interaction, forming many-to-many relationships with playlists and likes.
- **Genres:** Categorize songs and artists, simplifying music discovery.

This framework enhances both personal enjoyment and community-building, offering a multifaceted and interactive music experience.

---

### Conceptual Data Modelling

1. **EER Diagram**
2. **UML Diagram**

### Mapping Conceptual Model to Relational Model

- **Entities:** Bold Text
- **Primary Key:** _Underlined Text_
- **Foreign Key:** *Italic Text*

#### Entities

- **Company(Company_ID, Company_Name, Website, Address)**
- **Person(PID, Email ID, Name, Phone_number, Age, Gender, Address)**
- **Developer(Developer_ID, PID, Joined_date)** (*Foreign key: PID referencing Person entity, not null*)
- **Team(Team_ID, Developer_ID)** (*Foreign key: Developer_ID referencing Developer entity*)
- **User(ID, PID)** (*Foreign key: PID referencing Person entity, ID not null*)
- **Artist(Artist_ID, Number_of_followers, PID)** (*Foreign key: PID referencing Person entity*)
- **Playlist(ID, UID, Name)** (*Foreign key: UID referencing User entity*)
- **Songs(ID, Title, Duration, Artist_ID)** (*Foreign key: Artist_ID referencing Artist entity*)
- **Albums(Album_name, Artist_ID)** (*Foreign key: Artist_ID referencing Artist entity*)
- **Music_Player_System(Product_ID, Name, Features)**

---

### Implementation in MySQL and NoSQL

#### Schema (Music_player)

There are a total of 15 tables in the schema. Some key examples include:

- **Album Table**: (PK: Album_ID, Columns: Album_ID, Album_Name, Song_ID)
- **Artist Table**: (PK: Artist_ID, Columns: ID, Artist_ID, Followers, PID)
- **Company Table**: (PK: Company_ID, Columns: Company_ID, Company_Name, Email, Address, PhoneNumber, Website)
- **Songs Table**: (PK: ID, Columns: ID, Title, Duration, Artist_ID)

#### Database Access via Python IDE

The database is accessed through Jupyter Notebook using MySQL connector. Various SQL queries were executed, and the results were converted into dataframes for further analysis. Visualizations were generated using `matplotlib` and `seaborn`.

**Example Graphs:**
- Top 10 Artists based on the number of followers
- Top 5 songs based on the number of likes
- User distribution among music player systems
- User distribution by age range

---

### Conclusion

This project redefines the music streaming experience by merging digital innovation, user-centric design, and data analysis. The platform enables users to discover, appreciate, and personalize their musical journeys while connecting with a global community of music enthusiasts.

Key components:
- **Personalization** through data analysis of user preferences.
- **Community-building** features, such as sharing playlists and following artists.
- **Data-driven insights** from user interactions and preferences.

With a robust database structure (implemented in MySQL and NoSQL) and a user-friendly interface, this platform offers a dynamic and engaging music experience for users worldwide.

