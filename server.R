library(shiny)
shinyServer(
  function(input,output){
    output$myName <- renderText(input$Name)
    output$myAge <- renderText(input$Age)
    output$myGender<- renderText(input$Gender)
    output$out <- renderText(paste("The input Range as :",input$slider))
    output$state <- renderText(input$Statnames)
    output$myhist <- renderPlot({colm <- as.numeric(input$var)
    hist(iris[,colm],breaks = seq(0,max(iris[,colm],l=input$bins+1)),col=input$colors,main="Histofram of iris dataset",xlab=names(iris[colm]))})
  }
  )