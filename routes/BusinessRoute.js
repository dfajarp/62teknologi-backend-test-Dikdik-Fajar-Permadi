import express from "express";
import {
  getBusiness,
  getBusinessById,
  createBusiness,
  updateBusiness,
  deleteBusiness,
  searchBusiness
} from "../controllers/BusinessController.js";

const router = express.Router();

router.get("/business", getBusiness);
router.get("/business/search", searchBusiness);
router.get("/business/:id", getBusinessById);
router.post("/business", createBusiness);
router.patch("/business/:id", updateBusiness);
router.delete("/business/:id", deleteBusiness);

export default router;
