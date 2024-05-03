const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");



module.exports = buildModule("Student", (m) => {
const dbm=m.contract("StudentDatabase")
  

  return { dbm };
});
