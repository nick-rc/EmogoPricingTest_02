# EmogoPricingTest_02

- Copywrite Emogo® Corporation. All rights reserved.
- Nick Craig // 11 APR 2015 // Version 1.0

Testing Pricing Algorithm

**Fork repository before changing code.**

-- Test Additions 1 --
Each Class must be able to return a value representing Revenue for a Company, for Emogo, and Base Value

Return Value Functiosn:
- ReturnMessage_Value: A function that Returns the Value of sending an Emogo Message Pre-Interaction.

- ReturnCustomer_Value: A function that returns the value of including a customer within a collection/campaign.

- ReturnInteraction_Value: A function that takes parameters from the Emogo Message and returns the value of a specific customer interacting with a specific Emogo Message

- CalcPrice_Per_Sent: A function that takes in set values from parameters included in the Customer Class, Emogo Message Class

- ReturnCompany_Rev: A function that returns the Value to a company based on the customer type(Impression, Click, Purchase etc...)

- ReturnEmogo_Rev: Return the value of the Emogo Message link location that will be made for Emogo based of price per sent.


T.O.C.
- main.cpp = Main file running the output end of the program.

CLASSES
- Customer Class
-- Parameters Associated
- - customer_activity_rating = A value that falls within a range indicating how likely the customer is to interact with an Emogo(Value = 0-100)(Presets: Inactive, Interactive, Emogo Active)
- - customer_demographic_type = A value that indicates what demographic they fall into within a preset section of users
- - customer_age = Customers Age
- - customer_sex = Customer = Male, Female, or NULL
- - customer_relevance_score = A score assigned to the customer based on his affinity to the brand. (Value = 0-100)
- - customer_Adjusted_Value = The calculated value of a customer in relation to the Cpmany(Value = $XX.XX)(Ex. $0.50/customer)
- - customer_Emg_Value = The value of the customer relevant to Emogo
** Can have preset types for ease of use
-- Functions Associated
- - initWithPresetType:(CustomerClass*)presetCustomer = An init method that takes in a preset customer type with preset values based on commonly used business values.
- - initWithBusinessValue: Creates a customer with random values that add up to the set Business Value.
- - BusinessValue = Returns a value relevant to a Company combined with the Emogo Value
- - 


- Emogo Message Class
-- Parameters Associated
- - associated_Customers = A customer or collection of customers that will be associated with this Emogo_Message
- - associated_content_Value = The monetary value associated with the location of the URL.
- - interaction_Value = The value for a Company produced when a Customer interacts with the Emogo_Message. 
- Has a 'content-value' value which indicates the potential value of the location of its link.
- Has an interaction-potential value which indicates how likely the content is to attract a customer
- Has a price-per-Emogo-sent value indicating the cost to the business.
** Can have preset 'types' selected by Businesses
**
-- Functions Associated


- Emogo Campaign Collection Class
- Has a Types Array of chosen message content types
- Has a Demographics Array of the main demographics in the campaign
- Customer Campaign Collection Class
- Has an Inactive Customer Array
- Has an Interactive Customer Array
- Has an Emogo Active Customer Array
- Emogo SMS Messaging Campaign Class
- Has a length of campaign value.
- Has an SMS burst rate value
- Has a Total Bursts value
- Has an Emogo Campaign Collection
- Has a Customer Campaign Collection