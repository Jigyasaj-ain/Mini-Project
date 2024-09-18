USE CommunityAds 
CREATE TABLE CommunityMem (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
INSERT INTO CommunityMem (UserID, Name, Email) VALUES 
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com'),
(3, 'Carol White', 'carol@example.com'),
(4, 'David Brown', 'david@example.com'),
(5, 'Eve Black', 'eve@example.com'),
(6, 'Frank Green', 'frank@example.com'),
(7, 'Grace Pink', 'grace@example.com'),
(8, 'Henry Blue', 'henry@example.com'),
(9, 'Ivy Orange', 'ivy@example.com'),
(10, 'Jack Purple', 'jack@example.com'),
(11, 'Kate Yellow', 'kate@example.com'),
(12, 'Leo Grey', 'leo@example.com'),
(13, 'Mia Gold', 'mia@example.com'),
(14, 'Noah Silver', 'noah@example.com'),
(15, 'Olivia Red', 'olivia@example.com');


USE CommunityAds
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
INSERT INTO Admin (AdminID, Name, Email) VALUES 
(1, 'Admin Alice', 'admin.alice@example.com'),
(2, 'Admin Bob', 'admin.bob@example.com'),
(3, 'Admin Carol', 'admin.carol@example.com'),
(4, 'Admin David', 'admin.david@example.com'),
(5, 'Admin Eve', 'admin.eve@example.com'),
(6, 'Admin Frank', 'admin.frank@example.com'),
(7, 'Admin Grace', 'admin.grace@example.com'),
(8, 'Admin Henry', 'admin.henry@example.com'),
(9, 'Admin Ivy', 'admin.ivy@example.com'),
(10, 'Admin Jack', 'admin.jack@example.com'),
(11, 'Admin Kate', 'admin.kate@example.com'),
(12, 'Admin Leo', 'admin.leo@example.com');

USE CommunityAds
CREATE TABLE Ad (
    AdID INT PRIMARY KEY,
    Content TEXT,
    TargetAudience VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    IsActive BOOLEAN
);

INSERT INTO Ad (AdID, Content, TargetAudience, StartDate, EndDate, IsActive) VALUES 

(1, 'Summer Sale: Up to 50% Off on Apparel!', 'General Audience', '2024-09-01', '2024-09-30', TRUE),
(2, 'Sign up now and get 1 month free membership!', 'New Users', '2024-09-15', '2024-10-15', TRUE),
(3, 'Exclusive Deal: Buy 1 Get 1 Free on all accessories', 'Returning Customers', '2024-09-18', '2024-10-05', TRUE),
(4, 'Limited Time: 10% Off on All Electronics!', 'Tech Enthusiasts', '2024-09-10', '2024-09-20', FALSE),
(5, 'Join Our Fitness Challenge and Win Big!', 'Health and Fitness', '2024-09-18', '2024-10-18', TRUE),
(6, 'Winter Clearance: Up to 70% Off!', 'General Audience', '2024-10-01', '2024-10-31', TRUE),
(7, 'Free Trial: Premium Services for 1 Month!', 'New Users', '2024-10-05', '2024-11-05', TRUE),
(8, 'Special Discount: 20% Off on Gadgets', 'Tech Enthusiasts', '2024-09-25', '2024-10-15', TRUE),
(9, 'New Season Collection: Exclusive 15% Off', 'Fashion Lovers', '2024-09-20', '2024-10-20', TRUE),
(10, 'Fitness Gear: Buy 2 Get 1 Free', 'Health and Fitness', '2024-10-01', '2024-11-01', TRUE),
(11, 'Back to School: Save on Stationery', 'Students and Parents', '2024-09-28', '2024-10-15', TRUE),
(12, 'Flash Sale: Up to 80% Off on Select Items', 'Bargain Shoppers', '2024-09-22', '2024-09-30', TRUE),
(13, 'Limited Offer: Free Shipping on All Orders', 'Online Shoppers', '2024-09-19', '2024-09-25', TRUE),
(14, 'Exclusive Member-Only Deal: 25% Off', 'Returning Customers', '2024-09-21', '2024-10-05', TRUE),
(15, 'Holiday Sale: Best Deals of the Year', 'General Audience', '2024-12-01', '2024-12-31', FALSE);



USE CommunityAds
CREATE TABLE Submission (
    SubmissionID INT PRIMARY KEY,
    UserID INT,
    AdID INT,
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES CommunityMem(UserID),
    FOREIGN KEY (AdID) REFERENCES Ads(AdID)
);
INSERT INTO Submission (SubmissionID, UserID, AdID, Status) VALUES 
(1, 1, 1, 'Approved'),
(2, 2, 2, 'Pending'),
(3, 3, 3, 'Rejected'),
(4, 4, 4, 'Pending'),
(5, 5, 5, 'Approved'),
(6, 6, 6, 'Rejected'),
(7, 7, 7, 'Approved'),
(8, 8, 8, 'Pending'),
(9, 9, 9, 'Rejected'),
(10, 10, 10, 'Approved'),
(11, 11, 11, 'Pending'),
(12, 12, 12, 'Approved'),
(13, 13, 13, 'Rejected');

USE CommunityAds

CREATE TABLE MotionSensorInteraction (
    SensorID INT PRIMARY KEY,
    Location VARCHAR(100),
    SensitivityLevel INT,
    LastActivated DATETIME
);

INSERT INTO MotionSensorInteraction (SensorID, Location, SensitivityLevel, LastActivated) VALUES 
(1, 'Entrance Lobby', 3, '2024-09-17 10:15:00'),
(2, 'Main Hall', 4, '2024-09-17 10:45:00'),
(3, 'Near Checkout', 5, '2024-09-18 09:30:00'),
(4, 'Parking Area', 2, '2024-09-18 08:45:00'),
(5, 'Lobby Entrance', 3, '2024-09-18 10:00:00'),
(6, 'North Wing', 4, '2024-09-18 10:15:00'),
(7, 'South Exit', 2, '2024-09-18 10:30:00'),
(8, 'West Corridor', 5, '2024-09-18 10:45:00'),
(9, 'East Wing', 3, '2024-09-18 11:00:00'),
(10, 'Near Food Court', 4, '2024-09-18 11:15:00'),
(11, 'Northwest Entrance', 3, '2024-09-18 11:30:00'),
(12, 'South Parking', 2, '2024-09-18 11:45:00'),
(13, 'Main Lobby', 4, '2024-09-18 12:00:00'),
(14, 'Warehouse Entry', 5, '2024-09-18 12:15:00');

USE CommunityAds
CREATE TABLE AdDisplayLog (
    DisplayID INT PRIMARY KEY,
    SensorID INT,
    AdID INT,
    Timestamp DATETIME,
    FOREIGN KEY (SensorID) REFERENCES MotionSensorInteraction(SensorID),
    FOREIGN KEY (AdID) REFERENCES Ad(AdID)
);
INSERT INTO AdDisplayLog (DisplayID, SensorID, AdID, Timestamp) VALUES 
(1, 1, 1, '2024-09-17 10:16:00'),
(2, 2, 3, '2024-09-17 10:46:00'),
(3, 3, 5, '2024-09-18 09:31:00'),
(4, 4, 2, '2024-09-18 08:46:00'),
(5, 5, 6, '2024-09-18 10:01:00'),
(6, 6, 7, '2024-09-18 10:16:00'),
(7, 7, 8, '2024-09-18 10:31:00'),
(8, 8, 9, '2024-09-18 10:46:00'),
(9, 9, 10, '2024-09-18 11:01:00'),
(10, 10, 11, '2024-09-18 11:16:00'),
(11, 11, 12, '2024-09-18 11:31:00'),
(12, 12, 13, '2024-09-18 11:46:00'),
(13, 13, 14, '2024-09-18 12:01:00'),
(14, 14, 15, '2024-09-18 12:16:00');
