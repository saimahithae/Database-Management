# Database-Management
Music Player Application
Milestone: PROJECT REPORT
- ETIKALA SAI MAHITHA
Report
Introduction
Introduction Digital innovation has significantly evolved the way we experience music during this
period. The development of music streaming services has totally transformed the music industry by
providing a huge collection of songs at our fingertips. The enormous number of music choices,
meanwhile, can be intimidating. To deal with the issue, our project sets forth to develop an
innovative music streaming and recommendation platform, an online soundscape where users may
discover, appreciate, and personalize their musical experience.
This project aims to build a complete and user-centric experience similar to that of market leaders
like Spotify as a response to the evolving landscape of music discovery. With the help of our
platform, music buffs will be able to explore new songs, revisit old favorites, and connect to a large
community of other listeners across the globe. We aim to reinvent how people interact with music
in the age of technology with an innovative recommendation engine, social features for sharing
playlists, and strong data protection. Welcome to the age of musical exploration and enjoyment,
where each note creates a unique rhythm.
The project is designed to transform the way people engage with music by using data analysis and
visualization. Unlike traditional music platforms, our focus goes beyond merely offering songs. With
features like the ability to like songs, follow favorite artists, and create personalized playlists, we're
shaping a more interactive and user-driven music experience.
Through data analysis, we aim to understand each user's unique music preferences. By allowing
users to express their likes, follow artists they enjoy, and curate playlists that suit their moods, our
platform becomes a personalized soundscape. These features not only enhance individual enjoyment
but also foster a sense of community by connecting music enthusiasts around the world.
In essence, our project brings together the analytical power of data with the social aspects of music
appreciation. Welcome to a platform where your musical journey is not only personalized but also
shared with a global community of like-minded listeners.
Framework
The significance of this theoretical framework lies in its structured representation of entities and
relationships, which mirrors real-world interactions within music streaming platforms. It fosters a
sense of community among users, empowering them to create, personalize, and engage with their
musical journey. The framework's emphasis on user preferences, likes, and interactions enhances
the platform's ability to deliver personalized music experiences. At our music streaming platform's
core, users are the foundation of our platform. Users play a pivotal role in creating playlists, forming
connections with others, and expressing their musical preferences through likes. Each user can create
multiple playlists, establishing a one-to-many relationship. The social network aspect allows users
to follow and be followed by others, resulting in a many-to-many relationship known as "Follows."
Additionally, users can convey their music preferences by liking songs, albums, and artists, resulting
in a one-to-many relationship termed "Liked." Playlists, as user-generated collections of songs, are
inherently linked to their creators, forming a many-to-one relationship ("Created_By"). They also
share a many-to-many relationship with songs, while songs themselves can be liked by multiple
users. Albums represent compilations of songs, creating a one-to-many relationship with songs, and
artists, in turn, can have multiple songs and albums associated with them. Genres serve as a means
to categorize music entities, facilitating exploration and discovery. Genres are interconnected with
songs, albums, and artists through a many-to-many relationship, simplifying music exploration. This
comprehensive framework underpins the intricate web of interactions and relationships within our
music streaming service, offering a multifaceted and interconnected music experience for our users
while making music discovery and sharing more entertaining and sociable.
Conceptual Data Modelling
1. EER Diagram
2. UML Diagram
Mapping Conceptual Model to Relational Model
Entities = Bold Text
Primary Key = Underlined Text
Foreign key = Italic Text
Company(Company ID , Company_Name, Website, Address)
Person( PID, Email ID , Name, Phone_number, Age, Gender, Address)
Developer(Developer ID , PID, Joined_date)
* Foreign key here is the PID referencing Person Entity also Not Null Team(Team_ID,
DeveloperID)
*Foreign key Developer ID referencing Developer Entity. User(ID
, PID)
*Foreign key PID referencing Person Entity , ID also Not Null
Artist(Artist_ID ,Number_of_followers, PID)
*Foreign key PID referencing Person Entity , ID also Not Null
Playlist (ID, UID, Name)
*Foreign key UID referencing USER Entity also Not Null
Songs (ID , Title, Duration, ArtistID)
*Foreign key Artist ID referencing Artist Entity also Not Null
Albums (Album_name, ArtistID)
*Foreign key Artist ID referencing Artist Entity also Not Null
Music Player System (Product_ID , Name, Features)
User Likes Songs (UID,SongID)
*Foreign key UID referencing User Entity also Not Null *Foreign
key Song ID referencing Song Entity also Not Null Songs
In Playlist (SongID, PlaylistID)
*Foreign key Song ID referencing Song Entity also Not Null
*Foreign key Playlist ID referencing Playlist Entity also Not Null
Implementation of Relation Model via MySQL and NoSQL
Schema (Music_player)
There are total of 15 tables in this schema
Album Table: ( PK: AlbumId , columns : Albumid, AlbumName, SongID, Rows : 50) SongID
refers to ID column from SongsTable
ArtistTable: (PK : Artist_ID , COLUMNS : Id, Artist_Id< Followers, PId, Rows : 500) In
ArtistTable PID refers to PID from PersonTable
CompanyTable : (PK : CompanyID , Columns: CompanyID, CompanyName, Email , Address,
PhoneNumber, Website , Rows: 1)
CreatesTable : ( Columns: PlaylistID, UserID, Rows: 500)
In CreatesTable there are 2 foreign keys. PlaylistID refers to PlaylistID from PlaylistTable UserID
refers to UID from UserTable
DeveloperTable: (PK:Developer_ID , Columns: id, Developer_ID, Joined Date, Role, PID ,
Rows:87)
PID refers to PID from personTable
DevelopsTable : (Columns: DeveloperId, MusicPlayerSystemID , Rows:87 )
DeveloperID refers to Developer_ID from DeveloperTable
MusicPlayerSystemID refers to ID from MusicPlayerSystem
LikesTable: ( PK: LikeID,Columns: LikeID, UserID, SongId , Rows: 84)
UserID refers to UID from UserTable
SongID refers to ID from SongsTable
MusicPlayerSystem:(PK: ID , Columns:ID, ProductName, Features , Rows:6 )
MusicPlayerSystem -- ID is foreign key for other tables
PersonTable:(PK:id , Columns: id,PID,Name,Gender,Age,Phone,Addresss, Rows:500 ) PID
is foreign key to other tables
PlaylistTABLE:(Columns:DEVELOPERID,MUSICPLAYERSYSTEMID , Rows:87 )
DeveloperID refers to Developer_ID from DeveloperTable
MusicPlayerSystemID refers to ID from MusicPlayerSystem
ProducesSongs: (Columns: ProducesID,SongID,ArtistID , Rows: 250)
SongID refers to ID from SongsTable
ArtistID refers to Artist_ID from ArtistTable
SongsTable:(PK: ID , Columns: ID, Title, duration,Artist_ID , Rows:250 )
ArtistID refers to Artis_ID from ArtistTable
User:(PK:id , Columns: id,UID,emailiD,PID , Rows:363 )
PID refers to PID from PersonTable
Implementation in NoSQL
1)This query filtered the Album details with the AlbumName "Indie Showcase"
2)This query filters out all the males whose age is between 23 and 35
3)This query gives the song Title and number of likes it got
4)This query combines CreatesTable with PlaylistTable and UserTable
5)This query gives us Name, Gender, Age, Phone, Address of users from age 21 and 35 in
ascending order and groups people of same age
Database Access via Python IDE.
The database is accessed to jupyter notebook by means of mysql connector. Various SQL queries
were executed through cursor.connection() and the corresponding query outputs were converted
into dataframes for further analysis. Libraries like matplotlib and seaborn were used to generate
visualizations to give meaningful insights to the data.
Graph – 1: Top 10 Artists based on number of followers
Graph – 2: Top 5 songs based on number of likes of the song
Graph – 3: User distributionamong music player systems
Graph – 4: User distribution by age range
Conclusion:
In conclusion, our project endeavors to redefine the music streaming experience by merging digital
innovation, user-centric design, and data analysis. The development of our innovative music
streaming and recommendation platform seeks to address the overwhelming choices in the vast
music landscape. This platform is envisioned as an online soundscape where users can not only
discover and appreciate but also personalize their musical journey.
The framework underlying our project emphasizes the significance of user interactions, preferences,
and community-building. By incorporating features like song liking, artist following, and playlist
creation, we aim to provide a more engaging and user-driven music experience. The marriage of
data analysis with the social aspects of music appreciation creates a unique platform where
individual enjoyment is enhanced, and a global community of music enthusiasts is connected.
The conceptual data model, represented through both EER and UML diagrams, provides a structured
overview of entities and relationships within our music streaming service. The mapping of the
conceptual model to the relational model illustrates how data is organized in tables, fostering a clear
understanding of the database structure.
The implementation of the relational model in MySQL and NoSQL (MongoDB) further solidifies
our commitment to providing a robust and scalable platform. The MySQL schema, consisting of 15
tables, demonstrates the intricate relationships between entities. Meanwhile, NoSQL queries
showcase the flexibility and adaptability of our database design.
Database access through Python IDE, specifically Jupyter Notebook, facilitates efficient querying
and analysis. Visualizations generated from the database data, such as top artists, popular songs, user
distribution among music player systems, and age range distribution, offer valuable insights into
user behavior and preferences.
In summary, our project not only aspires to reinvent the music streaming experience but has laid a
comprehensive foundation for a platform where users can truly connect with music on a personal
and communal level. The integration of data analysis, user-centric design, and a robust database
structure positions our project at the forefront of the evolving landscape of music discovery and
enjoyment.
