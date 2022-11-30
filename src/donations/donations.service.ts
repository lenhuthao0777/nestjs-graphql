import { PrismaService } from 'src/prisma/prisma.service';
import { Injectable } from '@nestjs/common';
import { CreateDonationInput } from './dto/create-donation.input';
import { Prisma } from '@prisma/client';

@Injectable()
export class DonationsService {
  constructor(private prismaService: PrismaService) {}
  create(createDonationInput: CreateDonationInput) {
    return createDonationInput;
  }

  async findAll() {
    const data = await this.prismaService.donation.findMany();
    return data;
  }

  async findOne(donationWhereUniqueInput: Prisma.DonationWhereUniqueInput) {
    return await this.prismaService.donation.findUnique({
      where: {
        id: donationWhereUniqueInput.id,
      },
    });
  }
}
