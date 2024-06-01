-- CreateTable
CREATE TABLE `jamur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NOT NULL,
    `jenis` VARCHAR(191) NOT NULL,
    `gambar` VARCHAR(191) NOT NULL,
    `introduction` VARCHAR(191) NOT NULL,
    `planting_media` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
