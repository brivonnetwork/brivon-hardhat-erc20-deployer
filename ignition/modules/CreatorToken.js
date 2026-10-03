import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("CreatorTokenModule", (module) => {
  const creatorToken = module.contract("CreatorToken", [
    "Brivon Creator Token",
    "BCT",
    1_000_000n,
  ]);

  return { creatorToken };
});
