import { Sequelize } from "sequelize";
import db from "../config/Databasee.js";

const { DataTypes } = Sequelize;

const Transactions = db.define(
  "transactions",
  {
    name_transaction: {
      type: DataTypes.STRING(100),
    },
  },
  {
    freezeTableName: true,
  }
);

export default Transactions;

(async () => {
  const Business = (await import("./BusinessModel.js")).default;
  Transactions.belongsTo(Business, { foreignKey: 'businessId' });
  await db.sync();
})();
