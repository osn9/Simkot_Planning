using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Utility
{
    public class NumericToText
    {
        static string[] Num_To_Word = new string[] {"शुन्य","एक","दुई","तिन","चार","पांच","छ","सात", "आठ","नैा","दस",
        "एघार","बार्ह","तेर्ह","चैाध","पन्ध्र","सोर्ह","सत्र","आठार","उन्नाइस","बिस",
        "एक्काइस","बाइस","तेइस","चैाबिस","पच्चिस","छब्बिस","सत्ताइस","अठ्ठाईस","उनान्तिस","तिस","एकतिस","बत्तिस",
        "तेत्तिस","चौतिस","पैतिस","छत्तिस","सइतिस","अड्तिस","उन्चालिस","चालिस","एकचालिस","बयालिस","त्रिचालिस","चौवालिस",
        "पैतालिस","छयालिस","सच्चालिस","अड्चालिस","उन्पचास","पचास","एकाउन्न","बाउन्न","त्रिपन्न","चौवन्न","पचपन्न","छपन्न",
        "सन्ताउन्न","अनठाउन्न","उन्ननसाठी","साठी","एकसठ्ठी","वैसठ्ठी","त्रीसठ्ठी","चौसठ्ठी","पैसठ्ठी","छैसठ्ठी","सड्सठ्ठी","अड्सठ्ठी","उनन्सत्तरी","सत्तरी",
        "एकत्तर","बहत्तर","त्रिहत्तर","चौहत्तर","पचत्तर","छयत्तर","सतत्तर","अठ्त्तर","उनासी","असि",
        "एकासी","बयासी","त्रीयासी","चौरासी","पचासी","छयासी","सतासी","अठासी","उन्नब्बे","नब्बे",
        "एकानब्बे","बयानब्बे","त्रियानब्बे","चौरानब्बे","पन्चानब्बे","छयानब्बे","सन्तानब्बे","अन्ठानब्बे","उनान्सय"};
        // add more
        static string[] Num_Unit = new string[] { "सय", "हजार", "लाख", "करोड", "अर्ब", "खर्ब", "शंख" };


        public static string ConvertToNepali(string paramNumber)
        {
            string[] value = paramNumber.Split('.');
            string rupeesFormat = NumericToText.ConvertToNepaliWord_Rupees(value[0]);
            string paisaFormat;
            if (value.Length == 1)
            {
                paisaFormat = "मात्र";
                return rupeesFormat + paisaFormat;
            }
            else
            {
                paisaFormat = NumericToText.ConvertToNepali_Paisa(Convert.ToInt32(value[1]));
                return rupeesFormat + paisaFormat + " पैसा मात्र ।";
            }
        }


        public static string ConvertToNepali_Paisa(int paramNumber)
        {
            return Num_To_Word[paramNumber];
        }

        public static string Common(string ten_, string hun_, string thou_, string lakh_, string karod_, string araba_)
        {
            int ten = 0, hun = 0, thou = 0, lakh = 0, karod = 0;
            if (ten_ != "")
            {
                ten = Convert.ToInt32(ten_);
            }

            if (hun_ != "")
            {
                hun = Convert.ToInt32(hun_);
            }
            if (thou_ != "")
            {
                thou = Convert.ToInt32(thou_);
            }
            if (lakh_ != "")
            {
                lakh = Convert.ToInt32(lakh_);
            }
            if (karod_ != "")
            {
                karod = Convert.ToInt32(karod_);
            }

            string str_word;
            str_word = "";
            if (karod_ != "" && karod != 0)
            {
                if (lakh_ != "" && lakh != 0)
                {
                    if (thou_ != "" && thou != 0)
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " +
                       Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1] + " "
                        + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                        + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                          Num_To_Word[thou] + " " + Num_Unit[1] + " "
                          + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {

                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                                    Num_To_Word[thou] + " " + Num_Unit[1] + " "
                                    + Num_To_Word[ten];
                            }
                            else
                            {

                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1];
                            }

                        }
                    }
                    else
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {

                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                         + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                         + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                           + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[lakh] + " " + Num_Unit[2];
                            }

                        }

                    }
                }
                else
                {
                    if (thou_ != "" && thou != 0)
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "")
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[thou] + " " + Num_Unit[1] + " "
                          + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[thou] + " " + Num_Unit[1] + " "
                         + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[thou] + " " + Num_Unit[1] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[thou] + " " + Num_Unit[1];
                            }
                        }
                    }
                    else
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[karod] + " " + Num_Unit[3];
                            }

                        }

                    }

                }

            }
            else
            {
                if (lakh_ != "" && lakh != 0)
                {
                    if (thou_ != "" && thou != 0)
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1] + " "
                        + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                        + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1] + " "
                        + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1] + " "
                        + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " " +
                        Num_To_Word[thou] + " " + Num_Unit[1];
                            }

                        }
                    }
                    else
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                          + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                           + Num_To_Word[hun] + " " + Num_Unit[0];
                            }

                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2] + " "
                          + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[lakh] + " " + Num_Unit[2];
                            }
                        }

                    }
                }
                else
                {
                    if (thou_ != "" && thou != 0)
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[thou] + " " + Num_Unit[1] + " "
                         + Num_To_Word[hun] + " " + Num_Unit[0] + " "
                         + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[thou] + " " + Num_Unit[1] + " "
                           + Num_To_Word[hun] + " " + Num_Unit[0];
                            }
                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[thou] + " " + Num_Unit[1] + " "
                         + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[thou] + " " + Num_Unit[1];
                            }
                        }
                    }
                    else
                    {
                        if (hun_ != "" && hun != 0)
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[hun] + " " + Num_Unit[0] + " "
                         + Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = Num_To_Word[hun] + " " + Num_Unit[0];
                            }
                        }
                        else
                        {
                            if (ten_ != "" && ten != 0)
                            {
                                str_word = Num_To_Word[ten];
                            }
                            else
                            {
                                str_word = "";
                            }
                        }
                    }
                }
            }

            return str_word;
        }
        public static string ConvertToNepaliWord_Rupees(string paramNumber)
        {
            string dec_word = paramNumber.ToString(), str_word = "";
            string str_word_pre = "", str_word_post = " रुपैंया ";
            string sOne, sTen, sHun, sThou, sLakh, sKarod, sAraba;
            if (dec_word.Length == 1)
            {
                str_word = Num_To_Word[Convert.ToInt32(paramNumber)];
            }
            else if (dec_word.Length == 2)
            {
                str_word = Num_To_Word[Convert.ToInt32(paramNumber)];
            }

            else if (dec_word.Length == 3)
            {
                sTen = dec_word.Substring(0, 1);
                sOne = dec_word.Substring(1, 2);
                int ten = Convert.ToInt32(sTen);
                int one = Convert.ToInt32(sOne); // र 
                if (one != 0)
                {
                    str_word = str_word = Common(sTen, "", "", "", "", "") + " " + Num_Unit[0] + " " + Num_To_Word[one];
                }
                else
                {
                    str_word = str_word = Common(sTen, "", "", "", "", "") + " " + Num_Unit[0];
                }
            }
            else if (dec_word.Length == 4)
            {
                sThou = dec_word.Substring(0, 1);
                sHun = dec_word.Substring(1, 1);
                sTen = dec_word.Substring(2, 2);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                str_word = Common(sTen, sHun, sThou, "", "", "");


            }
            else if (dec_word.Length == 5)
            {

                sThou = dec_word.Substring(0, 2);
                sHun = dec_word.Substring(2, 1);
                sTen = dec_word.Substring(3, 2);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                str_word = Common(sTen, sHun, sThou, "", "", "");
            }
            else if (dec_word.Length == 6)
            {
                sLakh = dec_word.Substring(0, 1);
                sThou = dec_word.Substring(1, 2);
                sHun = dec_word.Substring(3, 1);
                sTen = dec_word.Substring(4, 2);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                str_word = Common(sTen, sHun, sThou, sLakh, "", "");
            }
            else if (dec_word.Length == 7)
            {
                sLakh = dec_word.Substring(0, 2);
                sThou = dec_word.Substring(2, 2);
                sHun = dec_word.Substring(4, 1);
                sTen = dec_word.Substring(5, 2);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                str_word = Common(sTen, sHun, sThou, sLakh, "", "");
            }
            else if (dec_word.Length == 8)
            {
                sKarod = dec_word.Substring(0, 1);
                sLakh = dec_word.Substring(1, 2);
                sThou = dec_word.Substring(3, 2);
                sHun = dec_word.Substring(5, 1);
                sTen = dec_word.Substring(6, 2);
                int karod = Convert.ToInt32(sKarod);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                str_word = Num_To_Word[karod] + " " + Num_Unit[3] + " " +
                    Common(sTen, sHun, sThou, sLakh, "", "");
            }

            else if (dec_word.Length == 9)
            {

                sKarod = dec_word.Substring(0, 2);
                sLakh = dec_word.Substring(2, 2);
                sThou = dec_word.Substring(4, 2);
                sHun = dec_word.Substring(6, 1);
                sTen = dec_word.Substring(7, 2);
                int karod = Convert.ToInt32(sKarod);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);
                // र 
                str_word = Common(sTen, sHun, sThou, sLakh, sKarod, "");
            }
            else if (dec_word.Length == 10)
            {
                sKarod = dec_word.Substring(1, 2);
                sLakh = dec_word.Substring(3, 2);
                sThou = dec_word.Substring(5, 2);
                sHun = dec_word.Substring(7, 1);
                sTen = dec_word.Substring(8, 2);
                int arba = Convert.ToInt32(dec_word.Substring(0, 1));
                int karod = Convert.ToInt32(sKarod);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);


                str_word = Num_To_Word[arba] + " " + Num_Unit[4] + " " +
                     Common(sTen, sHun, sThou, sLakh, sKarod, "");
            }
            else if (dec_word.Length == 11)
            {
                sKarod = dec_word.Substring(2, 2);
                sLakh = dec_word.Substring(4, 2);
                sThou = dec_word.Substring(6, 2);
                sHun = dec_word.Substring(8, 1);
                sTen = dec_word.Substring(9, 2);
                int arba = Convert.ToInt32(dec_word.Substring(0, 2));
                int karod = Convert.ToInt32(sKarod);
                int lakh = Convert.ToInt32(sLakh);
                int thou = Convert.ToInt32(sThou);
                int hun = Convert.ToInt32(sHun);
                int ten = Convert.ToInt32(sTen);


                str_word = Num_To_Word[arba] + " " + Num_Unit[4] + " " +
                   Common(sTen, sHun, sThou, sLakh, sKarod, "");
            }
            else
            {
                int size_of_arr = (int)(paramNumber.ToString().Length / 2 - 3);
                int[] nums = new int[size_of_arr];
            }
            return str_word_pre + str_word + str_word_post;
        }

        
    }
}