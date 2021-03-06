library(shiny)

shinyUI(
  navbarPage (
    title = 'Are you over-trusting your intuitions? (Created by Emma(Jielei) Zhu)',
    id = 'nav',
    theme = shinytheme('united'),
    
    tabPanel('Motivation',
             fluidRow(
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               h2('"I believe in intuitions and inspirations...I sometimes FEEL that I am right. I do not KNOW that I am."', align = 'center'),
               br(),
               h3('Albert Einstein', align = 'center'),
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               h3('(Scroll down)', align = 'center'),
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br()
             ),
             fluidRow(
               column(width = 8,
                      offset = 2,
                      h2("Chances are you believe in intuitions just like Albert Einstein does. You rely on them when you feel lazy, you rely on them when your cognitive resources are running low, and you rely on them to make decisions that don't matter much."),
                      br(),br(),
                      h2('There is no doubt that our intuitions can be extremely helpful, but they can also lead us down to wrong paths.'),
                      br(),
                      h2('So, how can we make better judgments of when to trust our intuitions and when not to?'),
                      br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
                      h2(div("Using confidence!", style = 'color:blue'), align = 'center')
               )
             ),
             fluidRow(
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               h2('How can this app help?', align = 'center'), 
               br(),br(),br(),
               column(
                 width = 10,
                 offset = 1,
                      h2("This app will simulate", span("a betting game", style = "color:red"), "where you will be asked 5 questions about Americans' personal income, and depending on how confident you are, you can choose how much money you are going to bet on your answers. If you end up winning money, congratulations, you know exactly when to trust your intuitions and how much you can trust them. But if you end up losing money, you are over-trusting your intuitions.", align = 'center')),
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               h2('So, are you over-trusting your intuitions?', align = 'center'),
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               h2("Well, let's find out!", align = 'center'),
               br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
               column(width = 7,
                      offset = 4,
                      img(src='gameshow.jpg', height = 400, width = 550)
               ),
               column(width = 7,
                      offset = 3,
                      div(
                        br(),br(),br(),br(),
                        h1('RULES:'),
                        br(),br(),
                        h2('1. Answer the following 5 questions about Personal Income in the U.S. using your intuitions.'),
                        h2('2. Choose how much money you are willing to bet on each of your answers.'),
                        h2('ATTENTION: THIS IS REAL. If your answer is correct, you win the amount that you have bet on. If your answer is incorrect, you LOSE the amount you have bet on.', span('So, it is very important that you choose the amount that best reflects your confidence. Not more. Not less.', style = 'color : red'), 'The amount of money you can bet on each answer ranges from $1 to $10, giving a maximum of $50 you can win in this game, and a maximum of $50 you can lose in this game.'),
                        br(),
                        h2('3. After you have finished step 1 and step 2, go to the "Explore the data" tab to find the correct answers. Your total earnings in this game will be displayed under the "Summary" tab.'), style = 'color:blue'),
                      br(),br(),
                      h4('This dataset is obtained from', a(href="https://www.census.gov/data/tables/time-series/demo/income-poverty/cps-pinc/pinc-02.html", " Census.gov website.")),
                      h4("All income data reported here are from 2005 to 2014 of people who were 18 years old or over, and who have worked full time, all year round. "),
                      br(),br(),br(),br(),br(),br(),br(),br(),br(),br()
               )
             ),
             fluidRow(
               h2(div('Income vs. Marital Status', style = 'color:green'), align = 'center'),
               br(),
               column(width = 4,
                      offset = 1,
                      radioButtons("answer1", 
                                   label = h2("Who has the highest income?"),
                                   choices = list("Never married" = 1, "Married" = 2, "Divorced" = 3),
                                   width = '500px'
                      ),
                      sliderInput("bet1", 
                                  label = h2("How much would you bet on your answer?"), 
                                  min = 0, 
                                  max = 10, 
                                  value = 0,
                                  width = '500px'
                      )
               ),
               column(width = 4,
                      offset = 2,
                      radioButtons("answer2", 
                                   label = h2("Who has the highest income?"),
                                   choices = list("Married, Spouse Absent" = 1, "Divorced" = 2, "Never Married" = 3),
                                   width = '500px'
                      ),
                      
                      sliderInput("bet2", 
                                  label = h2("How much would you bet on your answer?"), 
                                  min = 0, 
                                  max = 10, 
                                  value = 0,
                                  width = '500px'
                      )
               )
             ),
             fluidRow(
               column(width = 4,
                      offset = 1,
                      br(),br(),
                      h2(div('Income vs. Gender', style = 'color:green'), align = 'center'),
                      radioButtons("answer3", 
                                   label = h2("Who has the higher income?"),
                                   choices = list("Male" = 1, "Female" = 2),
                                   width = '600px'
                      ),
                      sliderInput("bet3", 
                                  label = h2("How much would you bet on your answer?"), 
                                  min = 0, 
                                  max = 10, 
                                  value = 0,
                                  width = '600px'
                      )
               ),
               column(width = 4,
                      offset = 2,
                      br(),br(),
                      h2(div('Income vs. Race', style = 'color:green'), align = 'center'),
                      radioButtons("answer4", 
                                   label = h2("Who has the highest income?"),
                                   choices = list("White" = 1, "Black" = 2, "Asian" = 3, "Hispanic" = 4, "White & Asian" = 5, "White & Black" = 6, "Asian & Hispanic" = 7),
                                   width = '600px'
                      ),
                      sliderInput("bet4", 
                                  label = h2("How much would you bet on your answer?"), 
                                  min = 0, 
                                  max = 10, 
                                  value = 0,
                                  width = '600px'
                      )
               )
             ),
             br(),br(),br(),br(),
             fluidRow(
               column(width = 5,
                      offset = 4,
                      h2(div('Income vs. Gender & Race', style = 'color:green'), align = 'center'),
                      radioButtons("answer5", 
                                   label = h2("Who has the highest income?"),
                                   choices = list("White female" = 1, "Asian female" = 2, "Black male" = 3, "Hispanic male" = 4),
                                   width = '600px'
                      ),
                      sliderInput("bet5", 
                                  label = h2("How much would you bet on your answer?"), 
                                  min = 0, 
                                  max = 10, 
                                  value = 0,
                                  width = '600px'
                      ),
                      br(),br(),br(),br(),br()
               )
             )
             
    ),
    navbarMenu('Explore the data',
               tabPanel('Income vs. Marital Status',
                        fluidRow(
                          column(width = 6,
                                 offset = 3,
                                 h3('Income vs. Marital Status'),
                                 htmlOutput('marital_total_motion')
                          )
                        )
               ),
               tabPanel('Income vs. Married(break down)',
                        fluidRow(
                          column(3,
                                 h3(' ')
                          ),
                          column(6,
                                 h3('Income vs. Marital Status'),
                                 htmlOutput('marital_motion')
                          )
                        )
               ),
               tabPanel('Income vs. Gender',
                        fluidRow(
                          column(3,
                                 h3(' ')
                          ),
                          column(6,
                                 h3('Income vs. Gender'),
                                 htmlOutput('gender_motion')
                          )
                        )
               ),
               tabPanel('Income vs. Race',
                        fluidRow(
                          column(3,
                                 h3(' ')
                          ),
                          column(6,
                                 h3('Income vs. Race'),
                                 htmlOutput('race_motion')
                          )
                        )
               ),
               tabPanel('Income vs. Gender & Race',
                        fluidRow(
                          column(3,
                                 h3(' ')
                          ),
                          column(6,
                                 h3('Income vs. Gender & Race'),
                                 htmlOutput('race_gender_motion')
                          )
                        )
               )
    ),
    tabPanel('Understand the data',
             fluidRow(
               column(
                 width = 2,
                 style = "background-color:#F8F8F8",
                 h4('Explore raw data'),
                 br(),
                 selectInput('marital_status',
                             'Select MARITAL STATUS',
                             choices = marital_choice,
                             selected = 'NeverMarried'),
                 br(),
                 selectInput('year',
                             'Select YEAR',
                             choices = year_choice,
                             selected = '2014'),
                 br(),
                 selectInput('race',
                             'Select RACE',
                             choices = race_choice,
                             selected = 'All'),
                 br(),
                 selectInput('gender',
                             'Select GENDER',
                             choices = gender_choice,
                             selected = 'Both')
               ),
               column(
                 width = 9,
                 htmlOutput('hist')
               )
             )
    ),
    tabPanel('Summary',
             fluidRow(
               column(3, img(src='wedding_money.jpg', height=400, width=300)),
               column(width = 8,
                      offset = 1,
                      h3('1. According to U.S. personal income data from 2005 to 2014, married people reported the highest income on average, followed by people who are divorced, and people who stayed single.'),
                      br(),br(),
                      h3('2. When breaking down married people into "spouse present" and "spouse absent" subgroups, people who are married but does not live with their spouse("spouse absent") reported lower income than people who are divorced.'),
                      br(),br(),
                      h3('3. Men on average have higher income than women.'),
                      br(),br(),
                      h3('4. Among all races, Caucasians and Asians tend to have the highest income, followed by African Americans and Hispanics.'),
                      br(),br(),
                      h3("5. When comparing income levels between Asian men and Caucasian women, Asian men reported higher earnings than Caucasian women."),
                      br(),br(),br(),
                      div(
                        h1("You earned ", textOutput('money', inline = T), ' dollars',
                           style = 'color:red')
                      ),
                      br(),br(),br(),
                      h2("Creator's note:"),
                      br(),
                      h2("Did you lose money? If yes, you are over-trusting your intuitions. You are having too much confidence in your intuitions when you really shouldn't. Try to think back to where it might have gone wrong. Are your relying on biased observations? stereotypes in TV shows? words from an unreliable source? Try to reflect on the possible reasons that led you astray, so you can have a more realistic understanding of your intuitions."),
                      br(),br(),
                      h2("Additionally, and this is very important, in order for you to get the most out of this game, it is critical that you believe the money is real. With that said, please send the amount you lost to"),
                      h4("Emma Zhu", align = 'center'),
                      h4("500 8th Avenue, Suite 905", align = 'center'),
                      h4("New York, NY, 10018", align = 'center'),
                      br(),br(),br(),br(),
                      h2("Did you win some money? If yes, congratulations! You are trusting your intuitions just the right amount. Keep it up!"),
                      h2("Looking for the money that you won? Please take a screenshot of the amount, and send it to jielei.emma.zhu@gmail.com. The creator herself will issue you a donation certificate made out to this app in the same amount. She deserves it with all the time and effort she have put into this app. Thank you for your donation."),
                      br(),br(),br(),br(),
                      h1("If you have enjoyed this app, invite your friends and families to play!", style = 'color:blue'),
                      h1("Find out about their intuitions and help them to see whether they are over-trusting them!", style = 'color:blue')
               )
             )
    )
  )
)