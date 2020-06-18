using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Areas.Admin.Providers.PlanningAnusuchiProvider;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Controllers.PlanningAnusuchiController
{
    [Authorize]
    public class PlanningAnusuchi4Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi4Provider pro = new PlanningAnusuchi4Provider();
        public ActionResult Index()
        {
            Anusuchi4ViewModel model = new Anusuchi4ViewModel();
            model.Anusuchi4ViewModelList = pro.GetAnusuchi4List();
            return View(model);
        }

        public ActionResult Anusuchi4()
        {
            Anusuchi4ViewModel model = new Anusuchi4ViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Anusuchi4(Anusuchi4ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.AnuSuchi4_Id = pro.InsertAnusuchi4(model);
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भयो। ";
                return RedirectToAction("Anusuchi4Report", new { anuSuchi4_Id = model.AnuSuchi4_Id });
            }
        }

        public ActionResult Anusuchi4Report(int anuSuchi4_Id)
        {
            Anusuchi4ViewModel model = new Anusuchi4ViewModel();
            model.Anusuchi4ViewModelList = pro.getAnusuchi4List(anuSuchi4_Id);
            return View(model);
        }

        public ActionResult EditAnusuchi4(int id)
        {
            Anusuchi4ViewModel model = new Anusuchi4ViewModel();
            model = pro.getAnusuchi4List(id).SingleOrDefault();
            return View(model);
        }

        [HttpPost]
        public ActionResult EditAnusuchi4(Anusuchi4ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi4(model);
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भयो। ";
                return RedirectToAction("Index");
            }
        }



        //For SoluDudhkunda Nagarpalika
        public ActionResult PlanningSamjhautaAnusuchi4(int? id)
        {
            Anusuchi4ViewModel model = new Anusuchi4ViewModel();
            var data = ent.AnuSuchi4.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                model = pro.getPlanningSamjhautaAnusuchi4List(id ?? 0).SingleOrDefault();
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaAnusuchi4ListFromSamjhauta(id ?? 0).SingleOrDefault();
                return View(model);
            }
        }

        [HttpPost]
        public ActionResult PlanningSamjhautaAnusuchi4(Anusuchi4ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdatePlanningSamjhautaAnusuchi4(model);
                TempData["Msg"] = "खर्च सार्वजनिक सूचना फारम सुरछित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }



    }
}