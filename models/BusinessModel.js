import { Sequelize } from "sequelize";
import db from "../config/Databasee.js";
import Category from "./CategoryModel.js";
import Transactions from "./TransactionModel.js";

const {DataTypes} =  Sequelize;

const Business = db.define('business', {
    id: {
        type: DataTypes.STRING(100),
        primaryKey: true
      },
      alias: {
        type: DataTypes.STRING(255),
      },
      name: {
        type: DataTypes.STRING(255),
      },
      image_url: {
        type: DataTypes.STRING(255),
      },
      is_closed: {
        type: DataTypes.BOOLEAN,
      },
      url: {
        type: DataTypes.STRING(255),
      },
      review_count: {
        type: DataTypes.INTEGER,
      },
      rating: {
        type: DataTypes.DECIMAL(3, 2),
      },
      latitude: {
        type: DataTypes.DECIMAL(10, 6),
      },
      longitude: {
        type: DataTypes.DECIMAL(10, 6),
      },
      price: {
        type: DataTypes.STRING(10),
      },
      address1: {
        type: DataTypes.STRING(255),
      },
      address2: {
        type: DataTypes.STRING(255),
      },
      address3: {
        type: DataTypes.STRING(255),
      },
      city: {
        type: DataTypes.STRING(100),
      },
      country: {
        type: DataTypes.STRING(100),
      },
      state: {
        type: DataTypes.STRING(100),
      },
      zip_code: {
        type: DataTypes.STRING(20),
      },
      phone: {
        type: DataTypes.STRING(20),
      },
      distance: {
        type: DataTypes.DECIMAL(10, 2),
      }
}, {
    freezeTableName: true
});
+

Business.hasMany(Category, { as: 'categories', foreignKey: 'businessId' });
Business.hasMany(Transactions, { as: 'transactions', foreignKey: 'businessId' });

export default Business;

(async()=> {
    await db.sync();
})();