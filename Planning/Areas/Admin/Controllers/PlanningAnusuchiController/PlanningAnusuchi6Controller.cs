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
    public class PlanningAnusuchi6Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi6Provider pro = new PlanningAnusuchi6Provider();
        public ActionResult Index()
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            model.Anusuchi6ViewModelList = pro.GetAnusuchi6List();
            return View(model);
        }

        public ActionResult Anusuchi6()
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Anusuchi6(Anusuchi6ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.Anusuchi6_Id = pro.InsertAnusuchi6(model);
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भयो। ";
                return RedirectToAction("Anusuchi6Report", new { anuSuchi6_Id = model.Anusuchi6_Id });
            }
        }

        public ActionResult Anusuchi6Report(int anuSuchi6_Id)
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            model.Anusuchi6ViewModelList = pro.getAnusuchi6List(anuSuchi6_Id);
            model.Anusuchi6_SolutionsViewModelList = pro.GetAnusuchi6SolutionsList(anuSuchi6_Id);
            return View(model);

            //Anusuchi6 model = new Anusuchi6();
            //model = pro.getAnusuchi6List(anuSuchi6_Id);
            //return View(model);
        }

        public ActionResult EditAnusuchi6(int id)
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            model = pro.getAnusuchi6List(id).SingleOrDefault();
            model.Anusuchi6_SolutionsViewModelList = pro.GetAnusuchi6SolutionsList(id);
            return View(model);
        }

        [HttpPost]
        public ActionResult EditAnusuchi6(Anusuchi6ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi6(model);
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भयो। ";
                return RedirectToAction("Index");
            }
        }

        public ActionResult AddMore()
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            return PartialView("_PragatiPratibedanSolutions", model);
        }

        //For SoluDudhkunda Nagarpalika
        public ActionResult PlanningSamjhautaAnusuchi6(int? id)
        {
            Anusuchi6ViewModel model = new Anusuchi6ViewModel();
            var data = ent.Anusuchi6.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                model = pro.getPlanningSamjhautaAnusuchi6List(id ?? 0).SingleOrDefault();
                model.Anusuchi6_SolutionsViewModelList = pro.GetAnusuchi6SolutionsList(model.Anusuchi6_Id);
                //model.Anusuchi6_SolutionsViewModelList = pro.GetAnusuchi6SolutionsListForAnusuchi(model.Anusuchi6_Id);
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaAnusuchi6ListFromSamjhauta(id ?? 0).SingleOrDefault();
                model.Anusuchi6_SolutionsViewModelList = pro.GetAnusuchi6SolutionsList(id ?? 0);
                return View(model);
            }
        }

        [HttpPost]
        public ActionResult PlanningSamjhautaAnusuchi6(Anusuchi6ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdatePlanningSamjhautaAnusuchi6(model);
                TempData["Msg"] = "उपभोक्ता समितिको भोेतिक तथा वित्तिय प्रगति प्रतिवेदन सुरछित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }


    }
}