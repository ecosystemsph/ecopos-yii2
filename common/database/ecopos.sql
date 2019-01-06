-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2019 at 02:49 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecopos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_assignment`
--

CREATE TABLE `tbl_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_assignment`
--

INSERT INTO `tbl_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('access-his-profile', '5', 1514427468),
('access-his-profile', '6', 1543823586),
('access-registration', '4', 1536717617),
('bac-member', '1', 1543822011),
('bac-secretary', '1', 1543822011),
('bac-secretary', '4', 1537775207),
('basic-role', '1', 1543822011),
('basic-role', '18', 1517984550),
('Guest', '1', 1543822011),
('super-administrator', '1', NULL),
('Unit Head', '1', 1543822011),
('User', '1', 1543822011),
('User', '19', 1519976404),
('User', '5', 1543823565),
('User', '6', 1543820374);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_item`
--

CREATE TABLE `tbl_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_item`
--

INSERT INTO `tbl_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/accounting/*', 2, NULL, NULL, NULL, 1515371555, 1515371555),
('/admin/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/default/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/default/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/create', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/update', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/view', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/permission/*', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/update', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/view', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/*', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/delete', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/update', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/view', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/route/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/rule/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/create', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/index', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/update', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/view', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/activate', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/deactivate', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/admin/user/delete', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/index', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/listunit', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/admin/user/login', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/logout', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/signup', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/update', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/admin/user/view', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/ajax/*', 2, NULL, NULL, NULL, 1520920929, 1520920929),
('/ajax/departments', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/ajax/getaccount', 2, NULL, NULL, NULL, 1520920931, 1520920931),
('/ajax/lineitembudget', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/mymethod', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/purchaseorderandobligation', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/purchaserequest', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/ajax/requestforquotationbidsandawards', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/ajax/supplierlist', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/api/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/create', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/delete', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/options', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/update', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/view', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/cashiering/*', 2, NULL, NULL, NULL, 1515379311, 1515379311),
('/debug/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/view', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/action', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/diff', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/preview', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/view', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gridview/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/gridview/export/*', 2, NULL, NULL, NULL, 1516673161, 1516673161),
('/gridview/export/download', 2, NULL, NULL, NULL, 1516673160, 1516673160),
('/imagemanager/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/crop', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/delete', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/get-original-image', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/upload', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/view', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/*', 2, NULL, NULL, NULL, 1515133710, 1515133710),
('/inventory/categorytype/*', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/create', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/delete', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/index', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/update', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/view', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/products/*', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/add-inventory-entries', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/add-inventory-withdrawaldetails', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/create', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/delete', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/index', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/pdf', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/update', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/view', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/lab/*', 2, NULL, NULL, NULL, 1514814971, 1514814971),
('/lab/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/lab/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/maintenance/*', 2, NULL, NULL, NULL, 1514539173, 1514539173),
('/maintenance/index', 2, NULL, NULL, NULL, 1514539139, 1514539139),
('/message/*', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/*', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/check-for-new-messages', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/compose', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/delete', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/ignorelist', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/inbox', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/mark-all-as-read', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/sent', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/view', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/paai/registration', 2, NULL, NULL, NULL, 1536829778, 1536829778),
('/paai/registration/*', 2, NULL, NULL, NULL, 1536829843, 1536829843),
('/package/*', 2, NULL, NULL, NULL, 1514431824, 1514431824),
('/package/createmodule', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/export', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/extract', 2, NULL, NULL, NULL, 1515054294, 1515054294),
('/package/getcss', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/index', 2, NULL, NULL, NULL, 1514431824, 1514431824),
('/package/manager', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/removemodule', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/update', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/upload', 2, NULL, NULL, NULL, 1515390507, 1515390507),
('/package/view', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/writeini', 2, NULL, NULL, NULL, 1515054294, 1515054294),
('/procurement/*', 2, NULL, NULL, NULL, 1519976243, 1519976243),
('/procurement/bids/*', 2, NULL, NULL, NULL, 1527646454, 1527646454),
('/procurement/bids/checkbidstatus', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/checkselected', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/checksupplier', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/createpo', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/createpurchase', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/editPrice', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/editRemarks', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/index', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/mtest', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/regeneratesupplier', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/report', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/reportabstract', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/view', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/default/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/default/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/department/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/index', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/department/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/disburstment/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/disburstment/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/division/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/create', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/delete', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/update', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/view', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/employee/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/addexpenditure', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/addobjectdetails', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/editLibObject', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/updateobjects', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudget/*', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/addexpenditure', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/addobjectdetails', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/create', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/delete', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/editLibObject', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/index', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/update', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/updateobjects', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/view', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudgetobjectdetails/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudgetobjectdetails/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudgetobjectdetails/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/ppmp/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/ppmp/create', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/delete', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/index', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/update', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/view', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/project-request/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/purchase-order', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/*', 2, NULL, NULL, NULL, 1520904403, 1520904403),
('/procurement/purchaserequest/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/reportpr', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/testajax', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequest/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequestdetails/*', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/create', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/delete', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/index', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/update', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/view', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/*', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/checkin', 2, NULL, NULL, NULL, 1536723061, 1536723061),
('/procurement/registration/clearnames', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/create', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/delete', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/drawnames', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/gender', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/index', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/raffle', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/replacename', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/summary', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/update', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/view', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/votes', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/profile/*', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/create', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/delete', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/deleteimage', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/profile/index', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/update', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/uploadPhoto', 2, NULL, NULL, NULL, 1513930949, 1513930949),
('/profile/view', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/sample/*', 2, NULL, NULL, NULL, 1515141962, 1515141962),
('/settings/*', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/disable', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/enable', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/index', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/site/*', 2, NULL, NULL, NULL, 1512923763, 1512923763),
('/site/about', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/captcha', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/contact', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/error', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/login', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/logout', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/query', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/requestpasswordreset', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/site/reset-password', 2, NULL, NULL, NULL, 1514249865, 1514249865),
('/site/sendmail', 2, NULL, NULL, NULL, 1516091490, 1516091490),
('/site/signup', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/success', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/site/upload', 2, NULL, NULL, NULL, 1513930949, 1513930949),
('/site/verify', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/tagging/*', 2, NULL, NULL, NULL, 1515130615, 1515130615),
('/tagging/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/tagging/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/test/*', 2, NULL, NULL, NULL, 1516084595, 1516084595),
('/test2/*', 2, NULL, NULL, NULL, 1516085459, 1516085459),
('/test3/*', 2, NULL, NULL, NULL, 1516085788, 1516085788),
('/tt/*', 2, NULL, NULL, NULL, 1516086131, 1516086131),
('/uploads/*', 2, NULL, NULL, NULL, 1514350073, 1514350073),
('/user/*', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/create', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/delete', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/index', 2, NULL, NULL, NULL, 1513843344, 1513843344),
('/user/update', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/view', 2, NULL, NULL, NULL, 1513843344, 1513843344),
('access-accounting', 2, 'This permission allow user to access accounting module', NULL, NULL, 1515371555, 1515371555),
('access-ajax', 2, 'Access Ajax', NULL, NULL, 1520920954, 1520920954),
('access-assignment', 2, 'Permission will allow user to access assignment', NULL, NULL, 1514425828, 1514425828),
('access-bidsquotation', 2, NULL, NULL, NULL, 1537774882, 1537774882),
('access-cashiering', 2, 'This permission allow user to access cashiering module', NULL, NULL, 1515379311, 1515379311),
('access-debug', 2, 'This Permission allow user to access debug module', NULL, NULL, 1513840103, 1513840103),
('access-division', 2, 'Permission that will access Division Page.', NULL, NULL, 1520296458, 1520296458),
('access-gii', 2, 'This permission allow user to access GII Tool', NULL, NULL, 1513839929, 1513839929),
('access-his-profile', 2, 'This permission will only allow user access on his own profile', NULL, NULL, 1513925187, 1513925187),
('access-inventory', 2, 'This permission allow user to access inventory module', NULL, NULL, 1515133710, 1515133710),
('access-lab', 2, 'This permission allow user to access Laboratory module', NULL, NULL, 1514815010, 1514815010),
('access-lineitembudget', 2, 'access-lineitembudget', NULL, NULL, 1528941680, 1528941680),
('access-lineitembudgetobjectdetails', 2, 'access-lineitembudgetobjectdetails', NULL, NULL, 1543860112, 1543860112),
('access-menu', 2, 'Permission to allow access menu ', NULL, NULL, 1514426762, 1514426762),
('access-message', 2, 'This permssion allow user to access message module', NULL, NULL, 1515721386, 1515721386),
('access-paai', 2, 'access-paai', NULL, NULL, 1536829719, 1536829719),
('access-package', 2, 'This permission allow user to access package manager', NULL, NULL, 1514431815, 1514431815),
('access-package-list', 2, 'Allow Users to access package list', NULL, NULL, 1515486771, 1515486771),
('access-permission', 2, 'Permission to access permission', NULL, NULL, 1514426671, 1514426671),
('access-porderandobligation', 2, NULL, NULL, NULL, 1537774912, 1537774958),
('access-ppmp', 2, 'access-ppmp', NULL, NULL, 1528941719, 1528941719),
('access-procurement', 2, 'This permission allow user to access procurement module', NULL, NULL, 1519976243, 1519976243),
('access-profile', 2, 'This permission allow users access on Profile', NULL, NULL, 1513924948, 1513924948),
('access-purchaserequest', 2, 'Access Purchase Request', NULL, NULL, 1520904551, 1520904551),
('access-rbac', 2, 'This permission allow users to access RBAC but depends on other permissions to access other features of RBAC.', NULL, NULL, 1514364821, 1514364821),
('access-registration', 2, 'access-registration', NULL, NULL, 1536717562, 1536717562),
('access-role', 2, 'Permission to allow access role', NULL, NULL, 1514426382, 1514426382),
('access-route', 2, 'Permission to allow access route', NULL, NULL, 1514425999, 1514425999),
('access-rule', 2, 'Permission to access Rule', NULL, NULL, 1514426816, 1514426896),
('access-sample', 2, 'This permission allow user to access sample module', NULL, NULL, 1515141962, 1515141962),
('access-settings', 2, 'This permission allows user to access settings', NULL, NULL, 1514536456, 1514536456),
('access-signup', 2, 'This permission allow user to signup', NULL, NULL, 1513840579, 1513840579),
('access-system-tools', 2, 'Access System Tools for Admin', NULL, NULL, 1529301931, 1529301931),
('access-tagging', 2, 'This permission allow user to access tagging module', NULL, NULL, 1515130615, 1515130615),
('access-test', 2, 'This permission allow user to access test module', NULL, NULL, 1516084596, 1516084596),
('access-test2', 2, 'This permission allow user to access test2 module', NULL, NULL, 1516085459, 1516085459),
('access-test3', 2, 'This permission allow user to access test3 module', NULL, NULL, 1516085788, 1516085788),
('access-tt', 2, 'This permission allow user to access tt module', NULL, NULL, 1516086131, 1516086131),
('access-user', 2, 'This permission allow user to access User Account', NULL, NULL, 1514425679, 1514425679),
('allow-access-backend', 2, 'This Permission allow users to access backend', NULL, NULL, 1513908976, 1513908976),
('allow-gridview-export', 2, 'this permissions will allow access export/download', NULL, NULL, 1517209167, 1517209167),
('bac-member', 1, 'bac-member', NULL, NULL, 1528940411, 1528940411),
('bac-secretary', 1, 'bac-secretary', NULL, NULL, 1528940380, 1528940380),
('basic-role', 1, 'Basic role for newly created user', NULL, NULL, 1517967802, 1517967802),
('can-delete-profile', 2, 'This permission allow user to delete profile', NULL, NULL, 1514428789, 1514428789),
('Guest', 1, 'This the default Role', NULL, NULL, 1517381088, 1517381088),
('profile-full-access', 2, 'This permission allow users to access profile with full access', NULL, NULL, 1513914161, 1513914161),
('rbac-assign-permission', 2, 'This permission allows user to assign roles', NULL, NULL, 1512924223, 1513840446),
('rbac-full-access', 2, 'This permission has all the rights to access rbac', NULL, NULL, 1513840364, 1513840364),
('super-administrator', 1, 'This role reserve all the rights and permissions', NULL, NULL, 1513838897, 1513840008),
('Unit Head', 1, 'Head of a Unit', NULL, NULL, 1519955844, 1519955844),
('User', 1, 'User', NULL, NULL, 1519955864, 1519955864),
('user-full-access', 2, 'This Permission allows user to access User module', NULL, NULL, 1513843398, 1513843398);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_item_child`
--

CREATE TABLE `tbl_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_item_child`
--

INSERT INTO `tbl_auth_item_child` (`parent`, `child`) VALUES
('access-accounting', '/accounting/*'),
('access-ajax', '/ajax/*'),
('access-assignment', '/admin/assignment/index'),
('access-assignment', '/admin/assignment/view'),
('access-bidsquotation', '/ajax/requestforquotationbidsandawards'),
('access-bidsquotation', '/procurement/bids/*'),
('access-bidsquotation', '/procurement/bids/checkbidstatus'),
('access-bidsquotation', '/procurement/bids/checkselected'),
('access-bidsquotation', '/procurement/bids/checksupplier'),
('access-bidsquotation', '/procurement/bids/createpo'),
('access-bidsquotation', '/procurement/bids/createpurchase'),
('access-bidsquotation', '/procurement/bids/editPrice'),
('access-bidsquotation', '/procurement/bids/editRemarks'),
('access-bidsquotation', '/procurement/bids/index'),
('access-bidsquotation', '/procurement/bids/mtest'),
('access-bidsquotation', '/procurement/bids/regeneratesupplier'),
('access-bidsquotation', '/procurement/bids/report'),
('access-bidsquotation', '/procurement/bids/reportabstract'),
('access-bidsquotation', '/procurement/bids/view'),
('access-cashiering', '/cashiering/*'),
('access-debug', '/debug/*'),
('access-division', '/procurement/division/*'),
('access-gii', '/gii/*'),
('access-his-profile', '/profile/create'),
('access-his-profile', '/profile/index'),
('access-his-profile', '/profile/update'),
('access-his-profile', '/profile/uploadPhoto'),
('access-his-profile', '/profile/view'),
('access-inventory', '/inventory/*'),
('access-lab', '/lab/*'),
('access-lineitembudget', '/procurement/lineitembudget/addexpenditure'),
('access-lineitembudget', '/procurement/lineitembudget/addobjectdetails'),
('access-lineitembudget', '/procurement/lineitembudget/create'),
('access-lineitembudget', '/procurement/lineitembudget/delete'),
('access-lineitembudget', '/procurement/lineitembudget/editLibObject'),
('access-lineitembudget', '/procurement/lineitembudget/index'),
('access-lineitembudget', '/procurement/lineitembudget/update'),
('access-lineitembudget', '/procurement/lineitembudget/updateobjects'),
('access-lineitembudget', '/procurement/lineitembudget/view'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/*'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/create'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/delete'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/index'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/update'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/view'),
('access-menu', '/admin/menu/index'),
('access-menu', '/admin/menu/view'),
('access-message', '/message/*'),
('access-package', '/package/*'),
('access-package', '/package/createmodule'),
('access-package', '/package/export'),
('access-package', '/package/extract'),
('access-package', '/package/index'),
('access-package', '/package/removemodule'),
('access-package', '/package/upload'),
('access-package', '/package/writeini'),
('access-permission', '/admin/permission/index'),
('access-permission', '/admin/permission/view'),
('access-porderandobligation', '/ajax/purchaseorderandobligation'),
('access-porderandobligation', '/procurement/purchaseorder/*'),
('access-porderandobligation', '/procurement/purchaseorder/index'),
('access-porderandobligation', '/procurement/purchaseorder/purchase-order'),
('access-porderandobligation', '/procurement/purchaseorder/view'),
('access-ppmp', '/procurement/ppmp/create'),
('access-ppmp', '/procurement/ppmp/delete'),
('access-ppmp', '/procurement/ppmp/index'),
('access-ppmp', '/procurement/ppmp/update'),
('access-ppmp', '/procurement/ppmp/view'),
('access-profile', '/profile/index'),
('access-profile', '/profile/view'),
('access-purchaserequest', '/ajax/purchaseorderandobligation'),
('access-purchaserequest', '/ajax/purchaserequest'),
('access-purchaserequest', '/ajax/requestforquotationbidsandawards'),
('access-purchaserequest', '/procurement/purchaserequest/*'),
('access-rbac', '/admin/assignment/view'),
('access-registration', '/procurement/registration/*'),
('access-registration', '/procurement/registration/checkin'),
('access-registration', '/procurement/registration/create'),
('access-registration', '/procurement/registration/delete'),
('access-registration', '/procurement/registration/index'),
('access-registration', '/procurement/registration/update'),
('access-registration', '/procurement/registration/view'),
('access-role', '/admin/role/index'),
('access-role', '/admin/role/view'),
('access-route', '/admin/route/assign'),
('access-route', '/admin/route/index'),
('access-rule', '/admin/rule/index'),
('access-rule', '/admin/rule/view'),
('access-sample', '/sample/*'),
('access-settings', '/settings/*'),
('access-signup', '/site/signup'),
('access-tagging', '/tagging/*'),
('access-test', '/test/*'),
('access-test2', '/test2/*'),
('access-test3', '/test3/*'),
('access-tt', '/tt/*'),
('access-user', '/admin/user/*'),
('allow-gridview-export', '/gridview/*'),
('bac-member', 'access-lineitembudget'),
('bac-member', 'access-ppmp'),
('bac-member', 'access-procurement'),
('bac-member', 'access-purchaserequest'),
('bac-secretary', '/procurement/*'),
('bac-secretary', 'access-bidsquotation'),
('bac-secretary', 'access-lineitembudget'),
('bac-secretary', 'access-porderandobligation'),
('bac-secretary', 'access-ppmp'),
('bac-secretary', 'access-procurement'),
('bac-secretary', 'access-purchaserequest'),
('basic-role', 'access-his-profile'),
('basic-role', 'access-message'),
('basic-role', 'access-settings'),
('Guest', '/maintenance/*'),
('Guest', '/site/*'),
('Guest', 'access-signup'),
('profile-full-access', '/profile/*'),
('profile-full-access', '/profile/uploadPhoto'),
('profile-full-access', '/site/upload'),
('profile-full-access', 'access-profile'),
('rbac-assign-permission', '/admin/assignment/*'),
('rbac-full-access', '/admin/*'),
('rbac-full-access', 'rbac-assign-permission'),
('super-administrator', '/procurement/purchaserequest/*'),
('super-administrator', '/site/signup'),
('super-administrator', 'access-accounting'),
('super-administrator', 'access-ajax'),
('super-administrator', 'access-assignment'),
('super-administrator', 'access-cashiering'),
('super-administrator', 'access-debug'),
('super-administrator', 'access-division'),
('super-administrator', 'access-gii'),
('super-administrator', 'access-inventory'),
('super-administrator', 'access-lab'),
('super-administrator', 'access-menu'),
('super-administrator', 'access-message'),
('super-administrator', 'access-package'),
('super-administrator', 'access-package-list'),
('super-administrator', 'access-permission'),
('super-administrator', 'access-procurement'),
('super-administrator', 'access-profile'),
('super-administrator', 'access-purchaserequest'),
('super-administrator', 'access-rbac'),
('super-administrator', 'access-role'),
('super-administrator', 'access-route'),
('super-administrator', 'access-rule'),
('super-administrator', 'access-settings'),
('super-administrator', 'access-signup'),
('super-administrator', 'access-system-tools'),
('super-administrator', 'access-tagging'),
('super-administrator', 'access-user'),
('super-administrator', 'allow-access-backend'),
('super-administrator', 'allow-gridview-export'),
('super-administrator', 'can-delete-profile'),
('super-administrator', 'profile-full-access'),
('super-administrator', 'rbac-full-access'),
('super-administrator', 'user-full-access'),
('User', 'access-lineitembudget'),
('User', 'access-lineitembudgetobjectdetails'),
('User', 'access-ppmp'),
('User', 'access-procurement'),
('User', 'access-purchaserequest'),
('User', 'access-settings'),
('User', 'access-user'),
('user-full-access', '/user/*');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_rule`
--

CREATE TABLE `tbl_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `department_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division`
--

CREATE TABLE `tbl_division` (
  `division_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_division`
--

INSERT INTO `tbl_division` (`division_id`, `code`, `name`) VALUES
(1, 'ORD', 'Office of the Regional Director'),
(2, 'FASS', 'Finance and Administrative Support Services'),
(3, 'TS', 'Technical Services'),
(4, 'FOS', 'Field Operations Services');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imagemanager`
--

CREATE TABLE `tbl_imagemanager` (
  `id` int(10) UNSIGNED NOT NULL,
  `fileName` varchar(128) NOT NULL,
  `fileHash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL,
  `modifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imagemanager`
--

INSERT INTO `tbl_imagemanager` (`id`, `fileName`, `fileHash`, `created`, `modified`, `createdBy`, `modifiedBy`) VALUES
(21, 'DOST-XI.jpg', '_6l0KmBXSf-N66ifLeIHLsCrv01Jj7jh', '2018-01-15 16:41:37', '2018-01-15 16:41:37', NULL, NULL),
(22, 'ab0551ea9fa84e128d4c483a04c86d99479e9408.jpg', 'fSP0soWS9gn3vcEB987TDc6IHIfClpLl', '2018-01-15 16:43:37', '2018-01-15 16:43:37', NULL, NULL),
(23, 'c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg', 'LFfWrKffJEgDqdOpxE0als3_E5_PorzR', '2018-01-15 16:44:03', '2018-01-15 16:44:03', NULL, NULL),
(25, 'ab0551ea9fa84e128d4c483a04c86d99479e9408_crop_486x507.jpg', 'cV16OuH8IjljOXQVx5SHh55zAERPT2nj', '2018-01-22 13:30:23', '2018-01-22 13:30:23', NULL, NULL),
(29, '26971913-1546772542043190-774125253-o.jpg', 'Jn3RHKW2voCPAI_5HJEeXvBDOdZDI35y', '2018-01-22 14:23:02', '2018-01-22 14:23:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Home', NULL, '/site/index', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `created_at` datetime NOT NULL,
  `context` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `hash`, `from`, `to`, `status`, `title`, `message`, `created_at`, `context`) VALUES
(1, '413de46eb1c6e970e0018752cc663b91', 1, 2, 1, 'Test', 'Testing emai;l', '2018-01-12 11:05:13', ''),
(2, 'c161f92cc41ea66b50f668da2f7cbe19', 1, 2, 1, 'Test', 'fggggfgfgfgf', '2018-01-12 11:05:47', ''),
(3, '1745c19267b5aeddcd062048d7ec4912', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:02:31', ''),
(4, 'b1f0d2b59640dbacb0e8b6710a9f2df8', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:04:38', ''),
(5, 'f33d46bb69f6104b58d1c926bd017f3a', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:05:12', ''),
(6, '3c086e0f7ebf689f790e84b6031b8ab2', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:05:34', ''),
(7, '68470d890b92b328e34ff6d00186c107', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:06:05', ''),
(8, '76314a7c2850538bc488854861b16493', 1, 2, 1, 'Re: Test', '', '2018-01-12 12:42:32', ''),
(9, '0d10174be52f4d448873193cde61128e', 2, 1, -1, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:12:06', ''),
(10, '6eea46ea65b69bdad5ac83df39b3c7c4', 2, 1, 1, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:13:43', ''),
(11, '5ab804eca05589b676281bcfb956c640', 2, 5, 0, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:13:49', ''),
(12, '3be914d9a89936a5e03d37317ba1f68f', 1, 2, 2, 'testing email', '<p>Hi <strong>Jane,</strong></p>\r\n\r\n<p>please click this link&nbsp;<a href=\"https://web.onelab.ph\">OneLab</a></p>\r\n', '2018-01-15 16:57:54', ''),
(13, '2f13dd38c25ca28b5f588af3fb2610c0', 2, 1, 1, 'Re: testing email', '<p>OK I will</p>\r\n', '2018-01-15 16:59:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message_allowed_contacts`
--

CREATE TABLE `tbl_message_allowed_contacts` (
  `user_id` int(11) NOT NULL,
  `is_allowed_to_write` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message_ignorelist`
--

CREATE TABLE `tbl_message_ignorelist` (
  `user_id` int(11) NOT NULL,
  `blocks_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1515723504),
('m161028_084412_init', 1515723507),
('m161214_134749_create_table_tbl_message_ignorelist', 1515723508),
('m170116_094811_add_context_field_to_tbl_message_table', 1515723510),
('m170203_090001_create_table_tbl_message_allowed_contacts', 1515723511);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `PackageID` int(11) NOT NULL,
  `PackageName` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`PackageID`, `PackageName`, `icon`, `created_at`, `updated_at`) VALUES
(21, 'lab', 'fa fa-bookmark', 1515397499, 1515634107),
(22, 'inventory', 'fa fa-assistive-listening-systems', 1515398542, 1515575300),
(23, 'tagging', 'fa fa-tag', 1515475587, 1515575270),
(24, 'procurement', NULL, 1519976243, 1519976243);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `position_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`position_id`, `code`, `name`) VALUES
(1, 'Clerk I', 'Clerk I'),
(2, 'Clerk II', 'Clerk II'),
(3, 'Clerk III', 'Clerk III'),
(4, 'Clerk IV', 'Clerk IV'),
(5, 'PA I', 'Project Assistant I'),
(6, 'PA II', 'Project Assistant II'),
(7, 'PA III', 'Project Assistant III'),
(8, 'PDO I', 'Project Development Officer I'),
(9, 'PDO II', 'Project Development Officer II'),
(10, 'PDO III', 'Project Development Officer III'),
(11, 'Lab Aide I', 'Laboratory Aide I'),
(12, 'Lab Aide II', 'Laboratory Aide II'),
(13, 'SRA', 'Science Research Analyst'),
(14, 'SRA', 'Science Research Assistant'),
(15, 'SRS I', 'Science Research Specialist I'),
(16, 'SRS II', 'Science Research Specialist II'),
(17, 'SrSRS', 'Senior Science Research Specialist'),
(18, 'SuSRS', 'Supervising Science Research Specialist'),
(19, 'AA I', 'Administrative Assistant I'),
(20, 'AA II', 'Administrative Assistant II'),
(21, 'AA III', 'Administrative Assistant III'),
(22, 'AA IV', 'Administrative Assistant IV'),
(23, 'AA I', 'Administrative Aide I'),
(24, 'AA II', 'Administrative Aide II'),
(25, 'AA III', 'Administrative Aide III'),
(26, 'AA IV', 'Administrative Aide IV'),
(27, 'AO I', 'Administrative Officer I'),
(28, 'AO II', 'Administrative Officer II'),
(29, 'AO III', 'Administrative Officer III'),
(30, 'AO IV', 'Administrative Officer IV'),
(31, 'AO V', 'Administrative Officer V');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `middleinitial` varchar(50) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `contact_numbers` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`profile_id`, `user_id`, `lastname`, `firstname`, `designation`, `middleinitial`, `division_id`, `unit_id`, `contact_numbers`, `image_url`, `avatar`) VALUES
(1, 1, 'Moratalla', 'Aris', 'System Administrator', 'D', 11, 0, '+639274790425', 'adm.jpg', 'c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg'),
(2, 3, 'Kazama', 'Jin', 'SRS XV', 'Mishima', 2, 7, NULL, NULL, NULL),
(3, 4, 'Bueno', 'Marilyn', 'Clerk I', 'Caldito', 2, 2, NULL, NULL, NULL),
(4, 5, 'Diego', 'Thelma', 'Clerk IV', 'Emata', 2, 2, NULL, NULL, NULL),
(5, 6, 'Gundoy', 'Ronnel', 'Science Research Specialist II', 'Baluan', 3, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_package`
--

CREATE TABLE `tbl_upload_package` (
  `upload_id` int(11) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upload_package`
--

INSERT INTO `tbl_upload_package` (`upload_id`, `package_name`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'lab.zip', 'Lab.zip', 1515397495, 1515397495);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'H06d598TowxCUB1bRLqPHNsPMtkp3MCK', '$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02', '4CnX1D1IKs70gFic28bClG-vbQfzldAB_1517198782', 'arismoratalla@gmail.com', 10, 1512923120, 1529287101),
(3, 'redx88', '1KhUtj7dcEC2AHDUcFQsY9Cuf0TIZJW4', '$2y$13$7HOvztOozwCsCd8Hevd5F.ealg4Wb/9LBs65KqTwicBTklax8/lsG', NULL, 'red_x88@yahoo.com', 0, 1520925627, 1528959127),
(4, 'mcb0107', 'B4akPiMZHWJBUthBJQejPGycx4ETcgz0', '$2y$13$BN527H.4FleiF2hV6Y44T.VghBlMAJ8HgGQ9MD65O0tKVRNS8jKji', NULL, 'mcb@gmail.com', 10, 1521005855, 1528939397),
(5, 'tediego', 'fnAgDXbU5OkrV01fB5C5C81BTTTgrJda', '$2y$13$mCj6ZGaptHjjngb7NDtRYuZ0lPIiEuG0v2Eh4IxfxTTt6Sp/7fDL.', NULL, 'tediego@gmail.com', 10, 1528959184, 1543823215),
(6, 'rbg0110', 'v94767xC1U4jxVRYq-OxUZAYtDxwQ2XQ', '$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02', NULL, 'ronnelg10@gmail.com', 10, 1543820128, 1543820243);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_getuser`
-- (See below for the actual view)
--
CREATE TABLE `vw_getuser` (
`user_id` int(11)
,`username` varchar(32)
,`auth_key` varchar(32)
,`password_hash` varchar(255)
,`password_reset_token` varchar(255)
,`email` varchar(255)
,`status` smallint(6)
,`created_at` int(11)
,`updated_at` int(11)
,`lastname` varchar(50)
,`firstname` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_getuser`
--
DROP TABLE IF EXISTS `vw_getuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_getuser`  AS  (select `fais`.`tbl_user`.`user_id` AS `user_id`,`fais`.`tbl_user`.`username` AS `username`,`fais`.`tbl_user`.`auth_key` AS `auth_key`,`fais`.`tbl_user`.`password_hash` AS `password_hash`,`fais`.`tbl_user`.`password_reset_token` AS `password_reset_token`,`fais`.`tbl_user`.`email` AS `email`,`fais`.`tbl_user`.`status` AS `status`,`fais`.`tbl_user`.`created_at` AS `created_at`,`fais`.`tbl_user`.`updated_at` AS `updated_at`,`fais`.`tbl_profile`.`lastname` AS `lastname`,`fais`.`tbl_profile`.`firstname` AS `firstname` from (`fais`.`tbl_user` join `fais`.`tbl_profile` on((`fais`.`tbl_profile`.`user_id` = `fais`.`tbl_user`.`user_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_auth_assignment`
--
ALTER TABLE `tbl_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_auth_item`
--
ALTER TABLE `tbl_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `tbl_auth_item_child`
--
ALTER TABLE `tbl_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `tbl_auth_rule`
--
ALTER TABLE `tbl_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_division`
--
ALTER TABLE `tbl_division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `tbl_imagemanager`
--
ALTER TABLE `tbl_imagemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message_allowed_contacts`
--
ALTER TABLE `tbl_message_allowed_contacts`
  ADD PRIMARY KEY (`user_id`,`is_allowed_to_write`);

--
-- Indexes for table `tbl_message_ignorelist`
--
ALTER TABLE `tbl_message_ignorelist`
  ADD PRIMARY KEY (`user_id`,`blocks_user_id`);

--
-- Indexes for table `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`PackageID`),
  ADD UNIQUE KEY `PackageName` (`PackageName`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `tbl_upload_package`
--
ALTER TABLE `tbl_upload_package`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_division`
--
ALTER TABLE `tbl_division`
  MODIFY `division_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_imagemanager`
--
ALTER TABLE `tbl_imagemanager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `PackageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_upload_package`
--
ALTER TABLE `tbl_upload_package`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_auth_assignment`
--
ALTER TABLE `tbl_auth_assignment`
  ADD CONSTRAINT `tbl_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_auth_item`
--
ALTER TABLE `tbl_auth_item`
  ADD CONSTRAINT `tbl_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `tbl_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_auth_item_child`
--
ALTER TABLE `tbl_auth_item_child`
  ADD CONSTRAINT `tbl_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
