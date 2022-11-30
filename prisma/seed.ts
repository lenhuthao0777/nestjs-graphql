import { PrismaClient } from '@prisma/client';
import { v4 as uuid } from 'uuid';
const prisma = new PrismaClient();

async function main() {
  await donation();
}

async function donation() {
  await prisma.donation.deleteMany();
  const seed = await prisma.donation.create({
    data: {
      uuid: uuid(),
      email: 'thanh.le@gmail.com',
      displayName: 'thanh',
      count: 5,
    },
  });

  console.log(seed);
}

// Run seed data
main().catch((error) => {
  console.log(error);
});
