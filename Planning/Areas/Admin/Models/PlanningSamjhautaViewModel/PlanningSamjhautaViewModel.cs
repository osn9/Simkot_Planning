using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models.PlanningSamjhautaViewModel
{
    public class PlanningSamjhautaViewModel
    {

        //// FOR PLANNING SAMJHAUTA SECTION

        // new requirement add new table amanat and upbhogata details
        public int Amanat_Deatils_Id { get; set; }
        public string Amant_Name { get; set; }
        public string Darja { get; set; }
        public string Amant_SahiDate { get; set; }
        public int UpbhoktaSamiti_Deatils_Id { get; set; }
        public string Upbhogata_SahiDate { get; set; }
        [StringLength(10, MinimumLength = 10, ErrorMessage = "Must be Contact no 10 characters long.")]
        public string ContactNo { get; set; }
        public string Upbhogata_Name { get; set; }
        //-------------------------

        //Planning_Samjhauta
        public int Planning_Samjhauta_Id { get; set; }
        public string Fiscal_Year_Record { get; set; }
        public string Current_Fiscal_Year_Record { get; set; }
        public string Samjhauta_Org_Name { get; set; }
        //[RegularExpression(@"^[a-zA-Z''-'\s]{1,40}$",ErrorMessage = "Characters are not allowed.")]
        //[RegularExpression(@"^[0-9]([.][0-9]{1,2})?$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        //[RegularExpression(@"^[\w\-. ]+$", ErrorMessage = "Special Characters are not allowed.")]
        //[RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        //[RegularExpression(@"^\d+.\d{0,2}$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        //[RegularExpression(@"^(\d*\.?\d+|\d{1,3}(,\d{3})*(\.\d+)?)$", ErrorMessage = "क्रिपया अङ्क मात्र राख्नुहोस्")]
        public string Contegency_Amount { get; set; }
        public string MarmatSambhar_Amount { get; set; }
        public string Total_Amount { get; set; }
        public string Contegency_Percentage { get; set; }
        public Nullable<bool> Status { get; set; }
        public bool Samjhauta_Acceptance { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }

        //Organization_Representative
        public int Organization_Representative_Id { get; set; }
        public string Representative_Name { get; set; }
        public string Representative_Designition { get; set; }
        public string Representative_Address { get; set; }

        //Project_Entry_Detail
        public int Project_Entry_Detail_Id { get; set; }
        public string Project_Name { get; set; }
        public string Project_Place { get; set; }
        public string Project_Objective { get; set; }
        public string Project_Acceptance_By { get; set; }
        public string Project_Start_Date { get; set; }
        public string Project_End_Date { get; set; }
        public string Project_Completed_Date { get; set; }
        public string NepaliProjStartDate { get; set; }
        public string NepaliProjEndDate {get;set;}
        public string Total_Used_Amount { get; set; }

        public string Project_estimated_Amount { get; set; }

        public string startdate { get; set; }
        public string enddate { get; set; }

        //Project_Source_Detail
        public int Project_Source_Detail_Id { get; set; }
        public string Project_estimated_Amount_Source { get; set; }
        public string Nepal_Government { get; set; }
        public string Municipality { get; set; }
        public string State { get; set; }
        public string NGO_INGO { get; set; }
        public string Community_Org { get; set; }
        public string Foreign_Org { get; set; }
        public string Public_Community { get; set; }
        public string Loan_Grant { get; set; }
        public string Other_Source { get; set; }
        public string Total_Amount_Source { get; set; }
        public string Total_Remaining_Amount { get; set; }

        public decimal totAmt { get; set; }
        public decimal contiAmt { get; set; }
        public decimal totRemAmt { get; set; }

        //Project_Other_Source
        public int Project_Other_Source_Id { get; set; }
        public string Source_Name { get; set; }
        public string Quantity { get; set; }
        public string Material_Details { get; set; }
        public string Unit { get; set; }

        //Beneficiaries_Group
        public int Beneficiaries_Group_Id { get; set; }
        public string Total_House { get; set; }
        public string Total_Male { get; set; }
        public string Total_Female { get; set; }
        public string Community { get; set; }
        public string Other { get; set; }

        //Samiti_Detail
        public int Samiti_Detail_Id { get; set; }
        public Nullable<System.DateTime> Samiti_Estd_Date { get; set; }
        public string NepaliSamitiEstdDate { get; set; }
        public string Adakshya { get; set; }
        public string AdakshyaContactNumber  { get; set; }
        public string Sachib { get; set; }
        public string SachibContactNumber { get; set; }

        public string Koshadakshya { get; set; }
        public string KoshadakshyaContactNumber { get; set; }
        public string Sadashya { get; set; }
        public string Beneficiaries_Attendance { get; set; }
        public string Beneficiaries_Absent { get; set; }

        //Payment_Records
        public int Payment_Records_Id { get; set; }
        public string Kista_Kram { get; set; }
        public Nullable<System.DateTime> Payment_Date { get; set; }
        public string NepaliPaymentDate { get; set; }

        public string Kista_Rakam { get; set; }
        public string Nirmarn_Samagri { get; set; }
        public string Remarks { get; set; }
        public string Kista_Budget { get; set; }

        //Aayojana_Maintainance
        public int Aayojana_Maintainance_Id { get; set; }
        public string Responsible_Org { get; set; }
        public string Janashram { get; set; }
        public string SewaSulka { get; set; }
        public string Dastur_Chanda { get; set; }
        public string Lagat_Anudan { get; set; }
        public string Interest_Saving { get; set; }

        //Municipality_Samiti_Manjuri_Patra
        public int Municipality_Samiti_Manjuri_Patra_Id { get; set; }
        public string Municipality_Rep_Name { get; set; }
        public string Municipality_Rep_Post { get; set; }
        public string Municipality_Rep_Sign { get; set; }
        public string Municipality_Manjuri_Date { get; set; }
        public string NepaliMunicipalityManjuriDate { get; set; }
        public string Samiti_Adakshya_Name { get; set; }
        public string Samiti_Adakshya_Sign { get; set; }
        public string Samiti_Sachib_Name { get; set; }
        public string Samiti_Sachib_Sign { get; set; }
        public string Samiti_Rohabar_Name { get; set; }
        public string Samiti_Rohabar_Sign { get; set; }

        public string yojanSakhaRepresentativePostSign { get; set; }
        public string yojanSakhaRepresentativePost { get; set; }
        public string yojanSakhaRepresentaive { get; set; }

        public string Marmat_Sambhar1 { get; set; }
        public string Contigency1 { get; set; }

        //work Area
        public string WorkAreName { get; set; }

        //Upload-Files
        public string FileName { get; set; }
        public string FilePath { get; set; }
        public int FileId { get; set; }
        public int UploadFileId { get; set; }
        public string WardNo { get; set; }

        public List<PlanningSamjhautaViewModel> PlanningSamjhautaViewModelList { get; set; }

        public List<PlanningSamjhautaViewModel> PlanningSamjhautaSourceList { set; get; }

        public List<PlanningSamjhautaViewModel> SamjhautaReportList { get; set; }
        public List<PlanningSamjhautaViewModel> KaryadeshReportList { get; set; }
        public List<PlanningSamjhautaViewModel> KistaKramList { get; set; }
        public List<PlanningSamjhautaViewModel> BudgetBiniyojanList { get; set; }
        public List<PlanningSamjhautaViewModel> UploadImageList { get; set; }

        public List<PlanningSamjhautaViewModel> PlanningSamjhautaKistaList { get; set; }
        public List<PlanningSamjhautaViewModel> PlanningSamjhautaKistaFirstDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> PlanningSamjhautaKistaSecondDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> PlanningSamjhautaKistaThirdDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> PlanningSamjhautaPeskiDetailsList { get; set; }


        //// FOR PLANNING ENTRY SECTION

        //For Planning_Entry
        public int Planning_Entry_Id { get; set; }
        public string FiscalYear { get; set; }
        public string Planning_Name { get; set; }
        public string Planning_Start_Date { get; set; }
        public string Planning_End_Date { get; set; }
        public string Work_Details { get; set; }
        public string Amount_Estimate { get; set; }
        public Nullable<int> Work_Type { get; set; }
        public Nullable<int> Ward_No { get; set; }
        public Nullable<int> Work_Area { get; set; }
        public Nullable<int> Budget_Source_Id { get; set; }
        public string Planning_Type { get; set; }
        public string UpaBhoktaSamiti_HeadName { get; set; }
        public string Contractor_Name { get; set; }
        public string PlanningSerialNo { get; set; }
        

        //For Planning_Entry_Anudan
        public int Planning_Entry_Anudan_Id { get; set; }
        public string Nagarpalika_Amt { get; set; }
        public string UpaBhoktaSamiti_Amt { get; set; }
        public string Other_Amt { get; set; }
        public string JanaSahaBhagita_Amt { get; set; }

        //For Planning_Entry_Kista_Detail
        public int Planning_Entry_Kista_Detail_Id { get; set; }
        public string Peski_Bhuktani { get; set; }
        public string Sarta { get; set; }

        //others
        public string BudgetSource { get; set; }

        public List<PlanningSamjhautaViewModel> PlanningEntryViewModelList { get; set; }

        public List<PlanningSamjhautaViewModel> KistaFirstDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> KistaSecondDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> KistaThirdDetailsList { get; set; }
        public List<PlanningSamjhautaViewModel> KistaLastDetailsList { get; set; }

        public List<PlanningSamjhautaViewModel> OdaWiseViewModelList { get; set; }
        public List<PlanningSamjhautaViewModel> NagarWiseViewModelList { get; set; }
        public List<PlanningSamjhautaViewModel> AnuSuchiViewModelListByWard { get; set; }
        public List<PlanningSamjhautaViewModel> AnuSuchiViewModelListByWorkArea { get; set; }


        //FOR BHUKTANI
        public List<PlanningSamjhautaViewModel> PlanningBhuktaniReportViewModelList { get; set; }

        public string KulLaIe { get; set; }

        //ORGANIZATION SETUP
        public int Organization_Setup_Id { get; set; }
        public string Organization_Name { get; set; }
        public string Organization_Type { get; set; }
        public string District_Name { get; set; }
        public string State_Country { get; set; }
        public string Image_Path { get; set; }
        public List<PlanningSamjhautaViewModel> OrganizationSetupList { get; set; }

        //UPABHOKTA SAMITI MEMBER DETAILS
        public int UpaBhokta_Samiti_Members_Details_Id { get; set; }
        public string MemberName { get; set; }
        public List<PlanningSamjhautaViewModel> UpaBhoktaSamitiMemberList { get; set; }

        //For Pragati_Pratibedan
        public int Planning_Bhuktani_Id { get; set; }
        public Nullable<int> Bhuktani_Type { get; set; }
        public string Remaining_Bhuktani_Amount { get; set; }
        public List<PlanningSamjhautaViewModel> PragatiPratibedanAnusuchi1List { get; set; }
        public List<PlanningSamjhautaViewModel> PragatiPratibedanAnusuchi2List { get; set; }
        public List<PlanningSamjhautaViewModel> PragatiPratibedanAnusuchi2BhuktaniList { get; set; }


    }
}