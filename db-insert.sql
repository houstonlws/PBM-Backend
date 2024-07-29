USE print_billing_db;

INSERT INTO types (name) VALUES ('USER'),('ADMIN');

INSERT INTO departments (category, name, location, user_id)
VALUES 
    ('Arts and Humanities', 'Art and Design', 'Building A', 1),
    ('Arts and Humanities', 'English Literature', 'Building A', 1),
    ('Arts and Humanities', 'History', 'Building A', 1),
    ('Arts and Humanities', 'Music', 'Building A', 1),
    ('Arts and Humanities', 'Philosophy', 'Building A', 1),
    ('Arts and Humanities', 'Theater and Dance', 'Building A', 1),
    ('Arts and Humanities', 'Religious Studies', 'Building A', 1),
    ('Arts and Humanities', 'Languages and Linguistics', 'Building A', 1),
    ('Sciences', 'Biology', 'Building B', 2),
    ('Sciences', 'Chemistry', 'Building B', 2),
    ('Sciences', 'Physics', 'Building B', 2),
    ('Sciences', 'Environmental Science', 'Building B', 2),
    ('Sciences', 'Geology', 'Building B', 2),
    ('Sciences', 'Astronomy', 'Building B', 2),
    ('Sciences', 'Mathematics and Statistics', 'Building B', 2),
    ('Social Sciences', 'Anthropology', 'Building C', 3),
    ('Social Sciences', 'Economics', 'Building C', 3),
    ('Social Sciences', 'Political Science', 'Building C', 3),
    ('Social Sciences', 'Psychology', 'Building C', 3),
    ('Social Sciences', 'Sociology', 'Building C', 3),
    ('Social Sciences', 'Geography', 'Building C', 3),
    ('Social Sciences', 'International Relations', 'Building C', 3),
    ('Business', 'Accounting', 'Building D', 4),
    ('Business', 'Finance', 'Building D', 4),
    ('Business', 'Management', 'Building D', 4),
    ('Business', 'Marketing', 'Building D', 4),
    ('Business', 'Business Administration', 'Building D', 4),
    ('Business', 'Entrepreneurship', 'Building D', 4),
    ('Engineering and Technology', 'Mechanical Engineering', 'Building E', 5),
    ('Engineering and Technology', 'Electrical Engineering', 'Building E', 5),
    ('Engineering and Technology', 'Civil Engineering', 'Building E', 5),
    ('Engineering and Technology', 'Computer Science', 'Building E', 5),
    ('Engineering and Technology', 'Information Technology', 'Building E', 5),
    ('Engineering and Technology', 'Software Engineering', 'Building E', 5),
    ('Health and Medicine', 'Nursing', 'Building F', 6),
    ('Health and Medicine', 'Public Health', 'Building F', 6),
    ('Health and Medicine', 'Kinesiology', 'Building F', 6),
    ('Health and Medicine', 'Nutrition and Dietetics', 'Building F', 6),
    ('Health and Medicine', 'Pharmacy', 'Building F', 6),
    ('Health and Medicine', 'Biomedical Sciences', 'Building F', 6),
    ('Education', 'Elementary Education', 'Building G', 7),
    ('Education', 'Secondary Education', 'Building G', 7),
    ('Education', 'Special Education', 'Building G', 7),
    ('Education', 'Educational Leadership', 'Building G', 7),
    ('Education', 'Curriculum and Instruction', 'Building G', 7),
    ('Law and Public Policy', 'Law (Pre-Law or Legal Studies)', 'Building H', 8),
    ('Law and Public Policy', 'Criminal Justice', 'Building H', 8),
    ('Law and Public Policy', 'Public Administration', 'Building H', 8),
    ('Law and Public Policy', 'Social Work', 'Building H', 8),
    ('Law and Public Policy', 'Public Policy', 'Building H', 8),
    ('Communications and Media', 'Journalism', 'Building I', 9),
    ('Communications and Media', 'Public Relations', 'Building I', 9),
    ('Communications and Media', 'Media Studies', 'Building I', 9),
    ('Communications and Media', 'Film and Television Production', 'Building I', 9),
    ('Communications and Media', 'Communications', 'Building I', 9),
    ('Fine Arts', 'Painting', 'Building J', 10),
    ('Fine Arts', 'Sculpture', 'Building J', 10),
    ('Fine Arts', 'Graphic Design', 'Building J', 10),
    ('Fine Arts', 'Photography', 'Building J', 10),
    ('Fine Arts', 'Performing Arts', 'Building J', 10),
    ('Hospitality and Tourism', 'Hospitality Management', 'Building K', 11),
    ('Hospitality and Tourism', 'Tourism Management', 'Building K', 11),
    ('Hospitality and Tourism', 'Event Management', 'Building K', 11),
    ('Agriculture and Natural Resources', 'Agribusiness', 'Building L', 12),
    ('Agriculture and Natural Resources', 'Environmental Science', 'Building L', 12),
    ('Agriculture and Natural Resources', 'Animal Science', 'Building L', 12),
    ('Agriculture and Natural Resources', 'Horticulture', 'Building L', 12),
    ('Agriculture and Natural Resources', 'Forestry', 'Building L', 12),
    ('Architecture and Urban Planning', 'Architecture', 'Building M', 13),
    ('Architecture and Urban Planning', 'Urban Planning', 'Building M', 13),
    ('Architecture and Urban Planning', 'Landscape Architecture', 'Building M', 13),
    ('Interdisciplinary Studies', 'Liberal Studies', 'Building N', 14),
    ('Interdisciplinary Studies', 'Gender Studies', 'Building N', 14),
    ('Interdisciplinary Studies', 'Ethnic Studies', 'Building N', 14),
    ('Interdisciplinary Studies', 'Global Studies', 'Building N', 14);
    
INSERT INTO printers (serial_number, model, brand, location, installation_date, warranty_expiry_date, ip_address, mac_address, firmware_version, department_id)
VALUES 
    ('SN123456', 'HP LaserJet Pro M404dw', 'HP', 'Office 1, Floor 2', '2022-01-15', '2024-01-15', '192.168.1.101', '00:1A:2B:3C:4D:5E', '2023.04.01', 1),
    ('SN789012', 'Brother HL-L2390DW', 'Brother', 'Office 1, Floor 2', '2022-02-10', '2024-02-10', '192.168.1.102', '00:1A:2B:3C:4D:5F', '2023.05.01', 1),
    ('SN345678', 'Canon imageCLASS MF267dw', 'Canon', 'Lab 1, Floor 3', '2022-03-20', '2024-03-20', '192.168.1.103', '00:1A:2B:3C:4D:6E', '2023.06.01', 2),
    ('SN901234', 'Epson EcoTank ET-4760', 'Epson', 'Lab 1, Floor 3', '2022-04-25', '2024-04-25', '192.168.1.104', '00:1A:2B:3C:4D:7F', '2023.07.01', 2),
    ('SN567890', 'Samsung Xpress M2020W', 'Samsung', 'Office 2, Floor 1', '2022-05-15', '2024-05-15', '192.168.1.105', '00:1A:2B:3C:4D:8G', '2023.08.01', 3),
    ('SN234567', 'Lexmark MB2236adw', 'Lexmark', 'Office 2, Floor 1', '2022-06-30', '2024-06-30', '192.168.1.106', '00:1A:2B:3C:4D:9H', '2023.09.01', 3),
    ('SN890123', 'Dell Color Laser Printer 1320c', 'Dell', 'Office 3, Floor 2', '2022-07-10', '2024-07-10', '192.168.1.107', '00:1A:2B:3C:4D:0I', '2023.10.01', 4),
    ('SN456789', 'Ricoh SP C261SFNw', 'Ricoh', 'Office 3, Floor 2', '2022-08-20', '2024-08-20', '192.168.1.108', '00:1A:2B:3C:4D:1J', '2023.11.01', 4),
    ('SN012345', 'Brother MFC-L2750DW', 'Brother', 'Lab 2, Floor 4', '2022-09-05', '2024-09-05', '192.168.1.109', '00:1A:2B:3C:4D:2K', '2023.12.01', 5),
    ('SN678901', 'HP OfficeJet Pro 8025', 'HP', 'Lab 2, Floor 4', '2022-10-15', '2024-10-15', '192.168.1.110', '00:1A:2B:3C:4D:3L', '2024.01.01', 5),
    ('SN234567', 'Canon PIXMA TR8520', 'Canon', 'Clinic 1, Floor 5', '2022-11-20', '2024-11-20', '192.168.1.111', '00:1A:2B:3C:4D:4M', '2024.02.01', 6),
    ('SN890123', 'Xerox Phaser 6510', 'Xerox', 'Clinic 1, Floor 5', '2022-12-30', '2024-12-30', '192.168.1.112', '00:1A:2B:3C:4D:5N', '2024.03.01', 6),
    ('SN123789', 'HP LaserJet Pro M402n', 'HP', 'Office 1, Floor 2', '2023-01-15', '2025-01-15', '192.168.1.113', '00:1A:2B:3C:4D:6O', '2024.04.01', 1),
    ('SN456890', 'Brother HL-L2370DW', 'Brother', 'Office 1, Floor 2', '2023-02-10', '2025-02-10', '192.168.1.114', '00:1A:2B:3C:4D:7P', '2024.05.01', 1),
    ('SN678901', 'Canon imageCLASS D1620', 'Canon', 'Lab 1, Floor 3', '2023-03-20', '2025-03-20', '192.168.1.115', '00:1A:2B:3C:4D:8Q', '2024.06.01', 2),
    ('SN234567', 'Epson WorkForce Pro WF-3720', 'Epson', 'Lab 1, Floor 3', '2023-04-25', '2025-04-25', '192.168.1.116', '00:1A:2B:3C:4D:9R', '2024.07.01', 2),
    ('SN789012', 'Samsung ProXpress M4583FX', 'Samsung', 'Office 2, Floor 1', '2023-05-15', '2025-05-15', '192.168.1.117', '00:1A:2B:3C:4D:0S', '2024.08.01', 3),
    ('SN345678', 'Lexmark MC2535adwe', 'Lexmark', 'Office 2, Floor 1', '2023-06-30', '2025-06-30', '192.168.1.118', '00:1A:2B:3C:4D:1T', '2024.09.01', 3),
    ('SN12345', 'Model X', 'Brand A', 'Building A, Room 101', '2022-01-15', '2023-01-15', '192.168.1.10', '00:14:22:01:23:45', '1.0.0', 1),
	('SN67890', 'Model Y', 'Brand B', 'Building B, Room 202', '2022-02-20', '2023-02-20', '192.168.1.20', '00:14:22:02:34:56', '1.1.0', 2),
	('SN54321', 'Model Z', 'Brand C', 'Building C, Room 303', '2022-03-25', '2023-03-25', '192.168.1.30', '00:14:22:03:45:67', '1.2.0', 3),
	('SN23456', 'Model W', 'Brand D', 'Building D, Room 404', '2022-04-10', '2023-04-10', '192.168.1.40', '00:14:22:04:56:78', '1.3.0', 4),
	('SN78901', 'Model V', 'Brand E', 'Building E, Room 505', '2022-05-15', '2023-05-15', '192.168.1.50', '00:14:22:05:67:89', '1.4.0', 5),
	('SN65432', 'Model U', 'Brand F', 'Building F, Room 606', '2022-06-20', '2023-06-20', '192.168.1.60', '00:14:22:06:78:90', '1.5.0', 6),
	('SN34567', 'Model T', 'Brand G', 'Building G, Room 707', '2022-07-25', '2023-07-25', '192.168.1.70', '00:14:22:07:89:01', '1.6.0', 7),
	('SN89012', 'Model S', 'Brand H', 'Building H, Room 808', '2022-08-30', '2023-08-30', '192.168.1.80', '00:14:22:08:90:12', '1.7.0', 8),
	('SN32109', 'Model R', 'Brand I', 'Building I, Room 909', '2022-09-05', '2023-09-05', '192.168.1.90', '00:14:22:09:01:23', '1.8.0', 9),
	('SN87654', 'Model Q', 'Brand J', 'Building J, Room 1010', '2022-10-10', '2023-10-10', '192.168.1.100', '00:14:22:10:12:34', '1.9.0', 10),
	('SN56789', 'Model P', 'Brand K', 'Building K, Room 1111', '2022-11-15', '2023-11-15', '192.168.1.110', '00:14:22:11:23:45', '2.0.0', 11),
	('SN43210', 'Model O', 'Brand L', 'Building L, Room 1212', '2022-12-20', '2023-12-20', '192.168.1.120', '00:14:22:12:34:56', '2.1.0', 12),
	('SN21098', 'Model N', 'Brand M', 'Building M, Room 1313', '2023-01-25', '2024-01-25', '192.168.1.130', '00:14:22:13:45:67', '2.2.0', 13),
	('SN87632', 'Model M', 'Brand N', 'Building N, Room 1414', '2023-02-01', '2024-02-01', '192.168.1.140', '00:14:22:14:56:78', '2.3.0', 14),
	('SN67854', 'Model L', 'Brand O', 'Building O, Room 1515', '2023-03-10', '2024-03-10', '192.168.1.150', '00:14:22:15:67:89', '2.4.0', 15);
   
INSERT INTO metrics (printer_id, total_pages_printed, monthly_print_volume, total_print_jobs, monthly_print_jobs, 
                     toner_levels, toner_usage_monthly, paper_levels, paper_usage_monthly, 
                     total_color_pages_printed, total_color_pages_last_billing, 
                     total_bw_pages_printed, total_bw_pages_last_billing)
VALUES
	(1, 5000, 1000, 200, 50, '75% cyan, 50% magenta, 80% yellow, 20% black', '1200 pages', '200 sheets', 500, 1500, 200, 350, 100),
	(2, 3000, 800, 150, 40, '60% cyan, 40% magenta, 70% yellow, 30% black', '1000 pages', '150 sheets', 400, 1000, 180, 300, 80),
	(3, 7000, 1500, 300, 60, '80% cyan, 60% magenta, 90% yellow, 10% black', '1500 pages', '250 sheets', 600, 2000, 250, 500, 120),
	(4, 4500, 900, 180, 45, '70% cyan, 55% magenta, 75% yellow, 25% black', '1100 pages', '180 sheets', 450, 1200, 190, 320, 90),
	(5, 5500, 1200, 250, 55, '85% cyan, 65% magenta, 95% yellow, 15% black', '1300 pages', '220 sheets', 550, 1700, 220, 400, 110),
	(6, 4000, 850, 160, 35, '65% cyan, 45% magenta, 65% yellow, 35% black', '900 pages', '160 sheets', 380, 900, 160, 280, 70),
	(7, 6000, 1300, 270, 50, '90% cyan, 70% magenta, 100% yellow, 10% black', '1400 pages', '240 sheets', 600, 1800, 230, 450, 100),
	(8, 4800, 1000, 190, 48, '72% cyan, 52% magenta, 78% yellow, 22% black', '1150 pages', '190 sheets', 480, 1300, 210, 360, 85),
	(9, 5200, 1100, 210, 42, '82% cyan, 58% magenta, 85% yellow, 18% black', '1250 pages', '210 sheets', 520, 1500, 200, 380, 95),
	(10, 6800, 1400, 290, 65, '95% cyan, 75% magenta, 110% yellow, 12% black', '1600 pages', '260 sheets', 700, 2200, 270, 500, 130),
    (11, 3600, 900, 180, 45, '65% cyan, 40% magenta, 75% yellow, 25% black', '1100 pages', '200 sheets', 450, 1000, 190, 320, 90),
	(12, 5000, 1000, 250, 50, '80% cyan, 60% magenta, 90% yellow, 20% black', '1300 pages', '220 sheets', 550, 1500, 220, 400, 110),
	(13, 4200, 850, 160, 40, '60% cyan, 50% magenta, 70% yellow, 30% black', '900 pages', '170 sheets', 380, 1200, 180, 280, 70),
	(14, 6300, 1300, 270, 55, '85% cyan, 70% magenta, 95% yellow, 15% black', '1400 pages', '250 sheets', 600, 1700, 230, 450, 100),
	(15, 4700, 1000, 190, 48, '75% cyan, 55% magenta, 85% yellow, 25% black', '1150 pages', '210 sheets', 480, 1400, 210, 360, 85);
    
INSERT INTO maintenance_requests (printer_id, request_date, maintenance_type, description, status, resolved_date) VALUES
(1, '2022-06-01', 'Routine Check', 'Routine maintenance check and toner replacement', 'Resolved', '2022-06-02'),
(2, '2022-06-15', 'Repair', 'Printer jam and paper feed issue', 'Pending', NULL),
(3, '2022-07-01', 'Firmware Update', 'Update printer firmware to version 1.3.0', 'Resolved', '2022-07-02'),
(4, '2022-07-10', 'Toner Replacement', 'Replace toner cartridges', 'Resolved', '2022-07-11'),
(5, '2022-07-20', 'Paper Jam', 'Clear paper jam in tray 2', 'Resolved', '2022-07-21'),
(6, '2022-08-01', 'Routine Check', 'Routine maintenance check and toner replacement', 'Pending', NULL),
(7, '2022-08-10', 'Repair', 'Fix issue with printer not connecting to network', 'Resolved', '2022-08-11'),
(8, '2022-08-20', 'Firmware Update', 'Update printer firmware to version 1.4.0', 'Resolved', '2022-08-21'),
(9, '2022-09-01', 'Toner Replacement', 'Replace toner cartridges', 'Pending', NULL),
(10, '2022-09-10', 'Paper Jam', 'Clear paper jam in tray 1', 'Resolved', '2022-09-11'),
(11, '2022-09-20', 'Routine Check', 'Routine maintenance check and toner replacement', 'Pending', NULL),
(12, '2022-10-01', 'Repair', 'Fix issue with printer not printing color', 'Resolved', '2022-10-02'),
(13, '2022-10-10', 'Firmware Update', 'Update printer firmware to version 1.5.0', 'Resolved', '2022-10-11'),
(14, '2022-10-20', 'Toner Replacement', 'Replace toner cartridges', 'Pending', NULL),
(15, '2022-11-01', 'Paper Jam', 'Clear paper jam in tray 3', 'Resolved', '2022-11-02');

INSERT INTO notifications (user_id, notification_date, message, is_read) VALUES
(1, '2022-06-01 10:00:00', 'Routine maintenance scheduled for Printer SN12345.', FALSE),
(1, '2022-06-15 14:00:00', 'Repair request submitted for Printer SN67890.', FALSE),
(1, '2022-07-01 09:00:00', 'Firmware update available for Printer SN54321.', TRUE),
(1, '2022-07-10 11:00:00', 'Toner replacement scheduled for Printer SN23456.', FALSE),
(1, '2022-07-20 13:00:00', 'Paper jam reported for Printer SN78901.', TRUE),
(1, '2022-08-01 10:00:00', 'Routine maintenance scheduled for Printer SN65432.', FALSE),
-- (7, '2022-08-10 14:00:00', 'Repair request submitted for Printer SN34567.', TRUE),
-- (8, '2022-08-20 09:00:00', 'Firmware update available for Printer SN89012.', FALSE),
-- (9, '2022-09-01 11:00:00', 'Toner replacement scheduled for Printer SN32109.', TRUE),
-- (10, '2022-09-10 13:00:00', 'Paper jam reported for Printer SN87654.', FALSE),
-- (11, '2022-09-20 10:00:00', 'Routine maintenance scheduled for Printer SN56789.', TRUE),
-- (12, '2022-10-01 14:00:00', 'Repair request submitted for Printer SN43210.', FALSE),
-- (13, '2022-10-10 09:00:00', 'Firmware update available for Printer SN21098.', TRUE),
-- (14, '2022-10-20 11:00:00', 'Toner replacement scheduled for Printer SN87632.', FALSE),
(1, '2022-11-01 13:00:00', 'Paper jam reported for Printer SN67854.', TRUE);

INSERT INTO billing (department_id, billing_cycle_start, billing_cycle_end, total_charges, total_paper, total_color_pages, total_bw_pages, color_pages_charge, bw_pages_charge) VALUES
(1, '2022-05-01', '2022-05-31', 500.00, 500, 300, 200, 0.10, 0.05),
(2, '2022-05-01', '2022-05-31', 300.00, 300, 180, 120, 0.10, 0.05),
(3, '2022-05-01', '2022-05-31', 700.00, 700, 420, 280, 0.10, 0.05),
(4, '2022-06-01', '2022-06-30', 450.00, 450, 270, 180, 0.10, 0.05),
(5, '2022-06-01', '2022-06-30', 550.00, 550, 330, 220, 0.10, 0.05),
(6, '2022-06-01', '2022-06-30', 250.00, 250, 150, 100, 0.10, 0.05),
(7, '2022-07-01', '2022-07-31', 600.00, 600, 360, 240, 0.10, 0.05),
(8, '2022-07-01', '2022-07-31', 480.00, 480, 290, 190, 0.10, 0.05),
(9, '2022-07-01', '2022-07-31', 520.00, 520, 310, 210, 0.10, 0.05),
(10, '2022-08-01', '2022-08-31', 680.00, 680, 410, 270, 0.10, 0.05),
(11, '2022-08-01', '2022-08-31', 360.00, 360, 220, 140, 0.10, 0.05),
(12, '2022-08-01', '2022-08-31', 500.00, 500, 300, 200, 0.10, 0.05),
(13, '2022-09-01', '2022-09-30', 420.00, 420, 250, 170, 0.10, 0.05),
(14, '2022-09-01', '2022-09-30', 630.00, 630, 370, 260, 0.10, 0.05),
(15, '2022-09-01', '2022-09-30', 470.00, 470, 280, 190, 0.10, 0.05),
(1, '2023-01-01', '2023-01-31', 100, 60, 40, 1000, 400, 600),
(1, '2023-02-01', '2023-02-28', 110, 70, 40, 1100, 500, 600),
(1, '2023-03-01', '2023-03-31', 90, 50, 40, 900, 300, 600),
(1, '2023-04-01', '2023-04-30', 120, 80, 40, 1200, 600, 600),
(1, '2023-05-01', '2023-05-31', 105, 65, 40, 1050, 450, 600),
(1, '2023-06-01', '2023-06-30', 95, 55, 40, 950, 350, 600),
(1, '2023-07-01', '2023-07-31', 130, 90, 40, 1300, 700, 600),
(1, '2023-08-01', '2023-08-31', 125, 85, 40, 1250, 650, 600),
(1, '2023-09-01', '2023-09-30', 100, 60, 40, 1000, 400, 600),
(1, '2023-10-01', '2023-10-31', 110, 70, 40, 1100, 500, 600),
(1, '2023-11-01', '2023-11-30', 115, 75, 40, 1150, 550, 600),
(1, '2023-12-01', '2023-12-31', 90, 50, 40, 900, 300, 600),
(1, '2024-01-01', '2024-01-31', 120, 80, 40, 1200, 600, 600),
(1, '2024-02-01', '2024-02-29', 105, 65, 40, 1050, 450, 600),
(1, '2024-03-01', '2024-03-31', 100, 60, 40, 1000, 400, 600),
(1, '2024-04-01', '2024-04-30', 110, 70, 40, 1100, 500, 600),
(1, '2024-05-01', '2024-05-31', 95, 55, 40, 950, 350, 600),
(1, '2024-06-01', '2024-06-30', 130, 90, 40, 1300, 700, 600);

INSERT INTO billing (department_id, billing_cycle_start, billing_cycle_end, total_charges, total_paper, total_color_pages, total_bw_pages, color_pages_charge, bw_pages_charge) VALUES
(1, '2024-07-01', '2024-07-31', 130, 90, 40, 1300, 700, 600);

INSERT INTO bill_payments (billing_id, payment_date, amount_paid, payment_status) VALUES
(1, '2022-06-10', 500.00, 'Paid'),
(2, '2022-06-12', 300.00, 'Paid'),
(3, '2022-06-15', 700.00, 'Pending'),
(4, '2022-07-10', 450.00, 'Paid'),
(5, '2022-07-12', 550.00, 'Paid'),
(6, '2022-07-15', 250.00, 'Late'),
(7, '2022-08-10', 600.00, 'Paid'),
(8, '2022-08-12', 480.00, 'Paid'),
(9, '2022-08-15', 520.00, 'Pending'),
(10, '2022-09-10', 680.00, 'Paid'),
(11, '2022-09-12', 360.00, 'Paid'),
(12, '2022-09-15', 500.00, 'Late'),
(13, '2022-10-10', 420.00, 'Paid'),
(14, '2022-10-12', 630.00, 'Paid'),
(15, '2022-10-15', 470.00, 'Pending');