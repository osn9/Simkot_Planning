using Planning.Areas.Admin.Models;
using Planning.Areas.Admin.Providers.SetupProvider;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Planning.Areas.Admin.Controllers.SetupController
{
    public class ItemController : Controller
    {
        // GET: Admin/Item
        ItemProvider pro = new ItemProvider();
        public ActionResult Index()
        {
            ItemViewModel model = new ItemViewModel();
            model.list = pro.GetList();

            return View(model);
        }

        public ActionResult Create(int? id )
        {
            if (id !=null)
            {
                ItemViewModel model = new ItemViewModel();
                model = pro.GetData(id ?? 0);
                return View(model);

            }

            return View();
        }
        [HttpPost]
        public ActionResult Create(ItemViewModel model)
        {
            if (model.itemId > 0)
            {
                if (pro.Update(model))
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
                if (pro.Insert(model))
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
                if (pro.SoftDelete(id))
                {
                    status = true;
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }
    }
}