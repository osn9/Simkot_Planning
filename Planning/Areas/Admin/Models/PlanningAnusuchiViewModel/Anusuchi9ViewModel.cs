using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningAnusuchiViewModel
{
    public class Anusuchi9ViewModel
    {
        //For AnuSuchi9
        public int AnuSuchi9_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Adakshya { get; set; }
        public string Adakshya_Address { get; set; }
        public string Sachib { get; set; }
        public string Sachib_Address { get; set; }
        public string Koshadakshya { get; set; }
        public string Koshadakshya_Address { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public List<Anusuchi9ViewModel> Anusuchi9ViewModelList { get; set; }

        //For Discussion_conclusions
        public int AnuSuchi9_Discussion_Conclusions_Id { get; set; }
        public string Conclusions { get; set; }
        public List<Anusuchi9ViewModel> Anusuchi9_Discussion_ConclusionsViewModelList { get; set; }


        //For AnuSuchi9_Discussion_Subjects
        public int AnuSuchi9_Discussion_Subjects_Id { get; set; }
        public string Subjects { get; set; }
        public List<Anusuchi9ViewModel> Anusuchi9_Discussion_SubjectsViewModelList { get; set; }


        //For AnuSuchi9_Meeting
        public int AnuSuchi9_Meeting_Id { get; set; }
        public string Baithak_No { get; set; }
        public Nullable<System.DateTime> Baithak_Date { get; set; }
        public List<Anusuchi9ViewModel> Anusuchi9_MeetingViewModelList { get; set; }


        //For AnuSuchi9_Members
        public int AnuSuchi9_Members_Id { get; set; }
        public string Members { get; set; }
        public string Members_Address { get; set; }
        public int UpabhoktaSamitiMemberDetailId { get; set; }
        public List<Anusuchi9ViewModel> Anusuchi9_MembersViewModelList { get; set; }
        public List<Anusuchi9ViewModel> PlanningSamjhautaMembersViewModelList { get; set; }

    }
}