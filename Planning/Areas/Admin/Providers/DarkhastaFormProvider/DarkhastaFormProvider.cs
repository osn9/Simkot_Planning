using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models.DarkhastaFormViewModel;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.DarkhastaFormProvider
{
    public class DarkhastaFormProvider
    {
        public List<DarkhastaFormViewModel> GetDarkhastaFormList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                DarkhastaFormViewModel model = new DarkhastaFormViewModel();
                List<DarkhastaFormViewModel> List = (from d in ent.Darkhasta_Form
                                                        where d.DeletedDate == null && d.Status == true
                                                        select new DarkhastaFormViewModel
                                                        {
                                                            Darkhasta_Form_Id = d.Darkhasta_Form_Id,
                                                            Yojana=d.Yojana_name,
                                                            Bank_Name = d.Bank_Name,
                                                            Ward_No = d.Ward_No,
                                                            Samiti_Name = d.Samiti_Name,
                                                            Adakshya_Name = d.Adakshya_Name,
                                                            Koshadakshya_Name = d.Koshadakshya_Name,
                                                            Sachib_Name=d.Sachib_Name,
                                                            Chalani_Number=d.Chalani_Number,
                                                            Other_Bank_Name=d.Other_Bank_Name,
                                                            Fiscal_Year_Record=d.Fiscal_Year_Record,
                                                        }).ToList();
                return List;
            }
        }

        public int InsertDarkhastaForm(DarkhastaFormViewModel model)
        {
            int darkhastaFormId = 0;
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var Darkhasta_FormEntity = new Darkhasta_Form()
                {
                    Bank_Name = model.Bank_Name,
                    Ward_No = model.Ward_No,
                    Samiti_Name = model.Samiti_Name,
                    Adakshya_Name = model.Adakshya_Name,
                    Koshadakshya_Name = model.Koshadakshya_Name,
                    Sachib_Name = model.Sachib_Name,
                    Chalani_Number = model.Chalani_Number,
                    Other_Bank_Name=model.Other_Bank_Name,
                    Fiscal_Year_Record=model.Fiscal_Year_Record,
                    Yojana_name=model.Yojana,
                    Status = true,
                    CreatedBy = model.CreatedBy,
                    CreatedDate = DateTime.Now,
                };
                ent.Darkhasta_Form.Add(Darkhasta_FormEntity);
                darkhastaFormId = Darkhasta_FormEntity.Darkhasta_Form_Id;

                int i = ent.SaveChanges();

                if (i > 0)
                {
                    return Darkhasta_FormEntity.Darkhasta_Form_Id;
                }
                else
                {
                    return 0;
                }
            }
        }

        public DarkhastaFormViewModel GetDarkhastaFormById(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                DarkhastaFormViewModel model = new DarkhastaFormViewModel();
                var data = ent.Darkhasta_Form.Where(x => x.Darkhasta_Form_Id == id).Select(x => new DarkhastaFormViewModel()
                {
                    Darkhasta_Form_Id = x.Darkhasta_Form_Id,
                    Bank_Name = x.Bank_Name,
                    Yojana=x.Yojana_name,
                    Ward_No = x.Ward_No,
                    Samiti_Name = x.Samiti_Name,
                    Adakshya_Name = x.Adakshya_Name,
                    Koshadakshya_Name = x.Koshadakshya_Name,
                    Sachib_Name = x.Sachib_Name,
                    Chalani_Number = x.Chalani_Number,
                    Other_Bank_Name=x.Other_Bank_Name,
                    Fiscal_Year_Record=x.Fiscal_Year_Record,
                    Status = x.Status,
                }).SingleOrDefault();
                return data;
            }
        }

        public int UpdateDarkhastaForm(DarkhastaFormViewModel model)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var data = ent.Darkhasta_Form.Where(x => x.Darkhasta_Form_Id == model.Darkhasta_Form_Id).SingleOrDefault();
                data.Darkhasta_Form_Id = model.Darkhasta_Form_Id;
                data.Yojana_name = model.Yojana;
                data.Bank_Name = model.Bank_Name;
                data.Ward_No = model.Ward_No;
                data.Samiti_Name = model.Samiti_Name;
                data.Adakshya_Name = model.Adakshya_Name;
                data.Koshadakshya_Name = model.Koshadakshya_Name;
                data.Sachib_Name = model.Sachib_Name;
                data.Chalani_Number = model.Chalani_Number;
                data.Other_Bank_Name = model.Other_Bank_Name;
                data.Fiscal_Year_Record = model.Fiscal_Year_Record;
                data.Status = true;
                data.UpdatedBy = model.UpdatedBy;
                data.UpdatedDate = DateTime.Now;
                int i = ent.SaveChanges();
                if (i > 0)
                    return 1;
                else
                    return 0;
            }
        }

        public List<DarkhastaFormViewModel> GetDarkhastaFormList(int darkhastaFormId)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                DarkhastaFormViewModel model = new DarkhastaFormViewModel();
                List<DarkhastaFormViewModel> List = (from d in ent.Darkhasta_Form
                                                        where d.Darkhasta_Form_Id == darkhastaFormId
                                                        select new DarkhastaFormViewModel()
                                                        {
                                                            Darkhasta_Form_Id = d.Darkhasta_Form_Id,
                                                            Yojana=d.Yojana_name,
                                                            Bank_Name = d.Bank_Name,
                                                            Ward_No = d.Ward_No,
                                                            Samiti_Name = d.Samiti_Name,
                                                            Adakshya_Name = d.Adakshya_Name,
                                                            Koshadakshya_Name = d.Koshadakshya_Name,
                                                            Sachib_Name = d.Sachib_Name,
                                                            Chalani_Number = d.Chalani_Number,
                                                            Fiscal_Year_Record=d.Fiscal_Year_Record,
                                                            Other_Bank_Name=d.Other_Bank_Name,
                                                            DeletedDate = d.DeletedDate,
                                                        }).Where(x => x.DeletedDate == null).ToList();
                return List;
            }
        }
        public List<DarkhastaFormViewModel> GetOrganizationList()
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                DarkhastaFormViewModel model = new DarkhastaFormViewModel();
                List<DarkhastaFormViewModel> List = (from p in ent.Organization_Setup
                                                         select new DarkhastaFormViewModel
                                                         {
                                                             Organization_Setup_Id = p.Organization_Setup_Id,
                                                             Organization_Name = p.Organization_Name,
                                                             Organization_Type = p.Organization_Type,
                                                             District_Name = p.District_Name,
                                                             State_Country = p.State_Country,
                                                             Image_Path=p.Image_Path,
                                                         }).ToList();
                return List;
            }
        }

        public bool DeleteDarkhastaForm(int id)
        {
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                DarkhastaFormViewModel model = new DarkhastaFormViewModel();
                var data = ent.Darkhasta_Form.Where(x => x.Darkhasta_Form_Id == id).SingleOrDefault();
                data.DeletedBy = model.DeletedBy;
                data.DeletedDate = DateTime.Now;
                int i = ent.SaveChanges();
                if (i > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }


    }
}