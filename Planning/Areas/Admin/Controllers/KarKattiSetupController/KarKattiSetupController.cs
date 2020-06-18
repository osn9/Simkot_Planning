using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.OrganizationSetupViewModel;
using Planning.Planning.Entities;
using System.Data;

namespace Planning.Areas.Admin.Controllers.KarKattiSetupController
{
    [Authorize]
    public class KarKattiSetupController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        public ActionResult Index()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            model.KarKattiViewModelList = (from i in ent.Kar_Katti
                                           select new OrganizationSetupViewModel
                                           {
                                               Kar_Katti_Id = i.Kar_Katti_Id,
                                               Contigency = i.Contigency,
                                               SamajikSurekchya = i.SamajikSurekchya,
                                               BahalKar = i.BahalKar,
                                               AgrimShulka = i.AgrimShulka,
                                               Parishramik = i.Parishramik,
                                               MarmatSambhar=i.MarmatSambhar,
                                           }).ToList();
            return View(model);
        }

        public ActionResult Create()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(OrganizationSetupViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var Kar_KattiEntity = new Kar_Katti()
                    {
                        Contigency = model.Contigency,
                        SamajikSurekchya = model.SamajikSurekchya,
                        BahalKar = model.BahalKar,
                        AgrimShulka = model.AgrimShulka,
                        Parishramik = model.Parishramik,
                        MarmatSambhar=model.MarmatSambhar,
                        Status=true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Kar_Katti.Add(Kar_KattiEntity);
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
            var data = ent.Kar_Katti.Where(x => x.Kar_Katti_Id == id).SingleOrDefault();
            model.Kar_Katti_Id = data.Kar_Katti_Id;
            model.Contigency = data.Contigency;
            model.SamajikSurekchya = data.SamajikSurekchya;
            model.BahalKar = data.BahalKar;
            model.AgrimShulka = data.AgrimShulka;
            model.Parishramik = data.Parishramik;
            model.MarmatSambhar = data.MarmatSambhar;
            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(OrganizationSetupViewModel model)
        {
            var data = ent.Kar_Katti.Where(x => x.Kar_Katti_Id == model.Kar_Katti_Id).SingleOrDefault();
            data.Kar_Katti_Id = model.Kar_Katti_Id;
            data.Contigency = model.Contigency;
            data.SamajikSurekchya = model.SamajikSurekchya;
            data.BahalKar = model.BahalKar;
            data.AgrimShulka = model.AgrimShulka;
            data.Parishramik = model.Parishramik;
            data.MarmatSambhar = model.MarmatSambhar;
            data.Status = true;
            data.UpdatedBy = model.UpdatedBy;
            data.UpdatedDate = DateTime.Now;
            ent.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}