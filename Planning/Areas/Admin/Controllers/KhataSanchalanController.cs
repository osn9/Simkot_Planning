using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.DarkhastaFormViewModel;
using Planning.Areas.Admin.Providers.DarkhastaFormProvider;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Controllers
{
    public class KhataSanchalanController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        DarkhastaFormProvider pro = new DarkhastaFormProvider();

        public ActionResult Index()
        {
            DarkhastaFormViewModel model = new DarkhastaFormViewModel();
            model.DarkhastaFormViewModelList = pro.GetDarkhastaFormList();
            return View(model);
        }
        public ActionResult CreateDarkhastaForm()
        {
            DarkhastaFormViewModel model = new DarkhastaFormViewModel();
            return View();
        }

        [HttpPost]
        public ActionResult CreateDarkhastaForm(DarkhastaFormViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {

                model.Darkhasta_Form_Id = pro.InsertDarkhastaForm(model);
                TempData["Msg"] = "सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("DarkhastaReport", new { darkhastaFormId = model.Darkhasta_Form_Id });
            }
        }

        public ActionResult EditDarkhastaForm(int id)
        {
            DarkhastaFormViewModel model = new DarkhastaFormViewModel();
            model = pro.GetDarkhastaFormById(id);
            return View(model);
        }

        [HttpPost]
        public ActionResult EditDarkhastaForm(DarkhastaFormViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateDarkhastaForm(model);
                TempData["Msg"] = "सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("Index");
            }
        }

        public ActionResult DarkhastaReport(int darkhastaFormId)
        {
            DarkhastaFormViewModel model = new DarkhastaFormViewModel();
            model.DarkhastaFormViewModelList = pro.GetDarkhastaFormList(darkhastaFormId);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }

        public ActionResult DeleteDarkhastaForm(int id)
        {
            if (pro.DeleteDarkhastaForm(id))
            {
                TempData["SuccessMsg"] = "सफल भयो";
            }
            else
            {
                TempData["Msg"] = "असफल भयो ";
            }
            return RedirectToAction("Index");
        }
    }
}
