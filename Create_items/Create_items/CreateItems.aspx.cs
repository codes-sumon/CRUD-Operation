using Create_items.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Create_items
{
    public partial class Create_Items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cleaarFild();
            }
        }

        private void cleaarFild()
        {
            txtItemCode.Text=txtID.Text = txtItemFullName.Text = txtItemShortName.Text =  "";
            btnDelete.Visible = false;
            DataTable dt = createItemManager.ShowItem();
            itemGridView.DataSource = dt;
            itemGridView.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            

            
                createItemInfo acreateItemInfo = createItemManager.getItemInfoDetails(txtID.Text);
                if (acreateItemInfo != null)
                {

                    acreateItemInfo.itemCode = txtItemCode.Text;
                    acreateItemInfo.itemFulName = txtItemFullName.Text;
                    acreateItemInfo.itemShortName = txtItemShortName.Text;
                    

                    int flag = createItemManager.updateItem(acreateItemInfo);
                    if (flag == 1)
                    {
                        cleaarFild();
                    }
                    else
                    {

                    }

                }
                else
                {
                    acreateItemInfo = new createItemInfo();

                    acreateItemInfo.itemCode = txtItemCode.Text;
                    acreateItemInfo.itemFulName = txtItemFullName.Text;
                    acreateItemInfo.itemShortName = txtItemShortName.Text;
                   

                    createItemManager.saveItemInfo(acreateItemInfo);
                    cleaarFild();
                }
               
            


        }


        protected void itemGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mstid = itemGridView.SelectedRow.Cells[1].Text;
            createItemInfo info = createItemManager.getItemInfoDetails(mstid);

            if(info != null)
            {
                txtID.Text = info.ID;
                itemID = info.ID;
                txtItemCode.Text = info.itemCode;
                txtItemFullName.Text = info.itemFulName;
                txtItemShortName.Text = info.itemShortName;
                btnDelete.Visible = true;
                btnSubmit.Text = "Update Items";
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtID.Text != null)
            {
                createItemInfo acreateItemInfo = createItemManager.getItemInfoDetails(txtID.Text);
                if (acreateItemInfo != null)
                {


                    int flag = createItemManager.DeletemessInfo(acreateItemInfo);
                    if (flag == 1)
                    {
                        cleaarFild();
                       
                    }
                    else
                    {

                    }

                }
                txtID.Text = null;
            }
        }

        public string itemID { get; set; }
    }
}

