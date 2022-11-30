import { Field, ObjectType, Int } from '@nestjs/graphql';

ObjectType();
export class Donation {
  @Field(() => Int)
  id: number;

  @Field()
  title: string;
}
