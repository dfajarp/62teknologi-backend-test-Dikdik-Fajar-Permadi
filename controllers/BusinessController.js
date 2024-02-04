import { v4 as uuidv4 } from "uuid";
import Business from "../models/BusinessModel.js";
import Category from "../models/CategoryModel.js";
import Transactions from "../models/TransactionModel.js";

import { Op, Sequelize } from "sequelize";

export const getBusiness = async (req, res) => {
  try {
    const businesses = await Business.findAll({
      include: [
        {
          model: Category,
          as: "categories",
          attributes: ["alias", "title"],
        },
        {
          model: Transactions,
          as: "transactions",
          attributes: ["name_transaction"],
        },
      ],
    });

    const businessesWithCoordinates = businesses.map((business) => {
      const {
        id,
        alias,
        name,
        image_url,
        is_closed,
        url,
        review_count,
        rating,
        latitude,
        longitude,
        price,
        address1,
        address2,
        address3,
        city,
        zip_code,
        country,
        state,
        phone,
        distance,
        categories,
        transactions,
      } = business;

      const formattedCategories = categories.map((category) => ({
        alias: category.alias,
        title: category.title,
      }));

      const formattedTransactions = transactions.map(
        (transaction) => transaction.name_transaction
      );

      return {
        id,
        alias,
        name,
        image_url,
        is_closed,
        url,
        review_count,
        categories: formattedCategories,
        rating: parseFloat(rating),
        coordinates: {
          latitude,
          longitude,
        },
        transactions: formattedTransactions,
        price,
        location: {
          address1,
          address2,
          address3,
          city,
          zip_code,
          country,
          state,
          display_address: [
            address1,
            address2,
            `${city}, ${state} ${zip_code}`,
          ],
        },
        phone,
        display_phone: phone ? formatNomorTelepon(phone) : null,
        distance: parseFloat(distance),
      };
    });

    res.status(200).json(businessesWithCoordinates);
  } catch (error) {
    console.error("Error in getBusiness:", error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const getBusinessById = async (req, res) => {
  try {
    const response = await Business.findOne({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const createBusiness = async (req, res) => {
  try {
    const businessDataArray = req.body;

    // Generate UUIDs for the id field for each business data object
    const businessesWithIds = businessDataArray.map((businessData) => ({
      ...businessData,
      id: uuidv4(),
    }));

    // Create the businesses with the updated data using bulkCreate
    await Business.bulkCreate(businessesWithIds, {
      include: [
        { model: Category, as: "categories" },
        { model: Transactions, as: "transactions" },
      ],
    });

    res.status(201).json({ msg: "Create data successfully" });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// export const createBusiness = async (req, res) => {
//   try {
//     const businessData = req.body;
//     // Generate a UUID for the id field
//     businessData.id = uuidv4();

//     // Create the business with the updated data
//     Business.create(businessData, {
//       include: [
//         { model: Category, as: "categories" },
//         { model: Transactions, as: "transactions" },
//       ],
//     });

//     res.status(201).json({ msg: "Create data successfully" });
//   } catch (error) {
//     console.error(error.message);
//     res.status(500).json({ error: "Internal Server Error" });
//   }
// };

export const updateBusiness = async (req, res) => {
  try {
    // Extract data from the request body
    const {
      alias,
      name,
      image_url,
      is_closed,
      url,
      review_count,
      rating,
      latitude,
      longitude,
      price,
      address1,
      address2,
      address3,
      city,
      zip_code,
      country,
      state,
      phone,
      distance,
      categories,
      transactions,
    } = req.body;

    // Update the business in the database
    await Business.update(
      {
        alias,
        name,
        image_url,
        is_closed,
        url,
        review_count,
        rating,
        latitude,
        longitude,
        price,
        address1,
        address2,
        address3,
        city,
        zip_code,
        country,
        state,
        phone,
        distance,
      },
      {
        where: {
          id: req.params.id,
        },
      }
    );

    // Update categories and transactions

    // First, delete all existing categories and transactions related to the business
    await Category.destroy({
      where: {
        businessId: req.params.id,
      },
    });

    await Transactions.destroy({
      where: {
        businessId: req.params.id,
      },
    });

    // Then, recreate categories and transactions
    await Category.bulkCreate(
      categories.map((category) => ({ ...category, businessId: req.params.id }))
    );
    await Transactions.bulkCreate(
      transactions.map((transaction) => ({
        ...transaction,
        businessId: req.params.id,
      }))
    );

    res.status(200).json({ msg: "Business updated successfully" });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const deleteBusiness = async (req, res) => {
  try {
    await Category.destroy({
      where: {
        businessId: req.params.id,
      },
    });

    await Transactions.destroy({
      where: {
        businessId: req.params.id,
      },
    });

    await Business.destroy({
      where: {
        id: req.params.id,
      },
    });

    res.status(200).json({ msg: "Data Deleted successfully" });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const searchBusiness = async (req, res) => {
  try {
    const params = req.query;
    const { limit, offset } = req.query;
    if ("location" in params || "latitude" in params || "longitude" in params) {
      const whereClauseCategories = {};

      if (params.categories !== null && params.categories !== undefined) {
        whereClauseCategories.title = {
          [Op.like]: `%${params.categories}%`,
        };
      }

      const whereClauseBusiness = {
        [Op.or]: [
          {
            country: {
              [Op.substring]: params.location ? params.location : "",
            },
          },
          {
            state: {
              [Op.substring]: params.location ? params.location : "",
            },
          },
          {
            city: {
              [Op.substring]: params.location ? params.location : "",
            },
          },
          {
            zip_code: {
              [Op.substring]: params.location ? params.location : "",
            },
          },
        ],
      };

      // Tambahkan kondisi WHERE untuk latitude hanya jika nilainya tidak null
      if (params.latitude !== null && params.latitude !== undefined) {
        whereClauseBusiness.latitude = {
          [Op.startsWith]: parseFloat(params.latitude).toFixed(1),
        };
      }
      if (params.longitude !== null && params.longitude !== undefined) {
        whereClauseBusiness.longitude = {
          [Op.startsWith]: parseFloat(params.longitude).toFixed(1),
        };
      }

      if (params.price !== null && params.price !== undefined) {
        whereClauseBusiness.price = {
          [Op.eq]: aliasPrice(params.price),
        };
      }

      const { count, rows } = await Business.findAndCountAll({
        include: [
          {
            model: Category,
            as: "categories",
            attributes: ["alias", "title"],
            where: whereClauseCategories,
          },
          {
            model: Transactions,
            as: "transactions",
            attributes: ["name_transaction"],
          },
        ],
        where: whereClauseBusiness,
        limit: limit ? parseInt(limit) : 5,
        offset: offset ? parseInt(offset) : 0,
        distinct: true,
      });

      const businessesWithCoordinates = rows.map((business) => {
        const {
          id,
          alias,
          name,
          image_url,
          is_closed,
          url,
          review_count,
          rating,
          latitude,
          longitude,
          price,
          address1,
          address2,
          address3,
          city,
          zip_code,
          country,
          state,
          phone,
          distance,
          categories,
          transactions,
        } = business;

        const formattedCategories = categories.map((category) => ({
          alias: category.alias,
          title: category.title,
        }));

        const formattedTransactions = transactions.map(
          (transaction) => transaction.name_transaction
        );

        return {
          id,
          alias,
          name,
          image_url,
          is_closed,
          url,
          review_count,
          categories: formattedCategories,
          rating: parseFloat(rating),
          coordinates: {
            latitude,
            longitude,
          },
          transactions: formattedTransactions,
          price,
          location: {
            address1,
            address2,
            address3,
            city,
            zip_code,
            country,
            state,
            display_address: [
              address1,
              address2,
              `${city}, ${state} ${zip_code}`,
            ],
          },
          phone,
          display_phone: phone ? formatNomorTelepon(phone) : null,
          distance: parseFloat(distance),
        };
      });

      const ret = {
        businesses: businessesWithCoordinates,
        total: count,
      };

      res.status(200).json(ret);
    } else {
      res.status(400).json({
        error: {
          code: "VALIDATION_ERROR",
          description: "Please specify a location or a latitude and longitude",
        },
      });
    }
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

function formatNomorTelepon(nomor) {
  // Menghilangkan karakter selain angka
  let nomorBersih = nomor.replace(/\D/g, "");

  // Mengambil area code
  let areaCode = nomorBersih.substring(0, 3);

  // Mengambil tiga digit berikutnya
  let tigaDigitBerikutnya = nomorBersih.substring(3, 6);

  // Mengambil empat digit terakhir
  let empatDigitTerakhir = nomorBersih.substring(6);

  // Menggabungkan dalam format yang diinginkan
  let nomorFormatted =
    "(" + areaCode + ") " + tigaDigitBerikutnya + "-" + empatDigitTerakhir;

  return nomorFormatted;
}

function aliasPrice(param) {
  let price = "";
  if (param == 1) {
    price = "$";
  } else if (param == 2) {
    price = "$$";
  } else if (param == 3) {
    price = "$$$";
  } else if (param == 4) {
    price = "$$$$";
  }

  return price;
}
