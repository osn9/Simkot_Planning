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
    public class PlanningAnusuchi3Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi3Provider pro = new PlanningAnusuchi3Provider();
        public ActionResult Index()
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            model.Anusuchi3ViewModelList = pro.GetAnusuchi3List();
            return View(model);
        }

        public ActionResult Anusuchi3()
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Anusuchi3(Anusuchi3ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.AnuSuchi3_Id = pro.InsertAnusuchi3(model);
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भयो। ";
                return RedirectToAction("Anusuchi3Report", new { anuSuchi3_Id = model.AnuSuchi3_Id });
            }
        }

        public ActionResult Anusuchi3Report(int anuSuchi3_Id)
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            model.Anusuchi3ViewModelList = pro.getAnusuchi3List(anuSuchi3_Id);
            model.Anusuchi3IncomeViewModelList = pro.GetAnusuchi3IncomeList(anuSuchi3_Id);
            //model.Anusuchi3ExpensesViewModelList = pro.GetAnusuchi3ExpensesList(anuSuchi3_Id);
            //model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(anuSuchi3_Id);

            model.Anusuchi3ExpensesViewModelList = pro.GetAnusuchi3ExpensesList(anuSuchi3_Id).Where(x => x.Type == 1).ToList();
            model.Anusuchi3ExpensesViewModelList2 = pro.GetAnusuchi3ExpensesList(anuSuchi3_Id).Where(x => x.Type == 2).ToList();
            model.Anusuchi3ExpensesViewModelList3 = pro.GetAnusuchi3ExpensesList(anuSuchi3_Id).Where(x => x.Type == 3).ToList();
            model.Anusuchi3ExpensesViewModelList4 = pro.GetAnusuchi3ExpensesList(anuSuchi3_Id).Where(x => x.Type == 4).ToList();
            model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(anuSuchi3_Id).Where(x => x.Type == 1).ToList();
            model.Anusuchi3MaujatViewModelList2 = pro.GetAnusuchi3MaujatList(anuSuchi3_Id).Where(x => x.Type == 2).ToList();
            model.Anusuchi3MaujatViewModelList3 = pro.GetAnusuchi3MaujatList(anuSuchi3_Id).Where(x => x.Type == 3).ToList();
            model.Anusuchi3MaujatViewModelList4 = pro.GetAnusuchi3MaujatList(anuSuchi3_Id).Where(x => x.Type == 4).ToList();


            model.Anusuchi3WorkDivisionViewModelList = pro.GetAnusuchi3WorkDivisionList(anuSuchi3_Id);
            model.AnuSuchi3_Id = anuSuchi3_Id;
            return View(model);
        }

        public ActionResult EditAnusuchi3(int id)
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            model = pro.getAnusuchi3List(id).SingleOrDefault();
            model.Anusuchi3IncomeViewModelList = pro.GetAnusuchi3IncomeList(id);
            //model.Anusuchi3ExpensesViewModelList= pro.GetAnusuchi3ExpensesList(id);

            model.Anusuchi3ExpensesViewModelList = pro.GetAnusuchi3ExpensesList(id).Where(x => x.Type == 1).ToList();
            model.Anusuchi3ExpensesViewModelList2 = pro.GetAnusuchi3ExpensesList(id).Where(x => x.Type == 2).ToList();
            model.Anusuchi3ExpensesViewModelList3 = pro.GetAnusuchi3ExpensesList(id).Where(x => x.Type == 3).ToList();
            model.Anusuchi3ExpensesViewModelList4 = pro.GetAnusuchi3ExpensesList(id).Where(x => x.Type == 4).ToList();

            //model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(id);

            model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(id).Where(x => x.Type == 1).ToList();
            model.Anusuchi3MaujatViewModelList2 = pro.GetAnusuchi3MaujatList(id).Where(x => x.Type == 2).ToList();
            model.Anusuchi3MaujatViewModelList3 = pro.GetAnusuchi3MaujatList(id).Where(x => x.Type == 3).ToList();
            model.Anusuchi3MaujatViewModelList4 = pro.GetAnusuchi3MaujatList(id).Where(x => x.Type == 4).ToList();

            model.Anusuchi3WorkDivisionViewModelList = pro.GetAnusuchi3WorkDivisionList(id);
            return View(model);
        }

        [HttpPost]
        public ActionResult EditAnusuchi3(Anusuchi3ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi3(model);
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भयो। ";
                return RedirectToAction("Index");
            }
        }

        public ActionResult AddMoreIncome()
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            return PartialView("_Anusuchi3Income", model);
        }

        public ActionResult AddMoreMember()
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            return PartialView("_Anusuchi3Members", model);
        }


        //For SoluDudhkunda Nagarpalika
         
        public ActionResult PlanningSamjhautaAnusuchi3(int? id)
        {
            Anusuchi3ViewModel model = new Anusuchi3ViewModel();
            var data = ent.AnuSuchi3.Where(x => x.Planing_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                model = pro.getPlanningSamjhautaAnusuchi3List(id ?? 0).SingleOrDefault();
                model.Anusuchi3ViewModelList = pro.getAnusuchi3List(model.AnuSuchi3_Id);
                model.Anusuchi3IncomeViewModelList = pro.GetAnusuchi3IncomeList(model.AnuSuchi3_Id);
                model.Anusuchi3ExpensesViewModelList = pro.GetAnusuchi3ExpensesList(model.AnuSuchi3_Id).Where(x => x.Type == 1).ToList();
                model.Anusuchi3ExpensesViewModelList2 = pro.GetAnusuchi3ExpensesList(model.AnuSuchi3_Id).Where(x => x.Type == 2).ToList();
                model.Anusuchi3ExpensesViewModelList3 = pro.GetAnusuchi3ExpensesList(model.AnuSuchi3_Id).Where(x => x.Type == 3).ToList();
                model.Anusuchi3ExpensesViewModelList4 = pro.GetAnusuchi3ExpensesList(model.AnuSuchi3_Id).Where(x => x.Type == 4).ToList();
                model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(model.AnuSuchi3_Id).Where(x => x.Type == 1).ToList();
                model.Anusuchi3MaujatViewModelList2 = pro.GetAnusuchi3MaujatList(model.AnuSuchi3_Id).Where(x => x.Type == 2).ToList();
                model.Anusuchi3MaujatViewModelList3 = pro.GetAnusuchi3MaujatList(model.AnuSuchi3_Id).Where(x => x.Type == 3).ToList();
                model.Anusuchi3MaujatViewModelList4 = pro.GetAnusuchi3MaujatList(model.AnuSuchi3_Id).Where(x => x.Type == 4).ToList();
                model.Anusuchi3WorkDivisionViewModelList = pro.GetAnusuchi3WorkDivisionList(model.AnuSuchi3_Id);

                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaAnusuchi3ListFromSamjhauta(id ?? 0).SingleOrDefault();

                model.Anusuchi3ViewModelList = pro.getAnusuchi3List(id ?? 0);
                model.Anusuchi3IncomeViewModelList = pro.GetAnusuchi3IncomeList(id ?? 0);
                model.Anusuchi3ExpensesViewModelList = pro.GetAnusuchi3ExpensesList(id ?? 0).Where(x => x.Type == 1).ToList();
                model.Anusuchi3ExpensesViewModelList2 = pro.GetAnusuchi3ExpensesList(id ?? 0).Where(x => x.Type == 2).ToList();
                model.Anusuchi3ExpensesViewModelList3 = pro.GetAnusuchi3ExpensesList(id ?? 0).Where(x => x.Type == 3).ToList();
                model.Anusuchi3ExpensesViewModelList4 = pro.GetAnusuchi3ExpensesList(id ?? 0).Where(x => x.Type == 4).ToList();
                model.Anusuchi3MaujatViewModelList = pro.GetAnusuchi3MaujatList(id ?? 0).Where(x => x.Type == 1).ToList();
                model.Anusuchi3MaujatViewModelList2 = pro.GetAnusuchi3MaujatList(id ?? 0).Where(x => x.Type == 2).ToList();
                model.Anusuchi3MaujatViewModelList3 = pro.GetAnusuchi3MaujatList(id ?? 0).Where(x => x.Type == 3).ToList();
                model.Anusuchi3MaujatViewModelList4 = pro.GetAnusuchi3MaujatList(id ?? 0).Where(x => x.Type == 4).ToList();
                model.Anusuchi3WorkDivisionViewModelList = pro.GetAnusuchi3WorkDivisionList(id ?? 0);

                return View(model);
            }
        }

        [HttpPost]
        public ActionResult PlanningSamjhautaAnusuchi3(Anusuchi3ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdatePlanningSamjhautaAnusuchi3(model);
                TempData["Msg"] = "सार्वजनिक परिक्षण फारमको ढाँचा सुरछित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planing_Samjhauta_Id });
            }
        }

    }
}  