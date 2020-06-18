using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.OrganizationSetupViewModel;
using Planning.Planning.Entities;
using System.Data;

namespace Planning.Areas.Admin.Controllers
{
    [Authorize]
    public class SartaController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        public ActionResult Index()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            model.SartaViewModelList = (from i in ent.Sarta_Setup
                                           select new OrganizationSetupViewModel
                                           {
                                               Sarta_Setup_Id = i.Sarta_Setup_Id,
                                               Description = i.Description,
                                           }).ToList();
            return View(model);
        }

        public ActionResult Create()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(OrganizationSetupViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var Sarta_SetupEntity = new Sarta_Setup()
                    {
                        Description = model.Description,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Sarta_Setup.Add(Sarta_SetupEntity);
                    ent.SaveChanges();
                }
                catch (Exception e)
                {
                }
            }
            return RedirectToAction("Index");
        }

        public ActionResult Edit(int id)
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            var data = ent.Sarta_Setup.Where(x => x.Sarta_Setup_Id == id).SingleOrDefault();
            model.Sarta_Setup_Id = data.Sarta_Setup_Id;
            model.Description = data.Description;
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Edit(OrganizationSetupViewModel model)
        {
            var data = ent.Sarta_Setup.Where(x => x.Sarta_Setup_Id == model.Sarta_Setup_Id).SingleOrDefault();
            data.Sarta_Setup_Id = model.Sarta_Setup_Id;
            data.Description = model.Description;
            data.UpdatedBy = model.UpdatedBy;
            data.UpdatedDate = DateTime.Now;
            ent.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult PartialIndex()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
                model = ent.Sarta_Setup.Select(x => new OrganizationSetupViewModel()
                {
                    Sarta_Setup_Id = x.Sarta_Setup_Id,
                    Description = x.Description
                }).FirstOrDefault();


            if (model==null)
            {
                OrganizationSetupViewModel models = new OrganizationSetupViewModel();
                return PartialView("PartialIndex", models);
            }
            //model = (from i in ent.Sarta_Setup
            //         select new OrganizationSetupViewModel
            //         {
            //             Sarta_Setup_Id = i.Sarta_Setup_Id,
            //             Description = i.Description,
            //         }).FirstOrDefault();
            // model.startdate = ent.Project_Entry_Detail.Where(x => x.Planning_Samjhauta_Id == id).FirstOrDefault().Project_Start_Date.ToString();
            // model.enddate= ent.Project_Entry_Detail.Where(x => x.Planning_Samjhauta_Id == id).FirstOrDefault().Project_End_Date.ToString();
            return PartialView("PartialIndex", model);
        }
    }
}