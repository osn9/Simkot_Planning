using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;

namespace Planning.Areas.Admin.Providers.PlanningAnusuchiProvider
{
    public class PlanningAnusuchi7Provider
    {
        public List<Anusuchi7ViewModel> getAnusuchi7List(int Planning_Samjhauta_Id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi7ViewModel model = new Anusuchi7ViewModel();
                List<Anusuchi7ViewModel> List = (from a in ent.AnuSuchi7
                                                 where a.Planning_Samjhauta_Id == Planning_Samjhauta_Id
                                                 select new Anusuchi7ViewModel()
                                                 {
                                                     AnuSuchi7_Id = a.AnuSuchi7_Id,
                                                     Planning_Samjhauta_Id = a.Planning_Samjhauta_Id,
                                                     Samiti_Estd_Date = a.Samiti_Estd_Date,
                                                     Samiti_Address = a.Samiti_Address,
                                                     Established_Type = a.Established_Type,
                                                     Adakshyata = a.Adakshyata,
                                                     Total_Present_No = a.Total_Present_No,
                                                     Status = a.Status,
                                                     DeletedDate = a.DeletedDate,
                                                 }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi7ViewModel> getPlanningSamjhautaList(int? id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi7ViewModel model = new Anusuchi7ViewModel();
                List<Anusuchi7ViewModel> List = (from p in ent.Planning_Samjhauta
                                                 join pd in ent.Samiti_Detail on p.Planning_Samjhauta_Id equals pd.Planning_Samjhauta_Id into samiti
                                                 from pd in samiti.DefaultIfEmpty()
                                                 select new Anusuchi7ViewModel
                                                 {
                                                     Planning_Samjhauta_Id = p.Planning_Samjhauta_Id,
                                                     Adakshya = pd.Adakshya,
                                                     Sachib = pd.Sachib,
                                                     Koshadakshya = pd.Koshadakshya,
                                                     Status = p.Status,
                                                     DeletedDate = p.DeletedDate,
                                                     Samiti_Estd_Date=pd.Samiti_Estd_Date,
                                                     Total_Present_No=pd.Beneficiaries_Attendance,
                                                 }).Where(x => x.Planning_Samjhauta_Id == id && x.Status == true && x.DeletedDate == null).ToList();
                return List;
            }
        }

        public List<Anusuchi7ViewModel> GetPlanningSamjhautaMembersList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                List<Anusuchi7ViewModel> List = ent.UpaBhokta_Samiti_Members_Details.Where(x => x.Planning_Samjhauta_Id == id).Select(x => new Anusuchi7ViewModel()
                {
                    UpabhoktaSamitiMemberDetailId = x.UpaBhokta_Samiti_Members_Details_Id,
                    Members = x.MemberName
                }).ToList();
                return List;
            }
        }

        public List<Anusuchi7ViewModel> GetAnusuchi7_Anugaman_SamitiList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi7ViewModel model = new Anusuchi7ViewModel();
                List<Anusuchi7ViewModel> List = (from a in ent.AnuSuchi7_Anugaman_Samiti
                                                 where a.AnuSuchi7_Id == id
                                                 select new Anusuchi7ViewModel()
                                                 {
                                                     AnuSuchi7_Anugaman_Samiti_Id = a.AnuSuchi7_Anugaman_Samiti_Id,
                                                     Anugaman_Samiti_Position = a.Position,
                                                     Anugaman_Samiti_Gender = a.Gender,
                                                     Anugaman_Samiti_Member_Name = a.Member_Name,
                                                     Anugaman_Samiti_Father_Husband_Name = a.Father_Husband_Name,
                                                     Anugaman_Samiti_GrandFather_Name = a.GrandFather_Name,
                                                     Anugaman_Samiti_Mobile_No = a.Mobile_No
                                                 }).ToList();
                return List;
            }
        }
        public List<Anusuchi7ViewModel> GetAnusuchi7_Upabhokta_SamitiSubjectList(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                Anusuchi7ViewModel model = new Anusuchi7ViewModel();
                List<Anusuchi7ViewModel> List = (from a in ent.AnuSuchi7_Upabhokta_Samiti
                                                 where a.AnuSuchi7_Id == id
                                                 select new Anusuchi7ViewModel()
                                                 {
                                                     AnuSuchi7_Upabhokta_Samiti_Id = a.AnuSuchi7_Upabhokta_Samiti_Id,
                                                     Upabhokta_Samiti_Position = a.Position,
                                                     Upabhokta_Samiti_Member_Name = a.Member_Name,
                                                     Upabhokta_Samiti_Gender = a.Gender,
                                                     Upabhokta_Samiti_Father_Husband_Name = a.Father_Husband_Name,
                                                     Upabhokta_Samiti_GrandFather_Name = a.GrandFather_Name,
                                                     Upabhokta_Samiti_Mobile_No = a.Mobile_No
                                                 }).ToList();
                return List;
            }
        }
        public int UpdateAnusuchi7(Anusuchi7ViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.AnuSuchi7.Where(x => x.Planning_Samjhauta_Id == model.Planning_Samjhauta_Id).SingleOrDefault();
                if (data != null)
                {
                    data.AnuSuchi7_Id = model.AnuSuchi7_Id;
                    data.Planning_Samjhauta_Id = model.Planning_Samjhauta_Id;
                    data.Samiti_Estd_Date = model.Samiti_Estd_Date;
                    data.Samiti_Address = model.Samiti_Address;
                    data.Established_Type = model.Established_Type;
                    data.Adakshyata = model.Adakshyata;
                    data.Total_Present_No = model.Total_Present_No;
                    data.Status = true;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;

                    var objAnuSuchi7_Anugaman_Samiti = ent.AnuSuchi7_Anugaman_Samiti.Where(x => x.AnuSuchi7_Id == model.AnuSuchi7_Id).ToList();
                    foreach (var item in objAnuSuchi7_Anugaman_Samiti)
                    {
                        ent.AnuSuchi7_Anugaman_Samiti.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi7_Anugaman_SamitiViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi7_Anugaman_SamitiViewModelList)
                        {
                            var Anusuchi7_Anugaman_SamitiEntity = new AnuSuchi7_Anugaman_Samiti()
                            {
                                AnuSuchi7_Id = model.AnuSuchi7_Id,
                                Position = item.Anugaman_Samiti_Position,
                                Member_Name = item.Anugaman_Samiti_Member_Name,
                                Gender = item.Anugaman_Samiti_Gender,
                                Father_Husband_Name = item.Anugaman_Samiti_Father_Husband_Name,
                                GrandFather_Name = item.Anugaman_Samiti_GrandFather_Name,
                                Mobile_No = item.Anugaman_Samiti_Mobile_No
                            };
                            ent.AnuSuchi7_Anugaman_Samiti.Add(Anusuchi7_Anugaman_SamitiEntity);
                        }
                    }

                    var objAnusuchi7_Upabhokta_Samiti = ent.AnuSuchi7_Upabhokta_Samiti.Where(x => x.AnuSuchi7_Id == model.AnuSuchi7_Id).ToList();
                    foreach (var item in objAnusuchi7_Upabhokta_Samiti)
                    {
                        ent.AnuSuchi7_Upabhokta_Samiti.Remove(item);
                        ent.SaveChanges();
                    }
                    if (model.Anusuchi7_Upabhokta_SamitiViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi7_Upabhokta_SamitiViewModelList)
                        {
                            var AnuSuchi7_Upabhokta_SamitiEntity = new AnuSuchi7_Upabhokta_Samiti()
                            {
                                AnuSuchi7_Id = model.AnuSuchi7_Id,
                                Position = item.Upabhokta_Samiti_Position,
                                Member_Name = item.Upabhokta_Samiti_Member_Name,
                                Gender = item.Upabhokta_Samiti_Gender,
                                Father_Husband_Name = item.Upabhokta_Samiti_Father_Husband_Name,
                                GrandFather_Name = item.Upabhokta_Samiti_GrandFather_Name,
                                Mobile_No = item.Upabhokta_Samiti_Mobile_No
                            };
                            ent.AnuSuchi7_Upabhokta_Samiti.Add(AnuSuchi7_Upabhokta_SamitiEntity);
                        }
                    }
                }
                else
                {
                    int anuSuchi7Id = 0;

                    var AnuSuchi7Entity = new AnuSuchi7()
                    {
                        Planning_Samjhauta_Id = model.Planning_Samjhauta_Id,
                        AnuSuchi7_Id = model.AnuSuchi7_Id,
                        Samiti_Estd_Date = model.Samiti_Estd_Date,
                        Samiti_Address = model.Samiti_Address,
                        Established_Type = model.Established_Type,
                        Adakshyata = model.Adakshyata,
                        Total_Present_No = model.Total_Present_No,
                        Status = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.AnuSuchi7.Add(AnuSuchi7Entity);
                    anuSuchi7Id = AnuSuchi7Entity.AnuSuchi7_Id;

                    if (model.Anusuchi7_Anugaman_SamitiViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi7_Anugaman_SamitiViewModelList)
                        {
                            var AnuSuchi7_Anugaman_SamitiEntity = new AnuSuchi7_Anugaman_Samiti()
                            {
                                AnuSuchi7_Id = anuSuchi7Id,
                                Position = item.Anugaman_Samiti_Position,
                                Member_Name = item.Anugaman_Samiti_Member_Name,
                                Gender = item.Anugaman_Samiti_Gender,
                                Father_Husband_Name = item.Anugaman_Samiti_Father_Husband_Name,
                                GrandFather_Name = item.Anugaman_Samiti_GrandFather_Name,
                                Mobile_No = item.Anugaman_Samiti_Mobile_No
                            };
                            ent.AnuSuchi7_Anugaman_Samiti.Add(AnuSuchi7_Anugaman_SamitiEntity);
                        }
                    }

                    if (model.Anusuchi7_Upabhokta_SamitiViewModelList != null)
                    {
                        foreach (var item in model.Anusuchi7_Upabhokta_SamitiViewModelList)
                        {
                            var Anusuchi7_Upabhokta_SamitiEntity = new AnuSuchi7_Upabhokta_Samiti()
                            {
                                AnuSuchi7_Id = anuSuchi7Id,
                                Position = item.Upabhokta_Samiti_Position,
                                Member_Name = item.Upabhokta_Samiti_Member_Name,
                                Gender = item.Upabhokta_Samiti_Gender,
                                Father_Husband_Name = item.Upabhokta_Samiti_Father_Husband_Name,
                                GrandFather_Name = item.Upabhokta_Samiti_GrandFather_Name,
                                Mobile_No = item.Upabhokta_Samiti_Mobile_No
                            };
                            ent.AnuSuchi7_Upabhokta_Samiti.Add(Anusuchi7_Upabhokta_SamitiEntity);
                        }
                    }
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