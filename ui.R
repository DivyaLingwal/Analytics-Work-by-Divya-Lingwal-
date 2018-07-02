
library(shiny)
library(shinydashboard)
Aerials_data<-read.csv("C:\\Users\\dl0037\\Documents\\R\\R_Files\\Aerials_Shiny\\Aerials_cleaned.csv")
shinyUI(
  dashboardPage(
  
    dashboardHeader(title = "Repair & Maintenance Costs",
                    dropdownMenu(type = "message",
                                 messageItem(from="IT team",message="R&M costs hits all time high",icon=icon("bar-chart"),time = "14:00"),
                                 messageItem(from = "SAP Team",message = "Meeting with Fleet team at 3 PM on Monday",icon=icon("handshake-o"),time = "07-01-2018")),
                    dropdownMenu(type = "notifications",
                                 notificationItem(
                                   text = "2 New tabs added to the Dashboard",
                                   icon = icon("dashboard"),
                                   status = "success"
                                 )),
                    dropdownMenu(type = "tasks",
                                taskItem(value=30,
                                 color="aqua",
                                 "Shiny Dashboard completion"))
                    ),
                    
    dashboardSidebar(
    sidebarMenu(
      sidebarSearchForm("searchText","buttonSearch","Search"),
    menuItem("Dashboard",tabName = "dashboard",icon = icon("dashboard")),
    menuSubItem("Dashboard for Sales",tabName = "Sales"),
    menuSubItem("Dashboard for IT",tabName = "IT"),
    menuItem("Detailed analysis"),
    menuItem("Raw data")
    
  )),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              
              fluidRow(
        box(width = 8, status = "primary", solidHeader = TRUE,title = "Yearly Average Repair & Maintenance Costs",plotOutput("lineplot")),
        box(width = 4,status = "warning", background = "aqua",solidHeader = TRUE,
            "Use these controls to fine tune your Dashboard",
        textInput("text_inp","Search opportunities",value="5246")
            )
        )),
      tabItem(tabName = "Sales",h1("Sales dashboard")),
      tabItem(tabName = "IT",h2("IT dashboard"))
    ))
  )
)

