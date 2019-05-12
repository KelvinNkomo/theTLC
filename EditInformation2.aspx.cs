using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.Security;


namespace Synergince
{
    public partial class EditInformation2 : System.Web.UI.Page
    {
        //create connection string
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tlcString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();

            //Populates the gridview with the selectedindex in the list. The selectedindex being the table
            SqlDataAdapter da = new SqlDataAdapter(string.Format("SELECT * FROM {0}", drpTable.SelectedValue), con);
            DataSet ds = new DataSet();
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            da.Fill(ds);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();
        }
        private void BindData()
        {
            //Binds the data in the gridview with the database table and updating it.
            string strQuery = "SELECT * FROM {0}";
            SqlCommand cmd = new SqlCommand(strQuery);
            GridView1.DataSource = GetData(cmd);
            GridView1.DataBind();
        }

        private object GetData(SqlCommand cmd)
        {
            throw new NotImplementedException();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //if (drpTable.SelectedIndex < 0)
            //    txtSearch.Text = " ";
            //else
            //{
            //    //if (e.Row.RowType == DataControlRowType.DataRow)
            //    //{
            //    //    e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtSearch.Text.Trim(), delegate(Match match)
            //    //    {
            //    //        return string.Format("<span style ='background-color:#d9edf7'>{0}</span>", match.Value);
            //    //    }, RegexOptions.IgnoreCase);

            //    //}
            //    (GridView1.DataSource as DataTable).DefaultView.RowFilter = string.Format("Name LIKE '%{0}%'", txtSearch.Text);
            //}

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Set the edit index.
            //    GridView1.EditIndex = e.NewEditIndex;
            //Bind data to the GridView control
            BindData();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //Cancel edit
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            ////Update details
            //GridView1.SelectedRow = 
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //select
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("hjk");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void GridView1_Sorted(object sender, EventArgs e)
        {

        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_Unload(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }
    }
}