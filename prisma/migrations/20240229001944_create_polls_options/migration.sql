/*
  Warnings:

  - You are about to drop the `polls` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "polls";

-- CreateTable
CREATE TABLE "poll" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "created-at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update-at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "poll_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "poll-option" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "poll-id" TEXT NOT NULL,

    CONSTRAINT "poll-option_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "poll-option" ADD CONSTRAINT "poll-option_poll-id_fkey" FOREIGN KEY ("poll-id") REFERENCES "poll"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
