/*
  Warnings:

  - You are about to drop the `Artist` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Song` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Song" DROP CONSTRAINT "Song_singerId_fkey";

-- DropTable
DROP TABLE "Artist";

-- DropTable
DROP TABLE "Song";

-- CreateTable
CREATE TABLE "artist" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "artist_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "song" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "released" BOOLEAN NOT NULL DEFAULT false,
    "singerId" INTEGER,

    CONSTRAINT "song_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "artist_email_key" ON "artist"("email");

-- AddForeignKey
ALTER TABLE "song" ADD CONSTRAINT "song_singerId_fkey" FOREIGN KEY ("singerId") REFERENCES "artist"("id") ON DELETE SET NULL ON UPDATE CASCADE;
