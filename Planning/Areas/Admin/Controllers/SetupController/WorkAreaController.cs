using Planning.Areas.Admin.Models;
using Planning.Areas.Admin.Providers.SetupProvider;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Planning.Areas.Admin.Controllers.SetupController
{
    public class WorkAreaController : Controller
    {
        WorkAreaProvider pro = new WorkAreaProvider();
        // GET: Admin/WorkArea
        public ActionResult Index()
        {
            return View(pro.GetAllWorkAreaList());
        }

        [HttpPost]
        public ActionResult Create(WorkAreaViewModel model)
        {
            if (model.Work_Area_Id > 0)
            {
                if (pro.UpdateWorkArea(model))
                {
                    TempData["SuccessMsg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                }
                else
                {
                    TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस।";
                }
            }
            else
            {
                if (pro.InsertWorkArea(model))
                {
                    TempData["SuccessMsg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                }
                else
                {
                    TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस।";
                }
            }
            return RedirectToAction("Index");
        }

        public JsonResult Delete(int id)
        {
            bool status = false;
            if (id > 0)
            {
                if (pro.SoftDeleteWorkArea(id))
                {
                    status = true;
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }
    }
}