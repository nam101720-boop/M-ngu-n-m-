-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 17, 2026 lúc 04:32 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `BiBotFlip`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `example` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `mastery_level` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_starred` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `folder_id`, `lesson_id`, `term`, `definition`, `example`, `image_url`, `mastery_level`, `created_at`, `is_starred`) VALUES
(1, 5, 4, 'Pleasure', 'Niềm vinh hạnh', 'It is a pleasure to meet you.', NULL, 0, '2026-04-12 11:50:27', 0),
(2, 5, 4, 'Appreciate', 'Cảm kích', 'I really appreciate your help.', NULL, 0, '2026-04-12 11:50:27', 0),
(3, 5, 4, 'Long time no see', 'Lâu rồi không gặp', 'Hey Jack! Long time no see.', NULL, 0, '2026-04-12 11:50:27', 1),
(4, 5, 4, 'Cargo deadweight tonnage', 'Cước chuyên chở hàng hóa', 'The cargo deadweight tonnage is calculated based on the ship capacity.', NULL, 0, '2026-04-16 07:10:20', 1),
(5, 5, 4, 'Certificate of indebtedness', 'Giấy chứng nhận thiếu nợ', 'The bank issued a certificate of indebtedness to the borrower.', NULL, 0, '2026-04-16 07:10:20', 0),
(6, 5, 4, 'Certificate of origin', 'Giấy chứng nhận xuất xứ hàng hóa', 'You must present the certificate of origin to the customs officer.', NULL, 0, '2026-04-16 07:10:20', 0),
(7, 5, 4, 'Customs declaration form', 'Tờ khai hải quan', 'Please fill out the customs declaration form before leaving the airport.', NULL, 0, '2026-04-16 07:10:20', 1),
(8, 5, 4, 'Convertible debenture', 'Trái khoán có thể đổi thành vàng/đô la', 'Investors are interested in the company’s new convertible debenture.', NULL, 0, '2026-04-16 07:10:20', 1),
(9, 5, 4, 'Contractual wages', 'Tiền lương khoán', 'The contractual wages were agreed upon before the project started.', NULL, 0, '2026-04-16 07:10:20', 1),
(10, 5, 4, 'Cargo', 'Hàng hóa, lô hàng', 'The cargo was loaded onto the ship late last night.', NULL, 0, '2026-04-16 07:10:20', 0),
(11, 5, 4, 'Container', 'Thùng đựng hàng', 'The goods are stored in a large metal container.', NULL, 0, '2026-04-16 07:10:20', 0),
(12, 5, 4, 'Customs', 'Thuế nhập khẩu, hải quan', 'It took two hours to clear customs at the border.', NULL, 0, '2026-04-16 07:10:20', 0),
(13, 5, 4, 'Human resources /ˈhjuːmən rɪˈsɔːsɪz/', 'Ngành nhân sự', 'She has a degree in Human Resources.', NULL, 0, '2026-04-16 07:12:08', 0),
(14, 5, 4, 'Personnel /ˌpɜːsəˈnɛl/', 'Nhân sự / Bộ phận nhân sự', 'All personnel must attend the safety training.', NULL, 0, '2026-04-16 07:12:08', 0),
(15, 5, 4, 'Department / Room / Division', 'Bộ phận / Phòng ban', 'I work in the Marketing Department.', NULL, 0, '2026-04-16 07:12:08', 0),
(16, 5, 4, 'Head of the department', 'Trưởng phòng', 'You need to get approval from the head of the department.', NULL, 0, '2026-04-16 07:12:08', 0),
(17, 5, 4, 'Director /dɪˈrɛktə/', 'Giám đốc / Trưởng bộ phận', 'The Director is responsible for the overall strategy.', NULL, 0, '2026-04-16 07:12:08', 0),
(18, 5, 4, 'HR manager', 'Trưởng phòng nhân sự', 'Our HR manager is interviewing new candidates today.', NULL, 0, '2026-04-16 07:12:08', 0),
(19, 5, 4, 'Staff / Employee', 'Nhân viên', 'The company has over 500 full-time employees.', NULL, 0, '2026-04-16 07:12:08', 0),
(20, 5, 4, 'Personnel officer', 'Nhân viên nhân sự', 'The personnel officer handles all employee benefits.', NULL, 0, '2026-04-16 07:12:08', 0),
(21, 5, 4, 'Intern /ˈɪntɜːn/', 'Nhân viên thực tập', 'We have a summer intern from the local university.', NULL, 0, '2026-04-16 07:12:08', 0),
(22, 5, 4, 'Trainee /treɪˈniː/', 'Nhân viên thử việc', 'The trainee is learning how to use the new software.', NULL, 0, '2026-04-16 07:12:08', 0),
(23, 5, 4, 'Executive /ɪgˈzɛkjʊtɪv/', 'Chuyên viên / Điều hành', 'She is a marketing executive at a global firm.', NULL, 0, '2026-04-16 07:12:08', 0),
(24, 5, 4, 'Graduate /ˈgrædjʊət/', 'Sinh viên mới ra trường', 'The company offers a great program for new graduates.', NULL, 0, '2026-04-16 07:12:08', 0),
(25, 5, 4, 'Career employee', 'Nhân viên biên chế', 'He has been a career employee for over twenty years.', NULL, 0, '2026-04-16 07:12:08', 0),
(26, 5, 4, 'Daily worker', 'Công nhân làm theo công nhật', 'They hired daily workers for the warehouse moving.', NULL, 0, '2026-04-16 07:12:08', 0),
(27, 5, 4, 'Contractual employee', 'Nhân viên hợp đồng', 'She is currently a contractual employee for six months.', NULL, 0, '2026-04-16 07:12:08', 0),
(28, 5, 4, 'Self-employed workers', 'Người làm việc tự do', 'Self-employed workers must manage their own taxes.', NULL, 0, '2026-04-16 07:12:08', 0),
(29, 5, 4, 'Former employee', 'Cựu nhân viên', 'The company keeps in touch with many former employees.', NULL, 0, '2026-04-16 07:12:08', 0),
(30, 5, 4, 'Administrator cadre / High-rank cadre', 'Cán bộ quản trị cấp cao', 'The decision was made by the administrator cadre.', NULL, 0, '2026-04-16 07:12:08', 0),
(31, 5, 4, 'Leader /ˈliːdə/', 'Lãnh đạo', 'A good leader inspires their team to achieve more.', NULL, 0, '2026-04-16 07:12:08', 0),
(32, 5, 4, 'Subordinate /səˈbɔːdnɪt/', 'Cấp dưới', 'Managers should treat their subordinates with respect.', NULL, 0, '2026-04-16 07:12:08', 0),
(33, 5, 5, 'Benchmark job /ˈbɛnʧmɑːk ʤɒb/', 'Công việc chuẩn để tính lương', 'A benchmark job is used to anchor the salary scale.', NULL, 0, '2026-04-16 07:19:27', 0),
(34, 5, 5, '100 percent premium payment', 'Trả lương 100%', 'We guarantee a 100 percent premium payment for overtime.', NULL, 0, '2026-04-16 07:19:27', 0),
(35, 5, 5, 'Adjusting pay rates /əˈʤʌstɪŋ peɪ reɪts/', 'Điều chỉnh mức lương', 'The HR team is adjusting pay rates based on market trends.', NULL, 0, '2026-04-16 07:19:27', 0),
(36, 5, 5, 'Group incentive plan', 'Trả lương theo nhóm', 'The group incentive plan encourages teamwork.', NULL, 0, '2026-04-16 07:19:27', 0),
(37, 5, 5, 'Incentive payment /ɪnˈsɛntɪv ˈpeɪmənt/', 'Trả lương kích thích lao động', 'Good performance leads to a higher incentive payment.', NULL, 0, '2026-04-16 07:19:27', 0),
(38, 5, 5, 'Individual incentive payment', 'Trả lương theo cá nhân', 'This commission is an individual incentive payment.', NULL, 0, '2026-04-16 07:19:27', 0),
(39, 5, 5, 'Job pricing /ʤɒb ˈpraɪsɪŋ/', 'Ấn định mức trả lương', 'Job pricing depends on the required skills and experience.', NULL, 0, '2026-04-16 07:19:27', 0),
(40, 5, 5, 'Annual adjustment /ˈænjʊəl əˈʤʌstmənt/', 'Điều chỉnh hàng năm', 'Most employees receive an annual adjustment to their salary.', NULL, 0, '2026-04-16 07:19:27', 0),
(41, 5, 5, 'Payment for time not worked', 'Trả lương thời gian nghỉ', 'Sick leave is a form of payment for time not worked.', NULL, 0, '2026-04-16 07:19:27', 0),
(42, 5, 5, 'Piecework payment /ˈpiːswɜːk ˈpeɪmənt/', 'Trả lương khoán sản phẩm', 'The workers prefer piecework payment for faster income.', NULL, 0, '2026-04-16 07:19:27', 0),
(43, 5, 5, 'Time payment /taɪm ˈpeɪmənt/', 'Trả lương theo thời gian', 'Our salary scale is different. We pay on a weekly basis.', NULL, 0, '2026-04-16 07:19:27', 0),
(44, 5, 5, 'Salary expectations', 'Mong muốn mức lương', 'How much do you expect to be paid?', NULL, 0, '2026-04-16 07:19:27', 0),
(45, 5, 5, 'Bonus payment', 'Tiền thưởng', 'We give bonuses semi-annually (Nửa năm một lần).', NULL, 0, '2026-04-16 07:19:27', 0),
(46, 5, 5, 'Monthly salary', 'Lương hàng tháng', 'What is your present monthly salary?', NULL, 0, '2026-04-16 07:19:27', 0),
(47, 5, 5, 'Salary range', 'Khung lương', 'I am available to a salary that is fair for the position.', NULL, 0, '2026-04-16 07:19:27', 0),
(48, 5, 5, 'Capacity and experience', 'Năng lực và kinh nghiệm', 'You can decide the pay based on my capacity and experience.', NULL, 0, '2026-04-16 07:19:27', 0),
(49, 5, 6, 'Pay leaders', 'Đứng đầu về trả lương cao', 'Tech giants are often considered pay leaders in the industry.', NULL, 0, '2026-04-19 08:24:05', 0),
(50, 5, 6, 'Pay ranges', 'Bậc lương', 'Each position has specific pay ranges based on seniority.', NULL, 0, '2026-04-19 08:24:05', 0),
(51, 5, 6, 'Pay roll / Pay sheet', 'Bảng lương', 'The accountant is updating the monthly pay roll.', NULL, 0, '2026-04-19 08:24:05', 0),
(52, 5, 6, 'Pay scale', 'Thang lương', 'Our company uses a structured pay scale for all departments.', NULL, 0, '2026-04-19 08:24:05', 0),
(53, 5, 6, 'Class A', 'Hạng A', 'This role is classified as Class A with maximum benefits.', NULL, 0, '2026-04-19 08:24:05', 0),
(54, 5, 6, 'Compensation', 'Lương bổng / Đãi ngộ', 'Total compensation includes salary, insurance, and bonuses.', NULL, 0, '2026-04-19 08:24:05', 0),
(55, 5, 6, 'Pay-day', 'Ngày phát lương', 'Everyone looks forward to pay-day on the 30th.', NULL, 0, '2026-04-19 08:24:05', 0),
(56, 5, 6, 'Emerson efficiency bonus', 'Trả lương theo hiệu năng', 'We use the Emerson efficiency bonus to reward top workers.', NULL, 0, '2026-04-19 08:24:05', 0),
(57, 5, 6, 'Entry-level professionals', 'Chuyên viên mức khởi điểm', 'The program is designed for entry-level professionals.', NULL, 0, '2026-04-19 08:24:05', 0),
(58, 5, 6, 'Pay-slip', 'Phiếu lương', 'You can download your pay-slip from the HR portal.', NULL, 0, '2026-04-19 08:24:05', 0),
(59, 5, 6, 'Gain sharing payment', 'Trả lương chia tỷ lệ thưởng', 'Gain sharing payment motivates staff to save costs.', NULL, 0, '2026-04-19 08:24:05', 0),
(60, 5, 6, 'Pension', 'Lương hưu', 'He is enjoying his life after receiving a stable pension.', NULL, 0, '2026-04-19 08:24:05', 0),
(61, 5, 6, 'Gantt task and Bonus', 'Lương cơ bản + Thưởng', 'Gantt task and Bonus system is applied in the factory.', NULL, 0, '2026-04-19 08:24:05', 0),
(62, 5, 6, 'Going rate / Prevailing rate', 'Mức lương hiện hành', 'We offer a salary that matches the going rate of the market.', NULL, 0, '2026-04-19 08:24:05', 0),
(63, 5, 6, 'Equal pay, equal work', 'Lương công bằng theo năng lực', 'We strictly follow the principle: Equal pay, equal work.', NULL, 0, '2026-04-19 08:24:05', 0),
(64, 5, 6, 'Gross salary', 'Lương gộp (chưa trừ thuế)', 'My gross salary is 20 million, but the net is lower.', NULL, 0, '2026-04-19 08:24:05', 0),
(65, 5, 6, 'Salary advances', 'Lương tạm ứng', 'You can request salary advances in case of emergency.', NULL, 0, '2026-04-19 08:24:05', 0),
(66, 5, 6, 'Salary and wages administration', 'Quản trị lương bổng', 'She is an expert in salary and wages administration.', NULL, 0, '2026-04-19 08:24:05', 0),
(67, 5, 6, 'Standard hour plan', 'Trả lương theo giờ ấn định', 'The standard hour plan helps manage project budgets.', NULL, 0, '2026-04-19 08:24:05', 0),
(68, 5, 6, 'Starting salary', 'Lương khởi điểm', 'The starting salary for this position is very competitive.', NULL, 0, '2026-04-19 08:24:05', 0),
(69, 5, 6, 'Stock option', 'Thưởng cổ phần giá hạ', 'Senior managers are often offered a stock option plan.', NULL, 0, '2026-04-19 08:24:05', 0),
(70, 5, 6, 'Take home pay', 'Lương thực tế mang về (sau thuế)', 'Take home pay is what you actually have in your pocket.', NULL, 0, '2026-04-19 08:24:05', 0),
(71, 5, 6, 'Net salary', 'Lương thực nhận', 'Your net salary is calculated after all deductions.', NULL, 0, '2026-04-19 08:24:05', 0),
(72, 5, 6, 'Non-financial compensation', 'Đãi ngộ phi tài chính', 'Flexible working hours are a great non-financial compensation.', NULL, 0, '2026-04-19 08:24:05', 0),
(73, 5, 6, 'Pay followers', 'Hãng có mức lương thấp', 'Small startups are sometimes pay followers compared to big firms.', NULL, 0, '2026-04-19 08:24:05', 0),
(74, 5, 6, 'Pay grades', 'Ngạch / Hạng lương', 'Promotion means you will move to a higher pay grade.', NULL, 0, '2026-04-19 08:24:05', 0),
(75, 5, 6, 'Vacation leave', 'Nghỉ hè (có lương)', 'I am planning to use my vacation leave next month.', NULL, 0, '2026-04-19 08:24:05', 0),
(76, 5, 6, 'Wage', 'Lương công nhật', 'Construction workers are usually paid a daily wage.', NULL, 0, '2026-04-19 08:24:05', 0),
(77, 5, 4, 'dog', 'chó', 'this is the dog', '', 0, '2026-04-19 08:50:59', 0),
(160, 10, 19, 'Employee', 'Nhân viên/ Người làm thuê', 'The company has over 500 employees.', NULL, 0, '2026-04-21 08:04:51', 0),
(161, 10, 19, 'Employer = Boss', 'Ông chủ', 'The employer provides a safe working environment.', NULL, 0, '2026-04-21 08:04:51', 0),
(162, 10, 19, 'Position = Post', 'Vị trí', 'She is applying for a high-level position.', NULL, 0, '2026-04-21 08:04:51', 0),
(163, 10, 19, 'Opening = Vacancy', 'Vị trí còn khuyết', 'There is a job opening in the marketing department.', NULL, 0, '2026-04-21 08:04:51', 0),
(164, 10, 19, 'Apply', 'Xin việc', 'I decided to apply for the job yesterday.', NULL, 0, '2026-04-21 08:04:51', 0),
(165, 10, 19, 'terms of employment', 'điều kiện lao động', 'Read the terms of employment before signing.', NULL, 0, '2026-04-21 08:04:51', 0),
(166, 10, 19, 'permanent staff members', 'nhân viên thường trực', 'He is one of our permanent staff members.', NULL, 0, '2026-04-21 08:04:51', 0),
(167, 10, 19, 'Experienced', 'Có kinh nghiệm', 'We need an experienced PHP developer.', NULL, 0, '2026-04-21 08:04:51', 0),
(168, 10, 19, 'Benefit', 'Lợi ích; Phúc lợi', 'Health insurance is a great benefit.', NULL, 0, '2026-04-21 08:04:51', 0),
(169, 10, 19, 'board of directors', 'ban giám đốc', 'The board of directors met to discuss the budget.', NULL, 0, '2026-04-21 08:04:51', 0),
(170, 10, 19, 'Paperwork', 'Công việc giấy tờ', 'I spent all morning doing paperwork.', NULL, 0, '2026-04-21 08:04:51', 0),
(171, 10, 19, 'Customer files', 'Hồ sơ khách hàng', 'Please update the customer files in the system.', NULL, 0, '2026-04-21 08:04:51', 0),
(172, 10, 19, 'Colleague = Co-worker', 'Đồng nghiệp', 'I usually have lunch with my colleagues.', NULL, 0, '2026-04-21 08:04:51', 0),
(173, 10, 19, 'Memo = Memorandum', 'Thông báo nội bộ', 'The manager sent a memo about the meeting.', NULL, 0, '2026-04-21 08:04:51', 0),
(174, 10, 19, 'Workstation', 'Vị trí làm việc', 'Every employee has their own workstation.', NULL, 0, '2026-04-21 08:04:51', 0),
(175, 10, 19, 'paychecks', 'tiền lương', 'We receive our paychecks every Friday.', NULL, 0, '2026-04-21 08:04:51', 0),
(176, 10, 19, 'increasing sales figures', 'tăng doanh số bán hàng', 'The team is focusing on increasing sales figures.', NULL, 0, '2026-04-21 08:04:51', 0),
(177, 10, 19, 'gather', 'tụ họp', 'The staff gathered in the hall for the announcement.', NULL, 0, '2026-04-21 08:04:51', 0),
(178, 10, 19, 'lunch break', 'nghỉ trưa', 'What time is your lunch break?', NULL, 0, '2026-04-21 08:04:51', 0),
(179, 10, 19, 'business issues', 'vấn đề kinh doanh', 'The CEO addressed several business issues.', NULL, 0, '2026-04-21 08:04:51', 0),
(180, 10, 19, 'Sales representative', 'Đại diện bán hàng', 'Our sales representative will contact you soon.', NULL, 0, '2026-04-21 08:04:51', 0),
(181, 10, 19, 'Management', 'Ban quản lý', 'Management is looking for ways to cut costs.', NULL, 0, '2026-04-21 08:04:51', 0),
(182, 10, 19, 'policy', 'chính sách', 'It is company policy to wear a tie.', NULL, 0, '2026-04-21 08:04:51', 0),
(183, 10, 19, 'negotiation skills', 'kỹ năng thương lượng', 'You need good negotiation skills in this job.', NULL, 0, '2026-04-21 08:04:51', 0),
(184, 10, 19, 'Board meeting', 'Cuộc họp ban giám đốc', 'The results were presented at the board meeting.', NULL, 0, '2026-04-21 08:04:51', 0),
(185, 10, 19, 'Conference', 'Hội thảo', 'She is attending an IT conference in Hanoi.', NULL, 0, '2026-04-21 08:04:51', 0),
(186, 10, 19, 'Agenda', 'Chương trình nghị sự', 'What is the next item on the agenda?', NULL, 0, '2026-04-21 08:04:51', 0),
(187, 10, 19, 'The minutes', 'Biên bản cuộc họp', 'Who is taking the minutes today?', NULL, 0, '2026-04-21 08:04:51', 0),
(188, 10, 19, 'attract foreign investment', 'thu hút đầu tư nước ngoài', 'Vietnam is trying to attract foreign investment.', NULL, 0, '2026-04-21 08:04:51', 0),
(189, 10, 19, 'starting capital', 'vốn ban đầu', 'They need more starting capital for their startup.', NULL, 0, '2026-04-21 08:04:51', 0),
(190, 10, 20, 'to be all the same to', 'Đều như nhau với', 'It is all the same to me where we go.', NULL, 0, '2026-04-21 08:04:51', 0),
(191, 10, 20, 'to be all the world to Sb', 'Là cả thế giới với ai', 'His daughter is all the world to him.', NULL, 0, '2026-04-21 08:04:51', 0),
(192, 10, 20, 'to be on the move', 'Đang di chuyển', 'Modern people are always on the move.', NULL, 0, '2026-04-21 08:04:51', 0),
(193, 10, 20, 'to be ambitious to do sth', 'Khao khát làm gì', 'He is ambitious to become a CEO.', NULL, 0, '2026-04-21 08:04:51', 0),
(194, 10, 20, 'to be anxious for sth', 'Lo lắng về cái gì', 'They are anxious for their son\'s safety.', NULL, 0, '2026-04-21 08:04:51', 0),
(195, 10, 20, 'to be as hungry as a wolf', 'Rất đói', 'After the hike, I was as hungry as a wolf.', NULL, 0, '2026-04-21 08:04:51', 0),
(196, 10, 20, 'to be as mute as a fish', 'Câm như hến', 'He stayed as mute as a fish during the trial.', NULL, 0, '2026-04-21 08:04:51', 0),
(197, 10, 20, 'to be at feud with sb', 'Đối địch với', 'The two families have been at feud for years.', NULL, 0, '2026-04-21 08:04:51', 0),
(198, 10, 20, 'to be at puberty', 'Đang tuổi dậy thì', 'Children at puberty undergo many changes.', NULL, 0, '2026-04-21 08:04:51', 0),
(199, 10, 20, 'to be attached to', 'Yêu thích/Gắn bó', 'She is very attached to her old car.', NULL, 0, '2026-04-21 08:04:51', 0),
(200, 10, 20, 'to be aware of sth', 'Có nhận thức về', 'Are you aware of the risks involved?', NULL, 0, '2026-04-21 08:04:51', 0),
(201, 10, 20, 'to be badly off', 'Nghèo xơ xác', 'They were so badly off they couldn\'t buy bread.', NULL, 0, '2026-04-21 08:04:51', 0),
(202, 10, 20, 'to be beaten out and out', 'Bị đánh bại hoàn toàn', 'The home team was beaten out and out.', NULL, 0, '2026-04-21 08:04:51', 0),
(203, 10, 20, 'to be behind prison bars', 'Ngồi tù', 'He spent ten years behind prison bars.', NULL, 0, '2026-04-21 08:04:51', 0),
(204, 10, 20, 'to be beholden to sb', 'Mang ơn người nào', 'I don\'t want to be beholden to anyone.', NULL, 0, '2026-04-21 08:04:51', 0),
(205, 10, 20, 'to be bent on', 'Quyết tâm', 'She is bent on winning the competition.', NULL, 0, '2026-04-21 08:04:51', 0),
(206, 10, 20, 'to be better off', 'Tốt hơn/Khá hơn', 'You would be better off staying at home.', NULL, 0, '2026-04-21 08:04:51', 0),
(207, 10, 20, 'to be bitten with', 'Ham mê điều gì', 'He is bitten with the idea of traveling.', NULL, 0, '2026-04-21 08:04:51', 0),
(208, 10, 20, 'to be blackmailed', 'Bị tống tiền', 'The politician was being blackmailed.', NULL, 0, '2026-04-21 08:04:51', 0),
(209, 10, 20, 'to be bored to death', 'Chán đến chết', 'I was bored to death by his long speech.', NULL, 0, '2026-04-21 08:04:51', 0),
(210, 10, 20, 'to be bumptious', 'Cao ngạo', 'Nobody likes him because he is so bumptious.', NULL, 0, '2026-04-21 08:04:51', 0),
(211, 10, 20, 'to be brilliant at', 'Xuất sắc về', 'My brother is brilliant at mathematics.', NULL, 0, '2026-04-21 08:04:51', 0),
(212, 10, 20, 'to be bunged up', 'Bị nghẹt mũi', 'My nose is all bunged up with a cold.', NULL, 0, '2026-04-21 08:04:51', 0),
(213, 10, 20, 'to be buried in thought', 'Đắm chìm trong suy nghĩ', 'She sat by the window, buried in thought.', NULL, 0, '2026-04-21 08:04:51', 0),
(214, 10, 20, 'to be called up', 'Bị gọi nhập ngũ', 'He was called up when the war started.', NULL, 0, '2026-04-21 08:04:51', 0),
(215, 10, 20, 'to be cast away', 'Bị đắm tàu', 'They were cast away on a desert island.', NULL, 0, '2026-04-21 08:04:51', 0),
(216, 10, 20, 'to be cast down', 'Chán nản', 'She was cast down by the bad news.', NULL, 0, '2026-04-21 08:04:51', 0),
(217, 10, 20, 'to be censored', 'Bị kiểm duyệt', 'The film was heavily censored.', NULL, 0, '2026-04-21 08:04:51', 0),
(218, 10, 20, 'to be cognizant of sth', 'Biết rõ về cái gì', 'We are cognizant of the current situation.', NULL, 0, '2026-04-21 08:04:51', 0),
(219, 10, 20, 'to be concerned about sb', 'Lo ngại cho ai', 'I am concerned about your health.', NULL, 0, '2026-04-21 08:04:51', 0),
(220, 10, 20, 'to be confident of the future', 'Tự tin về tương lai', 'We are confident of the future success.', NULL, 0, '2026-04-21 08:04:51', 0),
(221, 10, 20, 'to be connected to sb', 'Có liên hệ với ai', 'Is he connected to the government?', NULL, 0, '2026-04-21 08:04:51', 0),
(222, 10, 20, 'to be crowned with glory', 'Hưởng vinh quang', 'His career was crowned with glory.', NULL, 0, '2026-04-21 08:04:51', 0),
(223, 10, 20, 'to be deeply in debt', 'Nợ chồng chất', 'The company is deeply in debt.', NULL, 0, '2026-04-21 08:04:51', 0),
(224, 10, 20, 'to be defective in sth', 'Thiếu vật gì', 'The product was defective in its design.', NULL, 0, '2026-04-21 08:04:51', 0),
(225, 10, 20, 'to be dependent on sb', 'Phụ thuộc vào ai', 'She is still dependent on her parents.', NULL, 0, '2026-04-21 08:04:51', 0),
(226, 10, 20, 'to be deranged', 'Loạn trí', 'The man was mentally deranged.', NULL, 0, '2026-04-21 08:04:51', 0),
(227, 10, 20, 'to be derived from', 'Bắt nguồn từ', 'Many English words are derived from Latin.', NULL, 0, '2026-04-21 08:04:51', 0),
(228, 10, 20, 'to be destined for a palace', 'Sắp đi tới đâu', 'The ship was destined for London.', NULL, 0, '2026-04-21 08:04:51', 0),
(229, 10, 20, 'to be different from', 'Khác với', 'Life here is different from what I expected.', NULL, 0, '2026-04-21 08:04:51', 0),
(230, 10, 20, 'to be disabled', 'Bị tàn tật', 'The accident left him permanently disabled.', NULL, 0, '2026-04-21 08:04:51', 0),
(231, 10, 20, 'to be disappointed in love', 'Bị thất tình', 'He was disappointed in love and never married.', NULL, 0, '2026-04-21 08:04:51', 0),
(232, 10, 20, 'to be disinclined to', 'Không thích', 'I am disinclined to accept his offer.', NULL, 0, '2026-04-21 08:04:51', 0),
(233, 10, 20, 'to be displaced by', 'Thay thế bởi', 'Traditional jobs are being displaced by AI.', NULL, 0, '2026-04-21 08:04:51', 0),
(234, 10, 20, 'to be disrespectful to sb', 'Vô lễ với ai', 'Never be disrespectful to your teachers.', NULL, 0, '2026-04-21 08:04:51', 0),
(235, 10, 20, 'to be dissatisfied with sth', 'Không hài lòng', 'The customers were dissatisfied with the service.', NULL, 0, '2026-04-21 08:04:51', 0),
(236, 10, 20, 'to be double the length of sth', 'Dài gấp đôi cái gì', 'This rope is double the length of that one.', NULL, 0, '2026-04-21 08:04:51', 0),
(237, 10, 20, 'to be doubtful of sth', 'Nghi ngờ cái gì', 'I am doubtful of his ability to finish.', NULL, 0, '2026-04-21 08:04:51', 0),
(238, 10, 20, 'to be down in the mouth', 'Bị thất vọng/ủ rũ', 'He looks a bit down in the mouth today.', NULL, 0, '2026-04-21 08:04:51', 0),
(239, 10, 20, 'to be down in health', 'Ốm yếu', 'He has been down in health lately.', NULL, 0, '2026-04-21 08:04:51', 0),
(240, 10, 20, 'to be driven ashore', 'Trôi dạt vào bờ', 'The boat was driven ashore by the storm.', NULL, 0, '2026-04-21 08:04:51', 0),
(241, 10, 20, 'to be drowned', 'Bị chết đuối', 'Two people were drowned in the flood.', NULL, 0, '2026-04-21 08:04:51', 0),
(242, 10, 21, 'Purchase', 'Mua hàng', 'The purchase of the new car cost a lot.', NULL, 0, '2026-04-21 08:04:51', 0),
(243, 10, 21, 'Sale', 'Sự bán hàng/Giảm giá', 'The winter sale starts tomorrow.', NULL, 0, '2026-04-21 08:04:51', 0),
(244, 10, 21, 'Coupon', 'Phiếu giảm giá', 'Use this coupon to get 20% off.', NULL, 0, '2026-04-21 08:04:51', 0),
(245, 10, 21, 'Discount', 'Giảm giá', 'We offer a discount for students.', NULL, 0, '2026-04-21 08:04:51', 0),
(246, 10, 21, 'Affordable', 'Vừa túi tiền', 'This brand is very affordable.', NULL, 0, '2026-04-21 08:04:51', 0),
(247, 10, 21, 'expiration date', 'ngày hết hạn', 'Check the expiration date on the milk.', NULL, 0, '2026-04-21 08:04:51', 0),
(248, 10, 21, 'clear origins', 'nguồn gốc rõ ràng', 'This food has clear origins.', NULL, 0, '2026-04-21 08:04:51', 0),
(249, 10, 21, 'clothes shop', 'cửa hàng quần áo', 'She works in a small clothes shop.', NULL, 0, '2026-04-21 08:04:51', 0),
(250, 10, 21, 'goods', 'hàng hóa', 'The truck was carrying electrical goods.', NULL, 0, '2026-04-21 08:04:51', 0),
(251, 10, 21, 'Broke', 'Hết tiền', 'I am broke until my next paycheck.', NULL, 0, '2026-04-21 08:04:51', 0),
(252, 10, 21, 'Buffet', 'Tiệc đứng', 'We had a buffet lunch at the hotel.', NULL, 0, '2026-04-21 08:04:51', 0),
(253, 10, 21, 'Cafeteria', 'Quán tự phục vụ', 'Students usually eat in the cafeteria.', NULL, 0, '2026-04-21 08:04:51', 0),
(254, 10, 21, 'Customer = Patron', 'Khách hàng', 'Regular patrons get a discount.', NULL, 0, '2026-04-21 08:04:51', 0),
(255, 10, 21, 'Delivery', 'Giao hàng', 'The delivery is scheduled for tomorrow.', NULL, 0, '2026-04-21 08:04:51', 0),
(256, 10, 21, 'Reservation', 'Sự đặt trước', 'I have a reservation for tonight.', NULL, 0, '2026-04-21 08:04:51', 0),
(257, 10, 21, 'dine out', 'ăn tối ngoài', 'We usually dine out on weekends.', NULL, 0, '2026-04-21 08:04:51', 0),
(258, 10, 21, 'luxurious restaurant', 'nhà hàng sang trọng', 'He took her to a luxurious restaurant.', NULL, 0, '2026-04-21 08:04:51', 0),
(259, 10, 21, 'Appetizer = Starter', 'Món khai vị', 'We ordered soup as an appetizer.', NULL, 0, '2026-04-21 08:04:51', 0),
(260, 10, 21, 'Main dish = Main course', 'Món chính', 'Steak is the main course today.', NULL, 0, '2026-04-21 08:04:51', 0),
(261, 10, 21, 'Specialty', 'Đặc sản', 'Pho is a specialty of Vietnam.', NULL, 0, '2026-04-21 08:04:51', 0),
(262, 10, 21, 'Entertainment', 'Sự giải trí', 'The city offers various forms of entertainment.', NULL, 0, '2026-04-21 08:04:51', 0),
(263, 10, 21, 'Audience', 'Khán giả', 'The audience cheered for the band.', NULL, 0, '2026-04-21 08:04:51', 0),
(264, 10, 21, 'Spectator', 'Khán giả xem sự kiện', 'Thousands of spectators attended the match.', NULL, 0, '2026-04-21 08:04:51', 0),
(265, 10, 21, 'Exhibition', 'Cuộc triển lãm', 'I went to an art exhibition.', NULL, 0, '2026-04-21 08:04:51', 0),
(266, 10, 21, 'Periodical', 'Tạp chí định kỳ', 'The library subscribes to many periodicals.', NULL, 0, '2026-04-21 08:04:51', 0),
(267, 10, 21, 'Mediums for entertainment', 'phương tiện giải trí', 'TV is one of the popular mediums.', NULL, 0, '2026-04-21 08:04:51', 0),
(268, 10, 21, 'Band', 'ban nhạc', 'The rock band is playing tonight.', NULL, 0, '2026-04-21 08:04:51', 0),
(269, 10, 21, 'Theater', 'rạp hát', 'Let\'s go to the theater to see a play.', NULL, 0, '2026-04-21 08:04:51', 0),
(270, 10, 21, 'Critics', 'nhà phê bình', 'The film received good reviews from critics.', NULL, 0, '2026-04-21 08:04:51', 0),
(271, 10, 21, 'Symphony orchestra', 'dàn nhạc giao hưởng', 'He plays violin in the symphony orchestra.', NULL, 0, '2026-04-21 08:04:51', 0),
(272, 10, 21, 'Detached house', 'Nhà tách biệt', 'They live in a large detached house.', NULL, 0, '2026-04-21 08:04:51', 0),
(273, 10, 21, 'Semi-detached house', 'Nhà liền vách', 'A semi-detached house is cheaper.', NULL, 0, '2026-04-21 08:04:51', 0),
(274, 10, 21, 'Bungalow', 'Nhà 1 tầng', 'My grandparents live in a bungalow.', NULL, 0, '2026-04-21 08:04:51', 0),
(275, 10, 21, 'Condominium', 'Khu chung cư', 'She bought a condominium downtown.', NULL, 0, '2026-04-21 08:04:51', 0),
(276, 10, 21, 'Slum', 'Khu nhà ổ chuột', 'Many people live in the city slums.', NULL, 0, '2026-04-21 08:04:51', 0),
(277, 10, 21, 'save space', 'tiết kiệm không gian', 'Folding chairs are great to save space.', NULL, 0, '2026-04-21 08:04:51', 0),
(278, 10, 21, 'illegal', 'bất hợp pháp', 'Selling drugs is illegal.', NULL, 0, '2026-04-21 08:04:51', 0),
(279, 10, 21, 'Realtor', 'Người môi giới nhà đất', 'The realtor showed us three houses.', NULL, 0, '2026-04-21 08:04:51', 0),
(280, 10, 21, 'Appraise', 'Định giá', 'The jewelry was appraised at $1,000.', NULL, 0, '2026-04-21 08:04:51', 0),
(281, 10, 21, 'Deposit', 'Đặt cọc', 'We had to pay a one-month deposit.', NULL, 0, '2026-04-21 08:04:51', 0),
(282, 7, 22, 'carbon dioxide ≈ greenhouse gases', 'Khí thải nhà kính (CO2)', 'The factory produces a large amount of carbon dioxide.', NULL, 0, '2026-04-21 08:10:08', 0),
(283, 7, 22, 'the greenhouse effect', 'Hiệu ứng nhà kính', 'The greenhouse effect is causing the Earth to warm up.', NULL, 0, '2026-04-21 08:10:08', 0),
(284, 7, 22, 'average global temperatures', 'Nhiệt độ trung bình toàn cầu', 'Average global temperatures have risen significantly.', NULL, 0, '2026-04-21 08:10:08', 0),
(285, 7, 22, 'human activity', 'Hoạt động của con người', 'Climate change is largely caused by human activity.', NULL, 0, '2026-04-21 08:10:08', 0),
(286, 7, 22, 'deforestation ≈ forest clearance', 'Sự phá rừng', 'Deforestation leads to the loss of wildlife habitats.', NULL, 0, '2026-04-21 08:10:08', 0),
(287, 7, 22, 'illegal logging', 'Chặt cây trái pháp luật', 'Illegal logging is a major problem in many tropical forests.', NULL, 0, '2026-04-21 08:10:08', 0),
(288, 7, 22, 'release emissions into...', 'Thải khí thải ra...', 'Factories release harmful emissions into the atmosphere.', NULL, 0, '2026-04-21 08:10:08', 0),
(289, 7, 22, 'the burning of fossil fuels', 'Việc đốt nhiên liệu hóa thạch', 'The burning of fossil fuels is the main source of CO2.', NULL, 0, '2026-04-21 08:10:08', 0),
(290, 7, 22, 'ozone layer depletion', 'Sự phá hủy tầng ô-zôn', 'Ozone layer depletion increases the risk of skin cancer.', NULL, 0, '2026-04-21 08:10:08', 0),
(291, 7, 22, 'melting of the polar ice caps', 'Việc tan chảy các tảng băng ở cực', 'The melting of the polar ice caps causes sea levels to rise.', NULL, 0, '2026-04-21 08:10:08', 0),
(292, 7, 22, 'sea levels', 'Mực nước biển', 'Rising sea levels threaten many coastal cities.', NULL, 0, '2026-04-21 08:10:08', 0),
(293, 7, 22, 'extreme weather conditions', 'Điều kiện thời tiết khắc nghiệt', 'We are experiencing more extreme weather conditions lately.', NULL, 0, '2026-04-21 08:10:08', 0),
(294, 7, 22, 'put heavy pressure on...', 'Đặt áp lực nặng nề lên...', 'Overpopulation puts heavy pressure on natural resources.', NULL, 0, '2026-04-21 08:10:08', 0),
(295, 7, 22, 'wildlife habitats', 'Môi trường sống của động vật hoang dã', 'Many wildlife habitats are being destroyed by humans.', NULL, 0, '2026-04-21 08:10:08', 0),
(296, 7, 22, 'the extinction of species', 'Sự tuyệt chủng của các loài', 'Pollution leads to the extinction of many species.', NULL, 0, '2026-04-21 08:10:08', 0),
(297, 7, 22, 'people’s health', 'Sức khỏe của con người', 'Air pollution has a negative impact on people’s health.', NULL, 0, '2026-04-21 08:10:08', 0),
(298, 7, 22, 'introduce laws to...', 'Ban hành luật để...', 'The government should introduce laws to limit emissions.', NULL, 0, '2026-04-21 08:10:08', 0),
(299, 7, 22, 'renewable energy', 'Năng lượng tái tạo', 'Solar and wind are popular sources of renewable energy.', NULL, 0, '2026-04-21 08:10:08', 0),
(300, 7, 22, 'raise public awareness', 'Nâng cao ý thức cộng đồng', 'We need to raise public awareness about environment.', NULL, 0, '2026-04-21 08:10:08', 0),
(301, 7, 22, 'promote public campaigns', 'Đẩy mạnh các chiến dịch cộng đồng', 'Schools promote public campaigns to collect plastic waste.', NULL, 0, '2026-04-21 08:10:08', 0),
(302, 7, 22, 'posing a serious threat to', 'Gây ra sự đe dọa đối với', 'Climate change is posing a serious threat to our planet.', NULL, 0, '2026-04-21 08:10:08', 0),
(303, 7, 22, 'power plants', 'Các trạm/nhà máy năng lượng', 'Many power plants still rely on coal to produce electricity.', NULL, 0, '2026-04-21 08:10:08', 0),
(304, 7, 22, 'absorb', 'Hấp thụ', 'Trees absorb carbon dioxide and release oxygen.', NULL, 0, '2026-04-21 08:10:08', 0),
(305, 7, 22, 'global warming', 'Nóng lên toàn cầu', 'Global warming is a major challenge for the 21st century.', NULL, 0, '2026-04-21 08:10:08', 0),
(306, 7, 23, 'excessive consumption of...', 'Việc tiêu thụ quá mức...', 'Excessive consumption of sugar can lead to health problems.', NULL, 0, '2026-04-21 08:11:41', 0),
(307, 7, 23, 'sedentary lifestyles', 'Lối sống thụ động', 'Technology has encouraged more sedentary lifestyles.', NULL, 0, '2026-04-21 08:11:41', 0),
(308, 7, 23, 'fast food / junk food', 'Thức ăn nhanh / Đồ ăn vặt', 'Children should avoid eating too much junk food.', NULL, 0, '2026-04-21 08:11:41', 0),
(309, 7, 23, 'have a balanced diet', 'Có chế độ ăn cân bằng', 'It is important to have a balanced diet for good health.', NULL, 0, '2026-04-21 08:11:41', 0),
(310, 7, 23, 'have an unhealthy diet', 'Có chế độ ăn không lành mạnh', 'Many people have an unhealthy diet due to busy work.', NULL, 0, '2026-04-21 08:11:41', 0),
(311, 7, 23, 'participate in / engage in', 'Tham gia vào', 'Students are encouraged to participate in sports.', NULL, 0, '2026-04-21 08:11:41', 0),
(312, 7, 23, 'rapid weight gain', 'Sự tăng cân nhanh chóng', 'Eating late at night often causes rapid weight gain.', NULL, 0, '2026-04-21 08:11:41', 0),
(313, 7, 23, 'obesity', 'Sự béo phì', 'Obesity is becoming a global health crisis.', NULL, 0, '2026-04-21 08:11:41', 0),
(314, 7, 23, 'childhood obesity', 'Béo phì ở trẻ em', 'Childhood obesity has tripled in the last few decades.', NULL, 0, '2026-04-21 08:11:41', 0),
(315, 7, 23, 'take regular exercise', 'Tập thể dục thường xuyên', 'You should take regular exercise to stay fit.', NULL, 0, '2026-04-21 08:11:41', 0),
(316, 7, 23, 'physical activity', 'Hoạt động thể chất', 'Walking is a simple form of physical activity.', NULL, 0, '2026-04-21 08:11:41', 0),
(317, 7, 23, 'make healthier food choices', 'Lựa chọn thực phẩm lành mạnh hơn', 'Reading labels helps you make healthier food choices.', NULL, 0, '2026-04-21 08:11:41', 0),
(318, 7, 23, 'public health campaigns', 'Chiến dịch sức khỏe cộng đồng', 'Public health campaigns promote the benefits of hand-washing.', NULL, 0, '2026-04-21 08:11:41', 0),
(319, 7, 23, 'school education programmes', 'Chương trình giáo dục học đường', 'School education programmes teach kids about nutrition.', NULL, 0, '2026-04-21 08:11:41', 0),
(320, 7, 23, 'taxing of fast food', 'Đánh thuế thức ăn nhanh', 'Significant taxing of fast food might reduce consumption.', NULL, 0, '2026-04-21 08:11:41', 0),
(321, 7, 23, 'suffer from health issues', 'Mắc các vấn đề sức khỏe', 'People who smoke often suffer from respiratory issues.', NULL, 0, '2026-04-21 08:11:41', 0),
(322, 7, 23, 'home-cooked food', 'Thức ăn nấu tại nhà', 'Home-cooked food is usually healthier than restaurant food.', NULL, 0, '2026-04-21 08:11:41', 0),
(323, 7, 23, 'risk of heart diseases', 'Nguy cơ mắc bệnh tim', 'Exercise can lower the risk of heart diseases.', NULL, 0, '2026-04-21 08:11:41', 0),
(324, 7, 23, 'average life expectancy', 'Tuổi thọ trung bình', 'Average life expectancy has increased thanks to medicine.', NULL, 0, '2026-04-21 08:11:41', 0),
(325, 7, 23, 'treatment costs', 'Chi phí chữa trị', 'Prevention is better than paying high treatment costs.', NULL, 0, '2026-04-21 08:11:41', 0),
(326, 7, 23, 'prevalence of processed food', 'Sự thịnh hành của thực phẩm chế biến sẵn', 'The prevalence of processed food has led to more obesity.', NULL, 0, '2026-04-21 08:11:41', 0),
(327, 7, 23, 'raise public awareness', 'Nâng cao ý thức cộng đồng', 'The government is trying to raise public awareness about vaccines.', NULL, 0, '2026-04-21 08:11:41', 0),
(328, 7, 23, 'eat more vegetables and fruit', 'Ăn nhiều rau quả', 'You should try to eat more vegetables and fruit every day.', NULL, 0, '2026-04-21 08:11:41', 0),
(329, 7, 24, 'separate schools = single-sex schools', 'Trường một giới (chỉ nam hoặc nữ)', 'Some parents prefer sending their children to single-sex schools.', NULL, 0, '2026-04-21 08:13:11', 0),
(330, 7, 24, 'mixed schools = co-ed schools', 'Trường hai giới (nam nữ học chung)', 'Mixed schools provide a more realistic social environment.', NULL, 0, '2026-04-21 08:13:11', 0),
(331, 7, 24, 'send sb to...', 'Đưa ai đó tới đâu (nhập học)', 'Many families send their children to boarding schools.', NULL, 0, '2026-04-21 08:13:11', 0),
(332, 7, 24, 'enter tertiary education', 'Bắt đầu học đại học', 'More students want to enter tertiary education after high school.', NULL, 0, '2026-04-21 08:13:11', 0),
(333, 7, 24, 'there is little chance for...', 'Hầu như không có cơ hội cho...', 'There is little chance for students to relax during exam season.', NULL, 0, '2026-04-21 08:13:11', 0),
(334, 7, 24, 'early relationships', 'Việc nảy sinh tình cảm sớm', 'Single-sex education may prevent early relationships at school.', NULL, 0, '2026-04-21 08:13:11', 0),
(335, 7, 24, 'concentrate on = focus on', 'Tập trung vào...', 'Students need to concentrate on their core subjects.', NULL, 0, '2026-04-21 08:13:11', 0),
(336, 7, 24, 'get higher academic results', 'Đạt kết quả học tập cao', 'The goal of new methods is to help students get higher academic results.', NULL, 0, '2026-04-21 08:13:11', 0),
(337, 7, 24, 'have the opportunity to', 'Có cơ hội làm gì', 'Students have the opportunity to join various English clubs.', NULL, 0, '2026-04-21 08:13:11', 0),
(338, 7, 24, 'interact and take part in group work', 'Tương tác và tham gia làm việc nhóm', 'Co-ed schools allow students to interact and take part in group work.', NULL, 0, '2026-04-21 08:13:11', 0),
(339, 7, 24, 'opposite-sex classmates', 'Bạn cùng lớp khác giới', 'Working with opposite-sex classmates helps improve social skills.', NULL, 0, '2026-04-21 08:13:11', 0),
(340, 7, 24, 'learn a wide range of skills', 'Học được nhiều kỹ năng khác nhau', 'University is a place to learn a wide range of skills.', NULL, 0, '2026-04-21 08:13:11', 0),
(341, 7, 24, 'teamwork skills', 'Kỹ năng làm việc nhóm', 'Teamwork skills are essential for your future career.', NULL, 0, '2026-04-21 08:13:11', 0),
(342, 7, 24, 'co-existence and gender equality', 'Sự cùng tồn tại và bình đẳng giới', 'Mixed education promotes co-existence and gender equality.', NULL, 0, '2026-04-21 08:13:11', 0),
(343, 7, 24, 'explore each other’s perspectives', 'Khám phá quan điểm của nhau', 'Students can explore each other’s perspectives through debate.', NULL, 0, '2026-04-21 08:13:11', 0),
(344, 7, 24, 'brings more benefits for', 'Mang lại nhiều lợi ích hơn cho...', 'This new policy brings more benefits for rural students.', NULL, 0, '2026-04-21 08:13:11', 0),
(345, 7, 24, 'pass/fail the exam', 'Đậu/ Rớt kỳ thi', 'He studied very hard to pass the final exam.', NULL, 0, '2026-04-21 08:13:11', 0),
(346, 7, 24, 'gain in-depth knowledge', 'Có được kiến thức sâu sắc', 'The course helps students gain in-depth knowledge of IT.', NULL, 0, '2026-04-21 08:13:11', 0),
(347, 7, 24, 'core subjects', 'Các môn học nòng cốt', 'Maths and English are core subjects in most countries.', NULL, 0, '2026-04-21 08:13:11', 0),
(348, 7, 24, 'study abroad', 'Du học', 'Nam Phương plans to study abroad to get an international degree.', NULL, 0, '2026-04-21 08:13:11', 0),
(349, 7, 24, 'drop out of school', 'Bỏ học', 'Economic problems forced him to drop out of school.', NULL, 0, '2026-04-21 08:13:11', 0),
(350, 7, 24, 'gain international qualifications', 'Có được bằng cấp quốc tế', 'Studying abroad is the best way to gain international qualifications.', NULL, 0, '2026-04-21 08:13:11', 0),
(351, 7, 24, 'improve educational outcomes', 'Nâng cao đầu ra của giáo dục', 'The government aims to improve educational outcomes this year.', NULL, 0, '2026-04-21 08:13:11', 0),
(352, 7, 24, 'top international league tables', 'Xếp đầu bảng giáo dục quốc tế', 'Finland often tops international educational league tables.', NULL, 0, '2026-04-21 08:13:11', 0),
(353, 7, 24, 'encourage independent learning', 'Thúc đẩy việc tự học', 'Online courses encourage independent learning among students.', NULL, 0, '2026-04-21 08:13:11', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) DEFAULT 30,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exams`
--

INSERT INTO `exams` (`id`, `title`, `description`, `duration`, `created_at`) VALUES
(4, 'TOEIC', 'THI THỬ TRẢI NGHIỆM THỰC TẾ', 60, '2026-05-16 02:42:43'),
(5, 'TOEIC TEST 1', '', 30, '2026-05-16 03:03:41'),
(6, 'LUYỆN ĐỀ THPT QUỐC GIA 2025', '', 45, '2026-05-16 03:04:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_questions`
--

CREATE TABLE `exam_questions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `correct_option` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_questions`
--

INSERT INTO `exam_questions` (`id`, `exam_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(3, 4, 'The policy prohibiting visitor access to the laboratory must be ------- followed.', 'A. strictly', 'B. bitterly', 'C. sizably', 'D. colorfully', 'B'),
(4, 4, 'Yoon-Hee Kim is the ------- graduate of Serrica University to lead a Fortune 500 company.', 'A. most', 'B. for', 'C. first', 'D. nearly', 'A'),
(5, 4, 'Contact Frank Marilli in the IT department ------- you have any problems with the new database software.', 'A. and', 'B. then', 'C. but', 'D. if', 'B'),
(6, 4, 'A ------- efficiency expert will be visiting our work site in early November.', 'A. led', 'B. leader', 'C. leading', 'D. leads', 'B'),
(7, 4, 'At Gallant\'s Pet Store, customer ------- are accepted between 9:00 A.M. and 6:00 P.M.', 'A. behaviors', 'B. relations', 'C. orders', 'D. types', 'C'),
(8, 4, 'The management at Carette Industries ------- values the work of the research team.', 'A. high', 'B. highly', 'C. highest', 'D. higher', 'D'),
(9, 4, 'Pentrexa Pharmacy is able to ------- most prescriptions within one business day.', 'A. care', 'B. earn', 'C. fill', 'D. lift', 'A'),
(10, 4, 'The ------- of a parking structure for Huron General Hospital will begin on June 1.', 'A. construct', 'B. constructed', 'C. construction', 'D. constructs', 'C'),
(11, 4, 'Some of the flower beds surrounding Dale Valley Lodge had to be replanted ------- the recent rainstorm.', 'A. after', 'B. among', 'C. opposite', 'D. beside', 'B'),
(12, 4, 'Several water stations ------- along the route of next week\'s marathon.', 'A. being installed', 'B. will be installed', 'C. to install', 'D. installed', 'B'),
(13, 4, 'The Crown Lagoon Hotel has 150 rooms, each with a ------- view of the city.', 'A. valid', 'B. recent', 'C. modern', 'D. scenic', 'D'),
(14, 4, 'Overall, charitable donations rose last year, ------- specific dollar amounts are not yet available.', 'A. although', 'B. neither', 'C. whenever', 'D. so', 'C'),
(15, 4, 'We strongly advise you to back up the data stored on your electronic device ------- turning it in for repairs.\r\n', 'A. once', 'B. both', 'C. then', 'D. before', 'B'),
(16, 4, 'Because Ms. Garcia enjoys creating charts and graphs, her supervisor ------- asks her to make materials for presentations.', 'A. frequent', 'B. frequents', 'C. frequenting', 'D. frequently', 'B'),
(17, 4, 'Manufacturers of high-end products are dealing with excess ------- because consumers are buying fewer luxury items.', 'A. confidence', ' B. inventory', 'C. capacity', 'D. energy', 'A'),
(18, 4, 'The Hayle Group, ------- consists of business consultants and lawyers, advocates for tax policy reforms.', 'A. themselves', 'B. someone', 'C. whoever', 'D. which', 'C'),
(19, 4, 'Daishi Asayama is one of three applicants being ------- to oversee the Kingston franchises.', 'A. decided', 'B. corrected', 'C. considered', 'D. practiced', 'C'),
(20, 4, 'he reviewer of Ms. Chen\'s book noted that her research was -------.', 'A. impressed', 'B. impressive', 'C. impress', 'D. impression', 'A'),
(21, 4, 'Mr. Pereira has worked in our legal department ------- his transfer to the Atlanta office ten years ago.', 'A. since', 'B. between', 'C. without', 'D. like', 'D'),
(22, 4, 'Pennypack Markets soon plans to break ground on its largest ------- center in the area.', 'A. distributive', 'B. distribute', 'C. distributable', 'D. distribution', 'C'),
(23, 5, 'She ___ to work every morning by bus.', 'go', 'goes', 'going', 'gone', 'B'),
(24, 5, 'The meeting has been ___ until next Monday.', 'delay', 'delayed', 'delaying', 'delays', 'B'),
(25, 5, 'Please submit the report ___ Friday afternoon.', 'in', 'on', 'by', 'at', 'C'),
(26, 5, 'Our company is looking for a highly ___ manager.', 'experience', 'experiences', 'experienced', 'experiencing', 'C'),
(27, 5, 'The customers were satisfied ___ the new service.', 'for', 'with', 'about', 'into', 'B'),
(28, 5, 'If you have any questions, feel free to ___ me.', 'contacts', 'contact', 'contacting', 'contacted', 'B'),
(29, 5, 'Mr. Brown will arrive ___ Tokyo tomorrow morning.', 'at', 'to', 'in', 'from', 'C'),
(30, 5, 'The factory was closed ___ safety concerns.', 'because', 'because of', 'despite', 'although', 'B'),
(31, 5, 'Employees must wear their ID cards at all ___ .', 'time', 'times', 'timing', 'timed', 'B'),
(32, 5, 'The new software is much easier to use than the ___ version.', 'previous', 'previously', 'prevention', 'prevent', 'A'),
(33, 6, 'She ___ to work every morning by bus.', 'go', 'goes', 'going', 'gone', 'B'),
(34, 6, 'The meeting has been ___ until next Monday.', 'delay', 'delayed', 'delaying', 'delays', 'B'),
(35, 6, 'Please submit the report ___ Friday afternoon.', 'in', 'on', 'by', 'at', 'C'),
(36, 6, 'Our company is looking for a highly ___ manager.', 'experience', 'experiences', 'experienced', 'experiencing', 'C'),
(37, 6, 'The customers were satisfied ___ the new service.', 'for', 'with', 'about', 'into', 'B'),
(38, 6, 'If you have any questions, feel free to ___ me.', 'contacts', 'contact', 'contacting', 'contacted', 'B'),
(39, 6, 'Mr. Brown will arrive ___ Tokyo tomorrow morning.', 'at', 'to', 'in', 'from', 'C'),
(40, 6, 'The factory was closed ___ safety concerns.', 'because', 'because of', 'despite', 'although', 'B'),
(41, 6, 'Employees must wear their ID cards at all ___ .', 'time', 'times', 'timing', 'timed', 'B'),
(42, 6, 'The new software is much easier to use than the ___ version.', 'previous', 'previously', 'prevention', 'prevent', 'A'),
(43, 6, 'We are planning to open a new branch ___ June.', 'on', 'at', 'in', 'for', 'C'),
(44, 6, 'The manager asked the staff to work ___ efficiently.', 'more', 'most', 'much', 'many', 'A'),
(45, 6, 'All applications must be submitted before the ___ date.', 'close', 'closing', 'closed', 'closely', 'B'),
(46, 6, 'The hotel provides free breakfast ___ all guests.', 'for', 'to', 'with', 'from', 'A'),
(47, 6, 'This machine is capable ___ producing 500 units per hour.', 'at', 'with', 'of', 'from', 'C'),
(48, 6, 'The sales report was completed ___ the deadline.', 'under', 'before', 'during', 'among', 'B'),
(49, 6, 'Customers can return products ___ 30 days.', 'within', 'among', 'since', 'during', 'A'),
(50, 6, 'The conference room is being ___ at the moment.', 'clean', 'cleaned', 'cleaning', 'cleans', 'B'),
(51, 6, 'Our team achieved the highest sales ___ March.', 'at', 'in', 'on', 'for', 'B'),
(52, 6, 'The company decided to ___ the new policy immediately.', 'implementation', 'implement', 'implemented', 'implementing', 'B'),
(53, 6, 'The CEO gave an inspiring ___ during the meeting.', 'speak', 'speaker', 'speech', 'spoken', 'C'),
(54, 6, 'You should check the document carefully before ___ it.', 'send', 'sending', 'sent', 'sends', 'B'),
(55, 6, 'The package will be delivered ___ express mail.', 'with', 'by', 'for', 'from', 'B'),
(56, 6, 'He has worked for this company ___ five years.', 'since', 'during', 'for', 'from', 'C'),
(57, 6, 'The printer is out of paper. Please refill ___ .', 'it', 'them', 'its', 'itself', 'A'),
(58, 6, 'Our office will remain closed ___ the holiday.', 'during', 'among', 'between', 'along', 'A'),
(59, 6, 'The training session starts ___ 9 A.M.', 'on', 'in', 'at', 'for', 'C'),
(60, 6, 'The restaurant is famous ___ its seafood dishes.', 'for', 'with', 'at', 'on', 'A'),
(61, 6, 'We appreciate your ___ response to our request.', 'promptly', 'prompt', 'promptness', 'prompts', 'B'),
(62, 6, 'Employees are encouraged to attend the seminar ___ Friday.', 'at', 'on', 'in', 'with', 'B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `folders`
--

INSERT INTO `folders` (`id`, `name`, `description`, `created_at`, `user_id`) VALUES
(1, 'Tiếng Anh giao tiếp', '100+ câu giao tiếp thông dụng trong đời sống.', '2026-04-12 11:33:04', 999),
(2, 'Tiếng Anh cho Kid', 'Học qua hình ảnh vui nhộn dành cho trẻ em.', '2026-04-12 11:33:04', 999),
(3, 'IELTS Vocabulary 7.0+', 'Tổng hợp từ vựng học thuật nâng cao.', '2026-04-12 11:33:04', 999),
(4, 'TOEIC 650+ Target', 'Cấu trúc và từ vựng thường gặp trong bài thi TOEIC.', '2026-04-12 11:33:04', 999),
(5, 'Tiếng Anh cho ngành nhân sự', 'Kỹ năng viết Email, thuyết trình và giao tiếp trong môi trường công sở.', '2026-04-12 11:39:23', 999),
(6, 'Tiếng Anh cho người mất gốc', 'Lộ trình lấy lại căn bản từ bảng chữ cái đến các thì trong tiếng Anh.', '2026-04-12 11:39:23', 999),
(7, 'IELTS Writing Task 2', 'Các từ nối (Connectors) và cấu trúc câu ghi điểm cho bài viết luận.', '2026-04-12 11:39:23', 999),
(8, 'TOEIC 450+ Target', 'Luyện tập các từ vựng cơ bản nhất thường xuất hiện trong đề thi TOEIC.', '2026-04-12 11:39:23', 999),
(9, 'TOEIC 650+ Business', 'Từ vựng chuyên sâu về kinh doanh, hợp đồng và văn phòng.', '2026-04-12 11:39:23', 999),
(10, 'TOEIC 950+ Master', 'Chinh phục các từ vựng cực khó và bẫy trong đề thi TOEIC.', '2026-04-12 11:39:23', 999),
(11, 'Phát âm chuẩn Mỹ', 'Các quy tắc nối âm, trọng âm và bảng ký tự phiên âm quốc tế IPA.', '2026-04-12 11:39:23', 999),
(12, 'Cụm động từ (Phrasal Verbs)', 'Học các cụm từ quan trọng như Take off, Put up with, Look after...', '2026-04-12 11:39:23', 999),
(13, 'Thành ngữ thông dụng', 'Các Idioms giúp bạn nói tiếng Anh tự nhiên như người bản xứ.', '2026-04-12 11:39:23', 999),
(21, 'tiếng anh', 'Bộ sưu tập các bài học về tiếng anh', '2026-05-16 08:30:44', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(50) DEFAULT 'personal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `folder_id`, `name`, `description`, `created_at`, `type`) VALUES
(1, 1, 'Bài 1: Chào hỏi & Làm quen', NULL, '2026-04-12 11:50:27', 'system'),
(2, 1, 'Bài 2: Tại nhà hàng', NULL, '2026-04-12 11:50:27', 'system'),
(3, 1, 'Bài 3: Hỏi đường & Đi lại', NULL, '2026-04-12 11:50:27', 'system'),
(4, 5, 'Bài 1: Từ vựng cốt lõi về Tiếng Anh cho người đi làm', NULL, '2026-04-12 11:53:55', 'system'),
(5, 5, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-04-12 11:53:55', 'system'),
(6, 5, 'Bài 3: Từ vựng nâng cao', NULL, '2026-04-12 11:53:55', 'system'),
(7, 6, 'Bài 1: Từ vựng cốt lõi về Tiếng Anh cho người mất gốc', NULL, '2026-04-16 07:12:55', 'system'),
(8, 6, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-04-16 07:12:55', 'system'),
(9, 6, 'Bài 3: Từ vựng nâng cao', NULL, '2026-04-16 07:12:55', 'system'),
(19, 10, 'Bài 1: Từ vựng cốt lõi về TOEIC 950+ Master', NULL, '2026-04-19 12:54:01', 'system'),
(20, 10, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-04-19 12:54:01', 'system'),
(21, 10, 'Bài 3: Từ vựng nâng cao', NULL, '2026-04-19 12:54:01', 'system'),
(22, 7, 'Bài 1: Từ vựng cốt lõi về IELTS Writing Task 2', NULL, '2026-04-21 08:07:39', 'system'),
(23, 7, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-04-21 08:07:39', 'system'),
(24, 7, 'Bài 3: Từ vựng nâng cao', NULL, '2026-04-21 08:07:39', 'system'),
(25, 9, 'Bài 1: Từ vựng cốt lõi về TOEIC 650+ Business', NULL, '2026-05-12 08:44:56', 'system'),
(26, 9, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-05-12 08:44:56', 'system'),
(27, 9, 'Bài 3: Từ vựng nâng cao', NULL, '2026-05-12 08:44:56', 'system'),
(28, 8, 'Bài 1: Từ vựng cốt lõi về TOEIC 450+ Target', NULL, '2026-05-16 02:23:33', 'system'),
(29, 8, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-05-16 02:23:33', 'system'),
(30, 8, 'Bài 3: Từ vựng nâng cao', NULL, '2026-05-16 02:23:33', 'system'),
(37, 21, 'Bài 1: Từ vựng cốt lõi về tiếng anh', NULL, '2026-05-16 08:43:14', 'system'),
(38, 21, 'Bài 2: Cụm từ và cấu trúc thông dụng', NULL, '2026-05-16 08:43:14', 'system'),
(39, 21, 'Bài 3: Từ vựng nâng cao', NULL, '2026-05-16 08:43:14', 'system');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('admin','student') DEFAULT 'student',
  `display_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `role`, `display_name`, `created_at`) VALUES
(1, 'admin', 'admin123', 'Quản trị viên', 'admin@bibotflip.com', 'admin', NULL, '2026-04-21 08:17:55'),
(2, 'sinhvien', '123456', 'Nam Phương', 'namphuong@student.vn', 'student', NULL, '2026-04-21 08:17:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Chỉ mục cho bảng `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Chỉ mục cho bảng `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT cho bảng `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD CONSTRAINT `exam_questions_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
