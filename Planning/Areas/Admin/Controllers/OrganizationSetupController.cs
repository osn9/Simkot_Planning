using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.OrganizationSetupViewModel;
using Planning.Planning.Entities;
using System.Data;
using System.IO;

namespace Planning.Areas.Admin.Controllers
{
    [Authorize]
    public class OrganizationSetupController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();

        public object EntityState { get; private set; }

        public ActionResult Index()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            model.OrganizationSetupViewModelList = (from i in ent.Organization_Setup
                                                    select new OrganizationSetupViewModel
                                                    {
                                                        Organization_Setup_Id=i.Organization_Setup_Id,
                                                        Organization_Name = i.Organization_Name,
                                                        Organization_Type=i.Organization_Type,
                                                        District_Name = i.District_Name,
                                                        State_Country = i.State_Country,
                                                        Image_Path=i.Image_Path,
                                                    }).ToList();
            return View(model);
        }

        public ActionResult Create()
        {
            OrganizationSetupViewModel model = new OrganizationSetupViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(OrganizationSetupViewModel model,HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                var imagePath = "/Documents/";
                if (file != null)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file.SaveAs(path);
                    model.Image_Path = imagePath + file.FileName;
                }
                try
                {
                    var Organization_SetupEntity = new Organization_Setup()
                    {
                        Organization_Name = model.Organization_Name,
                        Organization_Type = model.Organization_Type,
                        District_Name = model.District_Name,
                        State_Country = model.State_Country,
                        Image_Path=model.Image_Path,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Organization_Setup.Add(Organization_SetupEntity);
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
            var data = ent.Organization_Setup.Where(x => x.Organization_Setup_Id == id).SingleOrDefault();
            model.Organization_Setup_Id = data.Organization_Setup_Id;
            model.Organization_Name = data.Organization_Name;
            model.Organization_Type = data.Organization_Type;
            model.District_Name = data.District_Name;
            model.State_Country = data.State_Country;
            model.Image_Path = data.Image_Path;
            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(OrganizationSetupViewModel model, HttpPostedFileBase file)
        {
            var imagePath = "/Documents/";
            if (file != null)
            {
                var fileName = Path.GetFileName(file.FileName);
                var path = Path.Combine(Server.MapPath(imagePath), fileName);
                file.SaveAs(path);
                model.Image_Path = imagePath + file.FileName;
            }

            var data = ent.Organization_Setup.Where(x => x.Organization_Setup_Id == model.Organization_Setup_Id).SingleOrDefault();
            data.Organization_Setup_Id = model.Organization_Setup_Id;
            data.Organization_Name = model.Organization_Name;
            data.Organization_Type = model.Organization_Type;
            data.District_Name = model.District_Name;
            data.State_Country = model.State_Country;
            if(model.Image_Path==null)
            {
                data.Image_Path = data.Image_Path;
            }
            else
            {
                data.Image_Path = model.Image_Path;
            }
            ent.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}