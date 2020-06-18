using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningSamjhautaViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.PragatiPratibedanProvider
{
    public class PragatiPratibedanProvider
    {
        public List<PlanningSamjhautaViewModel> getPratibedanAnusuchi1(string FiscalYear, string OdaNagar, string ProjectName)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Project_Name = pe.Project_Name,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             Municipality_Manjuri_Date = mp.Municipality_Manjuri_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Planning_Type = ple.Planning_Type,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.DeletedDate == null).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(OdaNagar))
                {
                    List = List.Where(x => x.Planning_Type.Trim() == OdaNagar.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(ProjectName))
                {
                    List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                }
                return List;
            }
        }

        public List<PlanningSamjhautaViewModel> getPratibedanAnusuchi2(string FiscalYear, string OdaNagar, string ProjectName)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from p in ent.Planning_Samjhauta
                                                         join pe in ent.Project_Entry_Detail on p.Planning_Samjhauta_Id equals pe.Planning_Samjhauta_Id
                                                         join ple in ent.Planning_Entry on p.Planning_Samjhauta_Id equals ple.Planning_Samjhauta_Id
                                                         join ps in ent.Project_Source_Detail on p.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id
                                                         join mp in ent.Municipality_Samiti_Manjuri_Patra on p.Planning_Samjhauta_Id equals mp.Planning_Samjhauta_Id
                                                         //join pr in ent.Payment_Records on p.Planning_Samjhauta_Id equals pr.Planning_Samjhauta_Id
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                             Fiscal_Year_Record = p.Fiscal_Year_Record,
                                                             Project_Name = pe.Project_Name,
                                                             Project_estimated_Amount = pe.Project_estimated_Amount,
                                                             Municipality_Manjuri_Date = mp.Municipality_Manjuri_Date,
                                                             Project_End_Date = pe.Project_End_Date,
                                                             Samjhauta_Org_Name = p.Samjhauta_Org_Name,
                                                             Planning_Type = ple.Planning_Type,
                                                             //Kista_Kram=pr.Kista_Kram,
                                                             //Kista_Rakam=pr.Kista_Rakam,
                                                             DeletedDate = p.DeletedDate,
                                                         }).Where(x => x.DeletedDate == null).ToList();

                if (!String.IsNullOrEmpty(FiscalYear))
                {
                    List = List.Where(x => x.Fiscal_Year_Record.Trim() == FiscalYear.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(OdaNagar))
                {
                    List = List.Where(x => x.Planning_Type.Trim() == OdaNagar.Trim()).ToList();
                }
                if (!String.IsNullOrEmpty(ProjectName))
                {
                    List = List.Where(x => x.Project_Name.Trim() == ProjectName.Trim()).ToList();
                }
                return List;
            }
        }


        public List<PlanningSamjhautaViewModel> getPlanningBhuktaniList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
                List<PlanningSamjhautaViewModel> List = (from pr in ent.Planning_Bhuktani
                                                         where pr.Status==true && pr.DeletedDate==null && pr.IsBhuktaniApproval==true
                                                         select new PlanningSamjhautaViewModel()
                                                         {
                                                             Planning_Bhuktani_Id=pr.Planning_Bhuktani_Id,
                                                             Planning_Samjhauta_Id=pr.Planning_Samjhauta_Id??0,
                                                             Bhuktani_Type=pr.Bhuktani_Type,
                                                             DeletedDate = pr.DeletedDate,
                                                             Remaining_Bhuktani_Amount=pr.Remaining_Bhuktani_Amount,
                                                         }).ToList();
                return List;
            }
        }



    }
}