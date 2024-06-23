-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 34.101.241.95
-- Generation Time: Jun 23, 2024 at 01:26 PM
-- Server version: 8.0.31-google
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kulitku`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_url` varchar(2083) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image_url`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 'Pentingnya Menghidrasi Kulit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_1.jpg', 'Kulit yang terhidrasi dengan baik tidak hanya tampak lebih sehat dan bercahaya, tetapi juga berfungsi sebagai penghalang yang lebih efektif terhadap berbagai faktor lingkungan yang merusak. Menghidrasi kulit berarti menjaga kelembapan alami kulit dan menghindari dehidrasi yang dapat menyebabkan kulit kering, gatal, dan bahkan penuaan dini. Mengonsumsi cukup air setiap hari adalah langkah pertama yang esensial untuk memastikan kulit tetap terhidrasi dari dalam. Air membantu membuang racun dari tubuh dan mendukung proses regenerasi sel kulit, sehingga kulit tetap lembut dan kenyal.\r\n\r\nSelain hidrasi internal, penggunaan pelembap yang tepat untuk jenis kulit Anda sangat penting. Pelembap berfungsi untuk mengunci air di dalam lapisan kulit dan melindungi kulit dari faktor eksternal seperti polusi dan cuaca ekstrem. Pilih pelembap yang mengandung bahan-bahan seperti asam hialuronat, gliserin, dan ceramide untuk hasil yang optimal. Mengaplikasikan pelembap setelah mencuci muka saat kulit masih sedikit lembap dapat meningkatkan penyerapan produk. Selain itu, menggunakan pelembap dua kali sehari, pagi dan malam, dapat membantu mempertahankan kelembapan kulit sepanjang hari.\r\n\r\nMenghidrasi kulit juga melibatkan pemilihan produk perawatan kulit yang lembut dan tidak mengandung alkohol atau bahan kimia keras yang dapat mengeringkan kulit. Masker wajah yang menghidrasi, seperti masker berbasis gel atau sheet mask, juga dapat memberikan dorongan kelembapan tambahan. Jangan lupa untuk menjaga kelembapan lingkungan dengan menggunakan humidifier, terutama di musim dingin atau di ruangan ber-AC, yang dapat menyebabkan udara kering dan mengurangi kelembapan kulit. Dengan kombinasi perawatan dari dalam dan luar, kulit Anda akan tetap sehat, lembut, dan bercahaya.', '2024-06-18 10:53:20', '2024-06-18 12:52:30'),
(2, 'Peran Antioksidan dalam Perawatan Kulit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_2.jpg', 'Antioksidan memainkan peran penting dalam menjaga kesehatan kulit dengan melindungi sel-sel kulit dari kerusakan akibat radikal bebas. Radikal bebas adalah molekul yang tidak stabil yang dapat merusak sel-sel kulit dan mempercepat proses penuaan. Sumber radikal bebas yang umum meliputi paparan sinar matahari, polusi, dan stres oksidatif. Untuk melawan efek negatif ini, penting untuk memasukkan makanan kaya antioksidan seperti buah-buahan dan sayuran ke dalam diet harian. Buah beri, kacang-kacangan, dan sayuran berdaun hijau adalah contoh makanan yang tinggi kandungan antioksidan.\r\n\r\nSelain melalui diet, Anda juga bisa mendapatkan manfaat antioksidan dari produk perawatan kulit. Serum dan krim yang mengandung vitamin C, vitamin E, dan koenzim Q10 dapat membantu melindungi dan memperbaiki kulit. Antioksidan ini bekerja dengan menetralkan radikal bebas sebelum mereka dapat menyebabkan kerusakan lebih lanjut. Menggunakan produk perawatan kulit yang kaya antioksidan secara rutin dapat membantu menjaga kulit tetap muda, sehat, dan bercahaya. Produk-produk ini juga dapat meningkatkan produksi kolagen dan mengurangi munculnya garis-garis halus serta keriput.\r\n\r\nIntegrasi antioksidan dalam rutinitas perawatan kulit juga melibatkan penggunaan pelindung matahari yang efektif. Beberapa antioksidan, seperti vitamin C dan E, dapat meningkatkan efektivitas tabir surya dengan memberikan perlindungan tambahan terhadap sinar UV. Selain itu, menghindari paparan langsung terhadap polusi dan merokok dapat mengurangi beban radikal bebas pada kulit. Dengan kombinasi perawatan yang tepat, antioksidan dapat menjadi sekutu kuat dalam menjaga kesehatan dan keindahan kulit Anda dalam jangka panjang.', '2024-06-18 12:05:08', '2024-06-18 12:53:15'),
(3, 'Pentingnya Perlindungan Terhadap Sinar Matahari', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_3.jpg', 'Paparan sinar matahari berlebih adalah salah satu penyebab utama kerusakan kulit, termasuk penuaan dini, bintik-bintik hitam, dan risiko kanker kulit. Sinar ultraviolet (UV) dari matahari dapat menembus lapisan kulit dan merusak DNA sel-sel kulit. Oleh karena itu, penting untuk menggunakan tabir surya setiap hari, bahkan saat cuaca mendung atau di dalam ruangan yang terkena sinar matahari tidak langsung. Menggunakan tabir surya adalah langkah pencegahan yang esensial untuk melindungi kulit dari efek berbahaya sinar UV.\r\n\r\nTabir surya dengan SPF minimal 30 disarankan untuk perlindungan harian. Selain itu, kenakan pakaian pelindung, topi lebar, dan kacamata hitam untuk memberikan perlindungan ekstra saat berada di luar ruangan. Menjadikan penggunaan tabir surya sebagai bagian dari rutinitas harian Anda akan membantu mencegah kerusakan kulit jangka panjang dan menjaga kulit tetap sehat serta awet muda. Penggunaan tabir surya harus diaplikasikan secara merata ke seluruh area yang terpapar matahari dan diulang setiap dua jam, terutama setelah berenang atau berkeringat.\r\n\r\nSelain penggunaan tabir surya, menghindari paparan sinar matahari saat matahari berada pada puncaknya, yaitu antara pukul 10 pagi hingga 4 sore, juga sangat penting. Berada di tempat teduh atau menggunakan payung dapat memberikan perlindungan tambahan. Menggunakan produk perawatan kulit yang mengandung antioksidan seperti vitamin C dan E dapat memberikan perlindungan ekstra dengan menetralkan radikal bebas yang dihasilkan oleh sinar UV. Kombinasi dari berbagai langkah perlindungan ini akan membantu menjaga kulit Anda tetap sehat dan terlindungi dari kerusakan akibat sinar matahari.', '2024-06-18 12:05:08', '2024-06-18 12:53:43'),
(4, 'Manfaat Eksfoliasi untuk Kulit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_4.jpg', 'Eksfoliasi adalah proses mengangkat sel-sel kulit mati dari permukaan kulit, yang dapat membantu mencerahkan kulit dan memperbaiki tekstur. Seiring waktu, sel-sel kulit mati dapat menumpuk dan menyebabkan kulit tampak kusam dan tidak merata. Eksfoliasi secara teratur membantu merangsang regenerasi sel kulit baru, membuat kulit tampak lebih segar dan halus. Jenis eksfoliasi bisa berupa fisik, seperti scrub, atau kimia, seperti asam alfa-hidroksi (AHA) dan beta-hidroksi (BHA).\r\n\r\nNamun, penting untuk tidak berlebihan dalam eksfoliasi. Eksfoliasi yang terlalu sering atau menggunakan produk yang terlalu keras dapat merusak lapisan pelindung kulit dan menyebabkan iritasi. Pilihlah produk eksfoliasi yang sesuai dengan jenis kulit Anda dan gunakan dengan frekuensi yang dianjurkan, biasanya satu hingga dua kali seminggu. Untuk kulit sensitif, pilih produk eksfoliasi yang lembut dan hindari scrub dengan butiran kasar. Produk eksfoliasi kimia yang mengandung AHA atau BHA dapat menjadi pilihan yang baik karena lebih efektif dalam mengatasi sel kulit mati tanpa mengiritasi kulit.\r\n\r\nEksfoliasi juga membantu produk perawatan kulit lainnya menyerap lebih baik karena sel-sel kulit mati yang menghalangi telah diangkat. Ini berarti pelembap, serum, dan masker wajah dapat bekerja lebih efektif setelah proses eksfoliasi. Mengintegrasikan eksfoliasi ke dalam rutinitas perawatan kulit Anda dapat membantu menjaga kulit tetap bersih, bercahaya, dan bebas dari masalah seperti jerawat dan komedo. Dengan eksfoliasi yang tepat, Anda dapat mendapatkan kulit yang lebih sehat dan bercahaya.', '2024-06-18 12:06:28', '2024-06-18 12:54:10'),
(5, 'Pengaruh Pola Makan Terhadap Kesehatan Kulit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_5.jpg', 'Pola makan yang sehat tidak hanya baik untuk kesehatan tubuh secara keseluruhan tetapi juga berpengaruh besar pada kondisi kulit. Nutrisi yang kita konsumsi dapat membantu memperbaiki, melindungi, dan memperbarui sel-sel kulit. Makanan yang kaya akan vitamin A, C, E, serta omega-3 dan antioksidan dapat membantu menjaga elastisitas dan kekenyalan kulit, serta melindungi dari kerusakan akibat radikal bebas. Misalnya, vitamin C membantu dalam produksi kolagen, sementara vitamin E melindungi kulit dari kerusakan oksidatif.\r\n\r\nDi sisi lain, pola makan yang tinggi gula dan makanan olahan dapat mempercepat proses penuaan kulit dan memperburuk kondisi kulit seperti jerawat. Makanan dengan indeks glikemik tinggi dapat meningkatkan produksi minyak berlebih dan peradangan, yang dapat memicu timbulnya jerawat. Mengonsumsi cukup air juga sangat penting untuk menjaga kulit tetap terhidrasi dan sehat. Air membantu mengeluarkan racun dari tubuh dan mendukung fungsi optimal organ-organ, termasuk kulit.\r\n\r\nMemasukkan banyak buah-buahan, sayuran, biji-bijian, dan protein tanpa lemak ke dalam diet Anda adalah langkah kunci untuk mendapatkan kulit yang sehat dan bercahaya dari dalam. Hindari konsumsi alkohol berlebihan dan kurangi asupan kafein, karena keduanya dapat menyebabkan dehidrasi kulit. Dengan menjaga pola makan yang seimbang dan kaya nutrisi, Anda tidak hanya memperbaiki kesehatan kulit tetapi juga meningkatkan kesehatan tubuh secara keseluruhan. Pola makan yang baik adalah fondasi penting untuk kulit yang sehat dan bersinar.', '2024-06-18 12:06:28', '2024-06-18 12:54:39'),
(6, 'Vitiligo: Mengenal dan Mengatasi Penyakit Kulit yang Menyebabkan Pergantian Warna Kulit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_6.jpg', 'Vitiligo adalah kondisi kulit yang menyebabkan hilangnya pigmen pada kulit, sehingga menyebabkan bercak putih atau kehilangan warna pada kulit. Meskipun belum diketahui penyebab pastinya, vitiligo diyakini terjadi karena kelainan pada sistem kekebalan tubuh yang membuat sel-sel yang menghasilkan pigmen (melanosit) di kulit menghancurkan dirinya sendiri. Kondisi ini bisa memengaruhi semua orang dari segala usia dan etnis, meskipun lebih umum terjadi pada individu dengan riwayat keluarga yang menderita vitiligo.\r\n\r\nMeskipun vitiligo tidak menyebabkan rasa sakit atau gejala fisik lainnya, kondisi ini dapat memengaruhi kesehatan mental dan emosional seseorang karena perubahan pada penampilan fisiknya. Individu dengan vitiligo mungkin mengalami stres, depresi, atau gangguan kepercayaan diri. Saat ini, tidak ada pengobatan yang dapat menyembuhkan vitiligo secara permanen, tetapi beberapa metode pengobatan seperti terapi sinar UV, krim kortikosteroid, atau terapi laser dapat membantu mengembalikan pigmen pada kulit. Konsultasikan dengan dokter kulit untuk opsi pengobatan yang sesuai dengan tingkat keparahan vitiligo Anda.\r\n\r\nPenting juga untuk mendapatkan dukungan sosial dan psikologis dalam menghadapi vitiligo. Bergabung dengan kelompok dukungan atau konseling dapat membantu seseorang dalam mengelola emosi dan merasa lebih percaya diri dengan kondisi kulitnya. Memahami bahwa vitiligo bukanlah sesuatu yang bisa dihindari atau dikontrol sepenuhnya juga penting untuk menghadapi kondisi ini dengan lebih baik. Terakhir, penting untuk melindungi kulit yang terkena vitiligo dari paparan sinar matahari dengan menggunakan tabir surya dan pakaian pelindung, karena area kulit yang kehilangan pigmen menjadi lebih rentan terhadap kerusakan akibat sinar UV.', '2024-06-18 14:18:12', '2024-06-18 14:38:03'),
(7, 'Rosacea: Mengatasi Kondisi Kulit yang Membuat Wajah Meradang dan Memerah', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_7.jpg', 'Rosacea adalah kondisi kulit kronis yang ditandai oleh kemerahan, pembengkakan, dan pembuluan pada wajah, terutama di pipi, hidung, dahi, dan dagu. Meskipun penyebab pastinya belum diketahui secara pasti, faktor genetik dan lingkungan diyakini memainkan peran dalam perkembangannya. Gejala rosacea dapat sangat bervariasi dari satu individu ke individu lainnya, dan kondisi ini dapat memengaruhi kepercayaan diri serta kualitas hidup seseorang karena adanya rasa tidak nyaman dan dampak pada penampilan.\r\n\r\nPenting untuk menghindari pemicu rosacea agar dapat mengurangi gejala yang timbul. Sinar matahari yang berlebihan dapat memperburuk kemerahan dan peradangan pada kulit yang terkena rosacea, oleh karena itu penting untuk menggunakan tabir surya dengan SPF tinggi dan mengenakan perlindungan matahari seperti topi dan kacamata hitam. Selain itu, makanan pedas, alkohol, dan stres juga dapat memicu flare-up rosacea, sehingga penting untuk menghindari faktor-faktor ini.\r\n\r\nPerawatan untuk rosacea termasuk penggunaan krim atau salep yang mengandung metronidazole atau azelaic acid untuk mengurangi peradangan dan kemerahan pada kulit. Dokter juga dapat meresepkan antibiotik oral atau melakukan terapi laser untuk meredakan gejala yang lebih parah. Konsultasikan dengan dokter kulit untuk penanganan yang tepat sesuai dengan kondisi kulit Anda, serta untuk mendapatkan rekomendasi produk perawatan kulit yang cocok untuk merawat kulit yang sensitif akibat rosacea.', '2024-06-18 14:18:12', '2024-06-18 14:38:34'),
(8, 'Dermatitis Kontak: Penyebab, Gejala, dan Cara Mengatasinya', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_8.jpg', 'Dermatitis kontak adalah kondisi kulit yang disebabkan oleh kontak dengan zat tertentu yang dapat mengiritasi atau menyebabkan reaksi alergi pada kulit. Gejalanya meliputi gatal yang intens, kemerahan, pembengkakan, dan bahkan dapat terjadi luka lepuh atau mengelupas pada kulit. Penyebab dermatitis kontak sangat beragam, mulai dari bahan kimia dalam deterjen dan sabun hingga logam seperti nikel yang sering ditemukan dalam perhiasan atau alat-alat logam.\r\n\r\nLangkah pertama dalam mengatasi dermatitis kontak adalah dengan mengidentifikasi dan menghindari zat penyebabnya. Penting untuk menggunakan produk perawatan kulit yang lembut dan bebas pewangi, serta hindari kontak langsung dengan bahan kimia yang keras. Saat bersentuhan dengan zat yang berpotensi iritan, seperti pembersih rumah tangga atau bahan kimia industri, disarankan untuk menggunakan sarung tangan pelindung. Jika gejala tetap persisten atau parah, konsultasikan dengan dokter untuk mendapatkan diagnosis yang tepat dan pengobatan yang sesuai, termasuk penggunaan krim kortikosteroid atau antihistamin.\r\n\r\nPenting juga untuk menjaga area kulit yang terkena dermatitis kontak tetap bersih dan kering. Hindari menggaruk area yang gatal agar tidak memperparah iritasi dan risiko infeksi. Selain itu, penggunaan kompres dingin atau kain lembut dapat membantu meredakan gatal dan pembengkakan pada kulit yang terkena. Dengan perawatan yang tepat dan penghindaran terhadap zat-zat penyebabnya, gejala dermatitis kontak dapat dikendalikan dengan baik.', '2024-06-18 14:36:53', '2024-06-18 14:39:43'),
(9, 'Skabies: Mengenal dan Mengatasi Infeksi Kulit yang Disebabkan oleh Parasit', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_9.jpg', 'Skabies adalah infeksi kulit yang disebabkan oleh tungau kecil bernama Sarcoptes scabiei. Tungau ini menetap di permukaan kulit dan menyebabkan rasa gatal yang parah, terutama di malam hari. Infeksi ini sangat menular dan dapat menyebar melalui kontak langsung dengan orang yang terinfeksi atau melalui barang-barang yang telah terkontaminasi seperti pakaian, seprai, dan handuk. Gejala skabies meliputi ruam kecil berwarna merah, gatal intens, dan bekas gigitan atau goresan yang sering terlihat di area lipatan tubuh seperti pergelangan tangan, siku, ketiak, dan sekitar pinggang.\r\n\r\nPengobatan skabies biasanya melibatkan penggunaan salep atau krim antiskabies yang mengandung bahan aktif seperti permetrin atau sulfur. Krim ini harus diaplikasikan ke seluruh tubuh dari leher ke bawah dan dibiarkan selama beberapa jam atau semalam sebelum dibilas. Karena skabies sangat menular, penting untuk mengobati semua anggota keluarga atau orang yang tinggal serumah dengan penderita skabies secara bersamaan untuk mencegah penyebaran infeksi. Selain itu, untuk menghilangkan tungau yang mungkin menempel di permukaan, pakaian, seprai, dan handuk harus dicuci dengan air panas dan dikeringkan dengan suhu tinggi.\r\n\r\nPenting juga untuk membersihkan lingkungan rumah secara menyeluruh untuk mencegah reinfeksi. Vakum kasur, karpet, dan furnitur secara menyeluruh untuk menghilangkan tungau yang mungkin bersembunyi. Jika gejala skabies tidak membaik setelah pengobatan, atau jika muncul komplikasi seperti infeksi sekunder pada kulit akibat garukan berlebihan, segera konsultasikan dengan dokter untuk mendapatkan pengobatan yang lebih lanjut. Dokter mungkin meresepkan obat oral atau perawatan tambahan untuk memastikan infeksi benar-benar hilang.', '2024-06-18 14:36:53', '2024-06-18 14:40:30'),
(10, 'Jerawat: Masalah Umum yang Memengaruhi Kesehatan dan Kecantikan Kulit\r\n', 'https://storage.googleapis.com/kulitku-bangkit2024.appspot.com/asset_kulitku/artikel_10.jpg', 'Jerawat adalah masalah kulit yang umum terjadi, terutama pada masa remaja, tetapi bisa juga dialami oleh orang dewasa. Jerawat terjadi ketika pori-pori kulit tersumbat oleh minyak, sel-sel kulit mati, dan bakteri, menyebabkan kemerahan, benjolan, dan kadang-kadang nanah. Faktor hormonal, stres, dan pola makan juga dapat memengaruhi timbulnya jerawat. Kondisi ini tidak hanya memengaruhi penampilan fisik tetapi juga dapat memengaruhi kepercayaan diri dan kesehatan mental seseorang. Jerawat yang tidak ditangani dengan baik dapat meninggalkan bekas luka permanen yang sulit dihilangkan, sehingga penanganan yang tepat sangat penting untuk kesehatan dan kecantikan kulit.\r\n\r\nPenting untuk menjaga kebersihan kulit dengan mencuci muka secara teratur, terutama setelah beraktivitas atau menggunakan makeup. Penggunaan produk perawatan kulit yang sesuai dengan jenis kulit sangat dianjurkan. Pembersih wajah yang mengandung bahan-bahan seperti asam salisilat atau benzoyl peroxide dapat membantu membersihkan pori-pori dan mengurangi pertumbuhan bakteri penyebab jerawat. Selain itu, produk yang mengandung retinoid juga bisa membantu mempercepat regenerasi sel kulit dan mencegah penyumbatan pori-pori. Hindari penggunaan produk berbahan dasar minyak yang bisa memperparah kondisi kulit berjerawat.\r\n\r\nSelain perawatan topikal, penting juga untuk menghindari kebiasaan buruk yang dapat memperburuk jerawat, seperti memencet jerawat. Memencet jerawat dapat menyebabkan infeksi, peradangan, dan bekas luka yang lebih parah. Jika jerawat tidak membaik setelah penggunaan produk over-the-counter, konsultasikan dengan dokter kulit untuk mendapatkan perawatan yang lebih intensif. Dokter mungkin meresepkan obat oral seperti antibiotik atau pil hormonal, serta prosedur medis seperti terapi laser atau peeling kimia untuk mengatasi jerawat yang parah. Pendekatan holistik dengan menjaga pola makan sehat, mengelola stres, dan rutin berolahraga juga dapat membantu menjaga kesehatan kulit secara keseluruhan.', '2024-06-18 14:36:53', '2024-06-18 15:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int NOT NULL,
  `nama_penyakit` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `obat_rekomendasi` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_penyakit`, `obat_rekomendasi`) VALUES
(1, 'athlete foot', 'Salep Kulit 88, Ketoconazole Cream, Miconazole Cream, Canesten, Daktarin, Fungiderm, atau Kalpanax.'),
(2, 'vasculitis', 'cyclophosphamide atau azathioprine, prednisone atau methylprednisolone '),
(3, 'ringworm', 'New Astar Cream, Formyco, Zoralin, Mycoral, dan Canesten'),
(4, 'atopic dermatitis', 'Kenacort, Bufacomb, Esperson, Pharmason, dan Desoximetasone'),
(5, 'herpes hpv and other std', 'Glizigen Spray, Clinovir Cream, dan Zovirax Cream'),
(6, 'impetigo', 'Bactoderm Cream, Pirotop Cream, Medi-Klin Gel, Diprogenta Cream, Benoson G Cream, Sagestam Cream, Salticin Cream, Gentasolon Cream, Afucid Cream, Chloramfecort H Cream,.'),
(7, 'custineous larva margins', 'Albendazole , Ivermectin, Tiabendazole'),
(8, 'eczema', 'Clobetasol, Kloderma, Diprosone, Ikaderm, Elopro Salep, '),
(9, 'chickenpox', 'CTM, Mederma Proaktif, Ozen, Clinovir, atau Herclov.'),
(10, 'tinea ringworm candidiasis and other', 'Daktarin, Canesten, Kalpanax, Fungiderm, Mycoral, Salep Kulit 88, Myco-Z, Trosyd'),
(11, 'systemic disease', 'NSAID, Kortikosteroid, Hydroxycloroquine, imunosupresan, Rituximab '),
(12, 'urticaria hives', 'loratadine, cetirizine, dan fexofenadine, chlorperamine, dypenhidramine,prednisolone, cimetidine, famotidine dan ranitidine, Omaluzimab, Siklosporin'),
(13, 'vascular tumors', 'Kortikosteroid, Antikonvulsan, Antiemetik, Lomustine, Temozolomide, Bevacizumab, Everolimus'),
(14, 'shingles', 'acyclovir, famciclovir, dan valacyclovir. acyclovir, callusol, kutilos'),
(15, 'seborrheic keratoses and other benign t', 'Retinoid (tretinoin), 5-Fluorouracil (5-FU) topikal'),
(16, 'psoriasis pictures lichen planus ', 'beclometasone topikal, Antihistamin, azathioprine, mycophenolate, cyclosporine, dan methotrexate, isotretinoin atau acitretin, '),
(17, 'poiston ivy', 'Antibiotik, calamine, prednisone'),
(18, 'nail fungus', 'Emtrix Gel, Fungistop, Fungiderm Cream, Mustika Ratu Minyak Zaitun, serta Diflucan'),
(19, 'melanoma skin cancer', 'Pembrolizumab, Atezolizumab, Vemurafenib, imatinib, nilotinib'),
(20, 'lupus and other connective tissue disease', 'Voltaren® Celebrex® dan Orudis®, Plaquenil®, azathioprine, cyclophosphamide dan methotrexate'),
(21, 'light diseases and disorders of pigmentation ', 'Obat oles retinoid , Obat oles hydroquinone, '),
(22, 'cellulitis impetigo and other bacterial infection', 'penisilin, clindamycin, sefalosporin, dan makrolid,antibiotik dikloksasilin, sefaleksin, trimetoprim dengan sulfametoksazol, klindamisin, atau doksisiklin'),
(23, 'Wart Molluscum and other viral infection', 'kalusol, acyclovir, callusol, kutilos'),
(24, 'actinic keratosis basal cell', 'fluorouracil, imiquimod, ingenolmebutate, dan diclofenac');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `kategori_produk` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kulit` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_produk`, `nama_produk`, `kategori_produk`, `jenis_kulit`) VALUES
(1, 'Himalaya Purifying Neem Face Wash', 'Facewash', 'oily'),
(2, 'ElsheSkin Oily Cleanser Wash', 'Facewash', 'oily'),
(3, 'Acnes Natural Face Wash Oil Control', 'Facewash', 'oily'),
(4, 'Evershine Moringa Facial Wash', 'Facewash', 'oily'),
(5, 'Clean & Clear Deep Action Daily Pore Cleanser', 'Facewash', 'oily'),
(6, 'Biore Facial Foam Bright & Oil Clear', 'Facewash', 'oily'),
(7, 'Wardah Perfect Bright Creamy Foam Brightening + Oil Control', 'Facewash', 'oily'),
(8, 'Senka Acne Perfect Whip Facial Wash ', 'Facewash', 'oily'),
(9, 'COSRX Low pH Good Morning Gel Cleanser ', 'Facewash', 'oily'),
(10, 'Somethinc Ceramic Skin Saviour Moisturizer Gel', 'moisturizer', 'oily'),
(11, 'Azarine Active Bright Brightening Day Moisturiser', 'moisturizer', 'oily'),
(12, 'La Roche Posay Effaclar Duo+ Moisturizer Acne', 'moisturizer', 'oily'),
(13, 'Azarine Oil Free Brightening Daily Moisturizer', 'moisturizer', 'oily'),
(14, 'Emina Ms. Pimple Acne Solution Moisturizing Gel', 'moisturizer', 'oily'),
(15, 'Safi Acne Expert Soothing Gel Moisturizer Cream', 'moisturizer', 'oily'),
(16, 'ElsheSkin Hydra Boost Oil Free Moisturizer', 'moisturizer', 'oily'),
(17, 'Wardah Crystal Secret Refreshing Day Gel', 'moisturizer', 'oily'),
(18, 'Npure Centella Asiatica Toner ', 'Toner', 'oily'),
(19, 'Garnier Micellar Water Blue', 'Cleansing water', 'oily'),
(20, 'Erha Acneact Blemish Soothing', 'Serum', 'oily'),
(21, 'Scarlett Acne Serum', 'Serum', 'oily'),
(22, 'Emina Acne Serum', 'Serum', 'oily'),
(23, 'Avoskin Your Skin Bae Salicylic Acid 2% + Zinc 30 ml', 'Serum', 'oily'),
(24, 'SKINTIFIC 5X Ceramide Skin Barrier Repair ', 'Moisturizer', 'dry'),
(25, ' SOMETHINC Calm Down! Skinpair R-Cover Cream Moisturizer', 'Moisturizer', 'dry'),
(26, 'Skin Game Kind Moisturizer', 'Moisturizer', 'dry'),
(27, 'THE ORIGINOTE Hyalucera Moisturizer Gel', 'Moisturizer', 'dry'),
(28, 'L’Oreal Paris Revitalift Hyaluronic Acid Plumping Moisturizer Day Cream', 'Moisturizer', 'dry'),
(29, 'CeraVe daily moisturizing lotion', 'Moisturizer', 'dry'),
(30, 'Cetaphil Moisturizing Cream', 'Moisturizer', 'dry'),
(31, 'Sebamed Day Defence Cream Anti-Dry', 'Moisturizer', 'dry'),
(32, 'Laneige Water Bank Hydro Gel Cream EX', 'Moisturizer', 'dry'),
(33, ' Cetaphil Daily Oil-Free Hydrating Lotion With Hyaluronic Acid', 'Moisturizer', 'dry'),
(34, 'Erha Moisturizer for Very Dry Skin', 'Moisturizer', 'dry'),
(35, 'Somethinc Ceramic Skin Saviour Moisturizer Gel', 'Moisturizer', 'dry'),
(36, 'Wardah Hydra Rose Dewy Aqua Day Gel', 'Moisturizer', 'dry'),
(37, 'Sariayu Putih Langsat Skin Brightening Moisturizer', 'Moisturizer', 'dry'),
(38, 'Nivea Moisturizing Cream', 'Moisturizer', 'dry'),
(39, 'Hada Labo Perfect X Simple Perfect 3D Gel', 'Moisturizer', 'dry'),
(40, 'Garnier Micellar Oil-Infused Cleansing Water ', 'Cleansing water', 'dry'),
(41, 'NIVEA MicellAIR XPERT', 'Cleansing water', 'dry'),
(42, 'SENKA Perfect Whip Gentle Rose Facial Foam', 'Facewash', 'dry'),
(43, 'Wardah Hydrating Aloe Gel ', 'Facewash', 'dry'),
(44, 'The OriginoteCicamide Facial Cleanser', 'Facewash', 'dry'),
(45, 'CeraVe Hydrating Cleanser', 'Facewash', 'dry'),
(46, 'Glad2Glow Milk Amino Acid Gentle Cleanser Face Wash', 'Facewash', 'dry'),
(47, 'Whitelab Brightening Facial Wash', 'Facewash', 'dry'),
(48, 'HADA LABO Gokujyun Ultimate Moisturizing Face Wash', 'Facewash', 'dry'),
(49, 'Gentle Facial Wash Avoskin Natural Sublime Facial Cleanser', 'facewash', 'dry'),
(50, 'Avoskin Your Skin Bae Niacinamide 7% + Alpha Arbutin 1% + Kale productnation', 'serum', 'dry'),
(51, 'Avoskin Miraculous Refining Serum', 'serum', 'dry'),
(52, 'Innisfree Green Tea Seed Serum', 'serum', 'dry'),
(53, 'Erha 21 C Serum', 'serum', 'dry'),
(54, 'The Ordinary Hyaluronic Acid 2 + B5', 'serum', 'dry'),
(55, 'HYALuronic B5 Serum', 'serum', 'dry'),
(56, 'Wardah Hydra Rose Micro Gel Serum', 'serum', 'dry'),
(57, 'Trueve Vitamin C & Ceramide Brightening Serum', 'serum', 'dry'),
(58, 'Whitelab Brightening Face Serum', 'serum', 'dry'),
(59, 'Avoskin Natural Sublime Facial Cleanser', 'Facewash', 'normal'),
(60, 'Pigeon Facial Foam', 'Facewash', 'normal'),
(61, 'Azarine Active Bright Brightening', 'Facewash', 'normal'),
(62, 'Whitelab pH-Balanced Facial Cleanser', 'Facewash', 'normal'),
(63, 'The Originote Cicamide Facial Cleanser. ', 'Facewash', 'normal'),
(64, 'Cetaphil Gentle Skin Cleanser', 'Facewash', 'normal'),
(65, 'Somethinc Low pH Gentle Jelly Cleanser ', 'Facewash', 'normal'),
(66, 'Innisfree The Green Tea Seed Hyaluronic  ', 'serum ', 'normal'),
(67, 'La Roche Posay Cicaplast B5 Ultra Repair Serum 30 ml', 'serum ', 'normal'),
(68, 'Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Ge ', 'moisturizer', 'normal'),
(69, 'Sebamed Moisturizing Cream productnation', 'moisturizer', 'normal'),
(70, 'Olay – Regenerist Whip UV', 'moisturizer', 'normal'),
(71, 'Wardah – Perfect Bright Moisturizer Normal Skin', 'moisturizer', 'normal'),
(72, 'Emina – Moist in a Bottle', 'moisturizer', 'normal'),
(73, 'The Body Shop – Aloe Soothing Moisture Lotion SPF 15', 'moisturizer', 'normal'),
(74, 'Cetaphil – Moisturizing Cream', 'moisturizer', 'normal'),
(75, 'Wardah Nature Daily Witch Hazel Purifying Moisturizer Gel', 'moisturizer', 'normal'),
(76, 'Hadalabo Gokyujun Ultimate Moisturizing Milk', 'moisturizer', 'normal'),
(77, 'Joylab Moisture Bomb Pudding Gel Creme', 'moisturizer', 'normal'),
(78, 'Cerave Moisturizing Cream', 'moisturizer', 'normal'),
(79, 'Something Ceramic Skin Saviour Moisturizer Gel', 'moisturizer', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `optionA` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `optionB` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `optionC` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `optionD` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `answer`) VALUES
(1, 'Apa nama umum untuk peradangan pada kulit yang disebabkan oleh reaksi alergi terhadap zat tertentu?', 'Psoriasis', 'Eksim (dermatitis)', 'Rosacea', 'Urtikaria (biduran)', 'Eksim (dermatitis)'),
(2, 'Apa yang dimaksud dengan jerawat vulgaris?', 'Infeksi bakteri pada kulit', 'Peradangan kronis pada kulit', 'Tersumbatnya pori-pori kulit oleh minyak dan sel kulit mati', 'Reaksi alergi terhadap makanan tertentu', 'Tersumbatnya pori-pori kulit oleh minyak dan sel kulit mati'),
(3, 'Jenis kanker kulit apa yang paling umum?', 'Melanoma', 'Karsinoma sel basal', 'Karsinoma sel skuamosa', 'Liposarkoma', 'Karsinoma sel basal'),
(4, 'Apa yang dimaksud dengan psoriasis?', 'Infeksi jamur pada kulit', 'Peradangan kronis pada kulit yang menyebabkan sel-sel kulit tumbuh terlalu cepat', 'Kanker kulit', 'Gangguan pigmentasi kulit', 'Peradangan kronis pada kulit yang menyebabkan sel-sel kulit tumbuh terlalu cepat'),
(5, 'Apa penyebab utama panu?', 'Infeksi virus', 'Infeksi bakteri', 'Infeksi jamur', 'Alergi makanan', 'Infeksi jamur'),
(6, 'Apa yang dimaksud dengan vitiligo?', 'Kanker kulit', 'Infeksi jamur pada kulit', 'Kehilangan pigmentasi pada kulit yang menyebabkan bercak putih', 'Reaksi alergi terhadap sinar matahari', 'Kehilangan pigmentasi pada kulit yang menyebabkan bercak putih'),
(7, 'Bagaimana cara utama mencegah melanoma?', 'Menghindari makanan tertentu', 'Menggunakan tabir surya dan menghindari paparan sinar UV berlebih', 'Menggunakan produk perawatan kulit tertentu', 'Menghindari mandi terlalu sering', 'Menggunakan tabir surya dan menghindari paparan sinar UV berlebih'),
(8, 'Apa penyebab utama ruam panas?', 'Infeksi bakteri', 'Kondisi lingkungan yang panas dan lembap', 'Alergi makanan', 'Stres', 'Kondisi lingkungan yang panas dan lembap'),
(9, 'Apa yang dimaksud dengan rosacea?', 'Peradangan kronis pada kulit wajah yang menyebabkan kemerahan dan pembuluh darah terlihat', 'Infeksi jamur pada kulit', 'Kanker kulit', 'Gangguan pigmentasi kulit', 'Peradangan kronis pada kulit wajah yang menyebabkan kemerahan dan pembuluh darah terlihat'),
(10, 'Apa yang dimaksud dengan urtikaria (biduran)?', 'Peradangan kronis pada kulit', 'Ruam merah yang gatal akibat reaksi alergi', 'Infeksi bakteri pada kulit', 'Infeksi jamur pada kulit', 'Ruam merah yang gatal akibat reaksi alergi');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `title`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 'Tips Mengatasi Kulit Kering', 'Kulit kering bisa diatasi dengan menjaga kelembapan kulit menggunakan pelembap yang tepat. Menggunakan pelembap yang mengandung bahan-bahan seperti asam hialuronat, gliserin, dan ceramide sangat efektif dalam mengunci kelembapan. Aplikasikan pelembap segera setelah mandi saat kulit masih sedikit lembap untuk mengunci kelembapan lebih baik.\r\n\r\nBerikut beberapa tips tambahan:\r\n\r\nHindari mandi dengan air panas yang bisa menghilangkan minyak alami kulit.\r\nGunakan sabun yang lembut dan bebas dari pewangi serta bahan kimia keras.\r\nMinum cukup air setiap hari untuk menjaga hidrasi dari dalam.\r\nGunakan humidifier di ruangan Anda untuk menjaga kelembapan udara.', '2024-06-18 12:12:47', '2024-06-18 12:12:47'),
(2, 'Trik Menghilangkan Jerawat', 'Menghilangkan jerawat memerlukan perawatan yang tepat dan konsisten. Jaga kebersihan wajah dengan mencuci muka dua kali sehari menggunakan pembersih yang sesuai dengan jenis kulit. Produk yang mengandung benzoyl peroxide atau salicylic acid efektif melawan bakteri penyebab jerawat dan mengurangi peradangan.\r\n\r\nBeberapa langkah penting lainnya:\r\n\r\nHindari memencet jerawat agar tidak meninggalkan bekas luka.\r\nGunakan pelembap non-komedogenik untuk menjaga kelembapan kulit tanpa menyumbat pori-pori.\r\nJangan lupa menggunakan tabir surya setiap hari untuk melindungi kulit dari kerusakan sinar UV.\r\nPertimbangkan menggunakan produk dengan retinol pada malam hari untuk membantu regenerasi kulit.', '2024-06-18 12:12:47', '2024-06-18 12:12:47'),
(3, 'Cara Mengurangi Kantung Mata', 'Mengurangi kantung mata bisa dilakukan dengan perawatan rutin dan perubahan gaya hidup. Tidur yang cukup dan berkualitas selama 7-8 jam per malam sangat penting untuk mencegah kantung mata. Gunakan krim mata yang mengandung kafein atau retinol yang dapat membantu mengencangkan kulit dan mengurangi pembengkakan.\r\n\r\nTrik tambahan yang bisa Anda coba:\r\n\r\nKompres dingin dengan sendok yang telah didinginkan atau irisan mentimun selama beberapa menit setiap pagi.\r\nHindari konsumsi garam berlebih yang bisa menyebabkan retensi air dan pembengkakan di bawah mata.\r\nTidur dengan posisi kepala sedikit terangkat untuk mencegah cairan berkumpul di sekitar mata.\r\nKonsumsi makanan kaya vitamin K dan antioksidan untuk membantu sirkulasi darah yang baik di area mata.', '2024-06-18 12:12:47', '2024-06-18 12:12:47'),
(4, 'Tips Melindungi Kulit dari Sinar Matahari', 'Perlindungan terhadap sinar matahari sangat penting untuk menjaga kesehatan kulit jangka panjang. Gunakan tabir surya dengan SPF minimal 30 setiap hari, bahkan saat cuaca mendung, untuk melindungi kulit dari sinar UV yang merusak. Aplikasikan ulang setiap dua jam, terutama setelah berenang atau berkeringat.\r\n\r\nLangkah-langkah tambahan yang bisa diambil:\r\n\r\nKenakan pakaian pelindung seperti topi lebar dan kacamata hitam saat berada di luar ruangan.\r\nGunakan pakaian dengan bahan yang memiliki perlindungan UV.\r\nPilih tempat yang teduh saat berada di luar ruangan, terutama antara pukul 10 pagi hingga 4 sore.\r\nGunakan produk perawatan kulit yang mengandung antioksidan untuk memberikan perlindungan tambahan dari radikal bebas yang dihasilkan oleh sinar UV.', '2024-06-18 12:12:47', '2024-06-18 12:12:47'),
(5, 'Trik Menjaga Kulit Tetap Bercahaya', 'Untuk menjaga kulit tetap bercahaya, rutin eksfoliasi kulit satu hingga dua kali seminggu dengan scrub lembut atau produk eksfoliasi kimia yang mengandung AHA atau BHA. Eksfoliasi membantu mengangkat sel kulit mati dan merangsang regenerasi sel kulit baru. Pastikan juga untuk selalu mengaplikasikan pelembap setelah eksfoliasi untuk menjaga kelembapan kulit.\r\n\r\nBerikut beberapa trik tambahan:\r\n\r\nKonsumsi makanan kaya antioksidan seperti buah beri dan sayuran hijau.\r\nMinum cukup air setiap hari untuk menjaga hidrasi dan elastisitas kulit dari dalam.\r\nGunakan masker wajah yang mengandung bahan-bahan pencerah seperti vitamin C secara rutin.\r\nHindari stres dan cukup tidur untuk membantu proses regenerasi kulit dan menjaga kulit tetap segar dan bercahaya.', '2024-06-18 12:12:47', '2024-06-18 12:12:47'),
(6, 'Tips Mengatasi Psoriasis', 'Psoriasis adalah kondisi kulit kronis yang menyebabkan bercak merah bersisik pada kulit. Untuk mengelola psoriasis, penting untuk menjaga kulit tetap lembap dengan menggunakan pelembap tebal yang mengandung bahan seperti shea butter atau minyak zaitun. Mandi dengan air hangat (bukan panas) dan menambahkan minyak mandi atau oatmeal kolloid juga dapat membantu menenangkan kulit.\r\n\r\nBeberapa langkah tambahan:\r\n- Hindari pemicu seperti stres, infeksi, atau cedera kulit.\r\n- Gunakan krim atau salep yang diresepkan oleh dokter, seperti kortikosteroid atau vitamin D analog.\r\n- Pertimbangkan terapi cahaya (fototerapi) di bawah pengawasan medis.\r\n- Konsumsi makanan yang kaya omega-3 seperti ikan berlemak untuk mengurangi peradangan.', '2024-06-18 14:01:01', '2024-06-18 14:01:01'),
(7, 'Trik Mengatasi Eksim', 'Eksim atau dermatitis atopik adalah kondisi kulit yang menyebabkan kulit gatal, merah, dan meradang. Menjaga kulit tetap lembap adalah kunci dalam mengelola eksim. Gunakan pelembap yang bebas pewangi dan alkohol, serta hindari sabun dan deterjen yang keras. Mandi dengan air hangat dan menggunakan sabun lembut dapat membantu menjaga kelembapan kulit.\r\n\r\nLangkah-langkah tambahan untuk mengatasi eksim:\r\n- Hindari pemicu eksim seperti debu, bulu hewan peliharaan, dan deterjen.\r\n- Gunakan pakaian yang terbuat dari bahan alami seperti katun untuk mengurangi iritasi.\r\n- Oleskan krim atau salep kortikosteroid yang diresepkan oleh dokter untuk mengurangi peradangan.\r\n- Jaga kuku tetap pendek untuk mencegah kerusakan kulit akibat garukan.', '2024-06-18 14:01:01', '2024-06-18 14:01:01'),
(8, 'Cara Mengobati Jerawat Batu (Cystic Acne)', 'Jerawat batu adalah bentuk jerawat yang parah dan menyakitkan yang berkembang di bawah kulit. Perawatan jerawat batu memerlukan pendekatan yang lebih intensif dibandingkan jerawat biasa. Gunakan pembersih wajah yang mengandung benzoyl peroxide atau salicylic acid, dan hindari memencet jerawat karena dapat menyebabkan bekas luka yang dalam.\r\n\r\nLangkah-langkah tambahan:\r\n- Konsultasikan dengan dokter kulit untuk mendapatkan resep obat, seperti antibiotik atau isotretinoin.\r\n- Gunakan retinoid topikal untuk membantu mencegah pori-pori tersumbat.\r\n- Terapkan kompres hangat pada area yang terkena untuk mengurangi peradangan dan nyeri.\r\n- Pertimbangkan prosedur medis seperti suntikan kortikosteroid atau terapi laser untuk kasus yang sangat parah.', '2024-06-18 14:01:01', '2024-06-18 14:01:01'),
(9, 'Tips Mengatasi Kulit Gatal Karena Alergi (Dermatitis Kontak)', 'Dermatitis kontak terjadi ketika kulit bereaksi terhadap zat tertentu, menyebabkan gatal, merah, dan ruam. Langkah pertama adalah mengidentifikasi dan menghindari alergen atau iritan yang menyebabkan reaksi. Cuci area yang terkena dengan air bersih dan sabun lembut untuk menghilangkan zat penyebab alergi dari kulit.\r\n\r\nLangkah-langkah tambahan untuk meredakan gejala:\r\n- Gunakan krim atau salep antihistamin untuk mengurangi gatal.\r\n- Oleskan krim kortikosteroid untuk mengurangi peradangan.\r\n- Kompres dingin dapat membantu mengurangi rasa gatal dan bengkak.\r\n- Konsultasikan dengan dokter jika gejala tidak membaik atau memburuk.', '2024-06-18 14:01:01', '2024-06-18 14:01:01'),
(10, 'Trik Mengatasi Infeksi Jamur pada Kulit (Tinea)', 'Infeksi jamur pada kulit, seperti tinea atau kurap, dapat menyebabkan ruam bersisik dan gatal. Untuk mengobati infeksi jamur, gunakan krim antijamur yang dijual bebas atau sesuai resep dokter. Jaga area yang terkena tetap bersih dan kering, karena jamur berkembang biak di lingkungan yang lembap.\r\n\r\nLangkah-langkah tambahan untuk mengatasi infeksi jamur:\r\n- Hindari berbagi handuk, pakaian, atau barang pribadi lainnya dengan orang lain.\r\n- Ganti pakaian dalam dan kaus kaki setiap hari, terutama jika berkeringat.\r\n- Gunakan bedak antijamur untuk membantu menjaga area kulit tetap kering.\r\n- Cuci tangan setelah merawat area yang terkena untuk mencegah penyebaran infeksi.', '2024-06-18 14:01:01', '2024-06-18 14:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(21) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `address`, `password`, `createdAt`, `updatedAt`) VALUES
('13yzI_Ktu0FNQ3mC', 'Krisna Dian', 'krisnadian12@gmail.com', '-', '8774ee4207a8e202b53915b0a799ea75', '2024-06-18 18:34:28', '2024-06-18 18:34:28'),
('3ZIQzXfLt5AEKFGO', NULL, 'krisnakrisna@gmail.com', '-', '25d55ad283aa400af464c76d713c07ad', '2024-06-17 10:29:50', '2024-06-17 03:49:23'),
('AKYNuIl1Kzmu39pt', 'tencell 10', 'tencell717@gmail.com', '-', 'fbce8c172ac4a5af19716a48ad9e5c76', '2024-06-20 13:23:17', '2024-06-20 13:23:17'),
('Ci9yOlgd3BHDg6zv', 'Gilang Gumelar', 'ggumelar76@gmail.com', '-', 'f4154354e4149c8b03c5b3a1979b98b5', '2024-06-20 21:35:00', '2024-06-20 21:35:00'),
('cV5RjB-h8IJROoUb', 'kodekreatif', 'kodekreatif31@gmail.com', '-', '69f7149f9915f370315a7f6d95c6d584', '2024-06-20 17:15:07', '2024-06-20 17:15:07'),
('FXasnMd7QZqhPueq', 'Dean 123', 'dean37850@gmail.com', '-', 'c62064cf3a5eef0e4d68f06ea3615f1d', '2024-06-20 17:05:24', '2024-06-20 17:05:24'),
('idCImGV2eogu6Mjp', 'Arfan Hasif', 'arfanhasif88@gmail.com', '-', '5e13f97ba98f0f7ded5d8a29173b2043', '2024-06-19 11:22:03', '2024-06-19 11:22:03'),
('KkgAzq8Tb09-slFm', 'Gilang Gumelar', '20210810126@uniku.ac.id', '-', '013314cfb1d3bc7d124a5ca3641e08bf', '2024-06-20 22:48:12', '2024-06-20 22:48:12'),
('mv2NFOP8W4wz0kUr', 'Gilang Gumelar', 'gilangputra295@gmail.com', '-', '24b14b66756a1eac08acb1b5ca26c93b', '2024-06-20 20:43:16', '2024-06-20 20:43:16'),
('user-6OZQX75L0CaSBAD_', 'rafly', 'rafly30@gmail.com', NULL, '62c8ad0a15d9d1ca38d5dee762a16e01', '2024-06-18 19:19:36', '2024-06-18 12:21:30'),
('user-IjgINIwoT01twowc', 'Agum Pratama', 'gugum321@gmail.com', NULL, '5ecdeab1723615662a5ed6537fd8c3bc', '2024-06-18 19:33:43', '2024-06-18 19:33:43'),
('user-JIxQSkBiXGZVJnaT', 'Coba1', 'coba1@gmail.com', NULL, '4b52254f5da1c40c5e25075c9945a04e', '2024-06-18 19:24:19', '2024-06-18 19:24:19'),
('user-QTO-vwstCqGpAOHe', NULL, 'coba@gmail.com', NULL, '4b52254f5da1c40c5e25075c9945a04e', '2024-06-18 19:17:04', '2024-06-18 19:17:04'),
('xDIaIdk2-BnGEmpL', 'Andin Arfan', 'andinarfan090@gmail.com', '-', '1eeb89bdfe6b26c69d8f1fbcbb6e830d', '2024-06-21 17:12:11', '2024-06-21 17:12:11');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `set_createdAt_updatedAt` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.createdAt = CONVERT_TZ(NOW(), 'UTC', 'Asia/Jakarta');
    SET NEW.updatedAt = CONVERT_TZ(NOW(), 'UTC', 'Asia/Jakarta');
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
