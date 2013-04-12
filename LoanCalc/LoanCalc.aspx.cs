using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Adapted from http://www.informit.com/articles/article.aspx?p=25939&seqNum=5

namespace LoanCalc
{
    public partial class LoanCalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bPayment_Click(object sender, EventArgs e)
        {
            try
            {
                double principal = Convert.ToDouble(Principal.Text);
                double rate = Convert.ToDouble(Rate.Text) / 100;
                double term = Convert.ToDouble(Term.Text);
                double tmp = System.Math.Pow(1 + (rate / 12), term);
                double payment = principal * (((rate / 12) * tmp) / (tmp - 1));
                double totPaid = payment * term;
                double interest = totPaid - principal;
                Output.Text = "Monthly Payment = " + payment.ToString("c") + " Total Paid = " + totPaid.ToString("c") +
                    " Total Money Lost: " + interest.ToString("c");
            }
            catch (Exception)
            {
                Output.Text = "Error";
            }
        }
    }
}