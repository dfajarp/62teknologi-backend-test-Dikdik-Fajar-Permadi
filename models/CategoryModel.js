import { Sequelize } from "sequelize";
import db from "../config/Databasee.js";

const { DataTypes } = Sequelize;

const Category = db.define(
  "categories",
  {
   alias : DataTypes.STRING,
   title : DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

export default Category;

(async () => {
  const Business = (await import("./BusinessModel.js")).default;
  Category.belongsTo(Business, { foreignKey: 'businessId' });

  await db.sync();
})();
