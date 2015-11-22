library(shiny) 
shinyUI(
  pageWithSidebar(
    headerPanel("Body Fats Calculator"),
    
    sidebarPanel(
      selectInput('gender', 'Select your Gender', c("Male","Female")),
      numericInput('height', 'Enter your Height (CM)', 170),
      numericInput('weight', 'Enter your weight (KG)', 65),
      numericInput('waist', 'Enter your Waist Measurement (CM)', 70, min = 50, max = 400, step = 1.0),
      numericInput('hip', 'Enter your Hip Measurement (CM)', 75, min = 50, max = 400, step = 1.0),
      numericInput('neck', 'Enter your Neck Measurement (CM)', 30, min = 20, max = 400, step = 1.0),
      submitButton('Submit')
    ), 
    mainPanel(
      p("Your body fat percentage refers to the amount of fat present in your body as a percentage. It includes both essential fat and storage fat. Essential body fat is found in your nerves, bone marrow and organs and cannot be lost without negative side effects.The storage body fat accumulates when excess energy or calories are consumed - this is the type of fat you can safely reduce to either lose weight or lower your body fat percentage. The U.S. Navy has devised a method to calculate your body fat percentage. It uses just a few measurements and a little math to come up with a value that can give you some insight in your health and weight. To measure your body fat percentage, you'll need just a few minutes, a measuring tape, and a calculator. That's it!"),
      p("1. Measure your Height. Measure your height while not wearing shoes. In addition, stand straight, head erect and eyes looking forward."),
      p("2. Measure your Waist. Use the circumference of your waist at a horizontal level around the navel for men, and at the level with the least width for women. Your arms should be relaxed by your side.."),
      p("3. Measure your Neck. Start below the larynx (Adam's apple) with the tape measure perpendicular to the long axis of the neck."),
      p("4. Measure your hips. Place the tape measure around the largest width of your hips."),
      
      
      h4('Body Fat (%):'),
      verbatimTextOutput("BF"),
      h4('Fat Mass (KG):'),
      verbatimTextOutput("FM"),
      h4('Lean Mass (KG):'),
      verbatimTextOutput("LM")
    )
    
  )   
)