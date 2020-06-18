using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi5Provider
    {
        public List<Anusuchi5ViewModel> getAnusuchi5List(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi5ViewModel model = new Anusuchi5ViewModel();
                List<Anusuchi5ViewModel> List = (from a in ent.AnuSuchi5
                                                 where a.Planning_Samjhauta_Id == id
                                                 select new Anusuchi5ViewModel()
                                                 {
                                                     AnuSuchi5_Id = a.AnuSuchi5_Id,
                                                     Planning_Samjhauta_Id=a.Planning_Samjhauta_Id,
                                                     Project_Name=a.Project_Name,
                                                     Project_Run_Org = a.Project_Run_Org,
                                                     Upabhokta_Samiti_Adakshya = a.Upabhokta_Samiti_Adakshya,
                                                     Project_Estimate_Amount=a.Project_Estimate_Amount,
                                                     Municipality_Amount=a.Municipality_Amount,
                                                     Jana_Sahabhagita_Amount=a.Jana_Sahabhagita_Amount,
                                                     Other_Org_Source_Amount=a.Other_Org_Source_Amount,
                                                     Project_Contract_Date=a.Project_Contract_Date,
                                                     Project_End_Date=a.Project_End_Date,
                                                     Total_Project_Beneficiaries=a.Total_Project_Beneficiaries,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi5ViewModel> getPlanningSamjhautaList(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi5ViewModel model = new Anusuchi5ViewModel();
                List<Anusuchi5ViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join b in ent.Beneficiaries_Group on p.Planning_Samjhauta_Id equals b.Planning_Samjhauta_Id into benif
                                                         from b in benif.DefaultIfEmpty()
                                                         join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id into prodetail
                                                         from ps in prodetail.DefaultIfEmpty()
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id into proentry
                                                         from pe in proentry.DefaultIfEmpty()
                                                         join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                         from pd in samiti.DefaultIfEmpty()
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id into manjuri
                                                         from mp in manjuri.DefaultIfEmpty()
                                                         join am in ent.Aayojana_Maintainance on p.Planning_Samjhauta_Id equals am.Planning_Samjhauta_Id into maintenance
                                                         from am in maintenance.DefaultIfEmpty()
                                                         select new Anusuchi5ViewModel
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Project_Name = pe.Project_Name,
                                                             Project_Run_Org = p.Samjhauta_Org_Name,
                                                             Upabhokta_Samiti_Adakshya= pd.Adakshya,
                                                             Project_Estimate_Amount= pe.Project_estimated_Amount,
                                                             Municipality_Amount= ps.Municipality,
                                                             Jana_Sahabhagita_Amount= am.Janashram,
                                                             Other_Org_Source_Amount= ps.Other_Source,
                                                             Project_Contract_Date = mp.Municipality_Manjuri_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Total_Male=b.Total_Male,
                                                             Total_Female= b.Total_Female,
                                                             Status =p.Status,
                                                             DeletedDate=p.DeletedDate,
                                                         }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public int UpdateAnusuchi5(Anusuchi5ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi5.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                if (data != null)
                {
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.AnuSuchi5_Id = model.AnuSuchi5_Id;
                    data.Project_Name = model.Project_Name;
                    data.Project_Run_Org = model.Project_Run_Org;
                    data.Upabhokta_Samiti_Adakshya = model.Upabhokta_Samiti_Adakshya;
                    data.Project_Estimate_Amount = model.Project_Estimate_Amount;
                    data.Municipality_Amount = model.Municipality_Amount;
                    data.Jana_Sahabhagita_Amount = model.Jana_Sahabhagita_Amount;
                    data.Other_Org_Source_Amount = model.Other_Org_Source_Amount;
                    data.Project_Contract_Date = model.Project_Contract_Date;
                    data.Project_End_Date = model.Project_End_Date;
                    data.Total_Project_Beneficiaries = model.Total_Project_Beneficiaries;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;
                }
                else
                {
                    var AnuSuchi5Entity = new AnuSuchi5()
                    {
                        Planning_Samjhauta_Id=model.Planning_Samjhauta_Id,
                        Project_Name=model.Project_Name,
                        Project_Run_Org=model.Project_Run_Org,
                        Upabhokta_Samiti_Adakshya=model.Upabhokta_Samiti_Adakshya,
                        Project_Estimate_Amount=model.Project_Estimate_Amount,
                        Municipality_Amount=model.Municipality_Amount,
                        Jana_Sahabhagita_Amount=model.Jana_Sahabhagita_Amount,
                        Other_Org_Source_Amount=model.Other_Org_Source_Amount,
                        Project_Contract_Date=model.Project_Contract_Date,
                        Project_End_Date=model.Project_End_Date,
                        Total_Project_Beneficiaries=model.Total_Project_Beneficiaries,
                        CreatedBy=model.CreatedBy,
                        CreatedDate=DateTime.Now,
                    };
                    ent.AnuSuchi5.Add(AnuSuchi5Entity);
                }

                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }
    }
}