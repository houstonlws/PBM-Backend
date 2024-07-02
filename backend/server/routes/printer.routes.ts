import { Router } from "express";
import PrinterController from "../controllers/printer.controller";
import validateToken from "../middleware/ValidateToken";

const router = Router()

router.get('/printers' ,validateToken , PrinterController.getDepartmentPrinters)
router.post('/metrics' ,validateToken , PrinterController.getDepartmentMetrics)
router.put('/printer', validateToken, PrinterController.updatePrinter)
router.delete('/printer/:id', validateToken, PrinterController.deletePrinter)
router.post('/printer', validateToken, PrinterController.addPrinter)

export default router