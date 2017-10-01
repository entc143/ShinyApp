library(shiny)
# Defination of Shiny DashBoard
shinyUI(fluidPage(
  
  #fluid pages scale their components in realtime to fill all available browser  width.
  #Header Panel:Create a header panel containing an application title.
  headerPanel(title="Demonstration of shiny widgets"),
  #SidebarLayout(): It creates a layout with a sidebar and main area.
  sidebarLayout(
    #sidebar panel
    sidebarPanel(
      ("Enter the personal details"),
      textInput("Name","Enter your name",""),
      textInput("Age","Enter your Age",""),
      radioButtons("Gender","Select the Gender",list("Male","Female"),""),
      sliderInput("slider","Select the value from Slider",min=0,max=5,value=c(2,3),step = 0.5,animate = TRUE),
      selectInput("Statnames","select the state",c("Maharashtra","Gujraat","Delhi"),selected = "Maharashtra",selectize=FALSE,multiple=FALSE),
      selectInput("var","1. Select the variable from the iris dataset",choices = c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3)),
      br(),
      sliderInput("bins","2. Select the number of Bins for histogram",min=5,max=25,value = 15),
      br(),
      radioButtons("colors","3.Select color of histogram",choices = c("green","red","yellow","violet"),selected = "green")
      ),
    mainPanel(
      ("Personal Information"),
      textOutput("myName"),
      textOutput("myAge"),
      textOutput("myGender"),
      textOutput("out"),
      textOutput("state"),
      plotOutput("myhist")
    )
  )
) )