using System;
using System.Windows;
using System.Data;
using System.Data.SqlClient;

namespace Lab2
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        string connStr = @"data source=DESKTOP-P6IEL6K;initial catalog=PERSONNEL;integrated security=True;connect timeout=30; encrypt=false; trustservercertificate=false; applicationintent=ReadWrite; MultiSubnetFailover=false";
        DataTable official_inf = new DataTable();
        DataTable personal_inf = new DataTable();
        DataTable EMPLOYEE = new DataTable();

        private void AddOffInf_Click(object sender, RoutedEventArgs e)
        {
            int idEmployee = Convert.ToInt32(textBoxIdEmployee.Text);
            int personalNum = Convert.ToInt32(textBoxPersonalNum.Text);
            string surname = textBoxSurname.Text;
            string name = textBoxName.Text;
            string patronymic = textBoxPatronymic.Text;
            int idDep = Convert.ToInt32(textBoxIdDep.Text);
            int idPost = Convert.ToInt32(textBoxIdPost.Text);
            string education = textBoxEducation.Text;
            int idSpec = Convert.ToInt32(textBoxIdSpec.Text);
            string experience = textBoxExperience.Text;
            string phoneNum = textBoxPhoneNum.Text;
            int wage = Convert.ToInt32(textBoxWage.Text);
            string status = textBoxStatus.Text;

            if(idEmployee == 0)
            {
                MessageBox.Show("Check the data");
            }
            else
            {
                DB db = new DB();
                db.openConnection(connStr);
                db.AddOffInf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status);
                MessageBox.Show("Done");
                db.closeConnection();

            }
        }

        private void DropOffInf_Click(object sender, RoutedEventArgs e)
        {
            int idEmployee = Convert.ToInt32(textBoxIdEmployee.Text);
                DB db = new DB();
                db.openConnection(connStr);
            db.DropOffInf(idEmployee);
            MessageBox.Show("Done");
            db.closeConnection();            
        }

        private void UpdateOffInf_Click(object sender, RoutedEventArgs e)
        {
            int idEmployee = Convert.ToInt32(textBoxIdEmployee.Text);
            int personalNum = Convert.ToInt32(textBoxPersonalNum.Text);
            string surname = textBoxSurname.Text;
            string name = textBoxName.Text;
            string patronymic = textBoxPatronymic.Text;
            int idDep = Convert.ToInt32(textBoxIdDep.Text);
            int idPost = Convert.ToInt32(textBoxIdPost.Text);
            string education = textBoxEducation.Text;
            int idSpec = Convert.ToInt32(textBoxIdSpec.Text);
            string experience = textBoxExperience.Text;
            string phoneNum = textBoxPhoneNum.Text;
            int wage = Convert.ToInt32(textBoxWage.Text);
            string status = textBoxStatus.Text;
            
            if (idEmployee == 0)
            {
                MessageBox.Show("Check the data");
            }
            else
            {
                DB db = new DB();
                db.openConnection(connStr);
                db.UpdateOffInf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status);
                MessageBox.Show("Done");
                db.closeConnection();
            }
        }

        private void AllOffInf_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string sqlExpression = "GetOffInf";
                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();
                    SqlDataAdapter command = new SqlDataAdapter(sqlExpression, connection);
                    official_inf.Clear();
                    command.Fill(official_inf);
                    OffInfGrid.ItemsSource = official_inf.DefaultView;
                    MessageBox.Show("Done");
                    connection.Close();
                }
            }
            catch
            {
                MessageBox.Show("The request failed");
            }
        }

        // ------------------------------------------------------------------------------
        //error
        private void AddPersInf_Click(object sender, RoutedEventArgs e)
        {
            int personalNum = Convert.ToInt32(textBoxpersonalNum.Text);
            string placeBirth = textBoxPlaceBirth.Text;
            string passport = textBoxPassport.Text;
            string address = textBoxAddress.Text;
            string regAddress = textBoxRegAddress.Text;
            string maritalStat = textBoxIdMaritalStat.Text;
            int children = Convert.ToInt32(textBoxRegChildren.Text);
            string dateBirth = textBoxDateBirth.Text;

            if (personalNum == 0)
            {
                MessageBox.Show("Check the data");
            }
            else
            {
                DB db = new DB();
                db.openConnection(connStr);
                db.AddPersInf(personalNum, placeBirth, passport, address, regAddress, maritalStat, children, dateBirth);
                MessageBox.Show("Done");
                db.closeConnection();
            }
        }

        private void DropPersInf_Click(object sender, RoutedEventArgs e)
        {
            int personalNum = Convert.ToInt32(textBoxpersonalNum.Text);

            DB db = new DB();
            db.openConnection(connStr);
            db.DropPersInf(personalNum);
            MessageBox.Show("Done");
            db.closeConnection();
        }

        private void UpdatePersInf_Click(object sender, RoutedEventArgs e)
        {
            int personalNum = Convert.ToInt32(textBoxpersonalNum.Text);
            string placeBirth = textBoxPlaceBirth.Text;
            string passport = textBoxPassport.Text;
            string address = textBoxAddress.Text;
            string regAddress = textBoxRegAddress.Text;
            string maritalStat = textBoxIdMaritalStat.Text;
            int children = Convert.ToInt32(textBoxRegChildren.Text);
            string dateBirth = textBoxDateBirth.Text;

            if(personalNum == 0)
            {
                MessageBox.Show("Check the data");
            }
            else
            {
                DB db = new DB();
                db.openConnection(connStr);
                db.UpdatePersInf(personalNum, placeBirth, passport, address, regAddress, maritalStat, children, dateBirth);
                MessageBox.Show("Done");
                db.closeConnection();
            }
        }

        private void AllPersInf_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string sqlExpression = "GetPersInf";

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();
                    SqlDataAdapter command = new SqlDataAdapter(sqlExpression, connection);
                    personal_inf.Clear();
                    command.Fill(personal_inf);
                    PersInfGrid.ItemsSource = personal_inf.DefaultView;
                    MessageBox.Show("Done");
                    connection.Close();
                }
            }
            catch
            {
                MessageBox.Show("The request failed");
            }
        }

        private void allEmployee_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string sqlExpression = "ProcEmployee";

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();
                    SqlDataAdapter command = new SqlDataAdapter(sqlExpression, connection);
                    EMPLOYEE.Clear();
                    command.Fill(EMPLOYEE);
                    EmployeeGrid.ItemsSource = EMPLOYEE.DefaultView;
                    MessageBox.Show("Done");
                    connection.Close();
                }

            }
            catch
            {
                MessageBox.Show("The request failed");
            }
        }

    }
}

// personalNum, placeBirth, passport, address, regAddress, maritalStat, children, dateBirth