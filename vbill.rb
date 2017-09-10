# An App to Charge money by reading a Google Sheet

require 'json'
require 'httparty'
require 'braintree'
require 'yaml' 
require 'pry'

secrets = YAML.load_file("./secrets.yaml")

Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = secrets["braintree"]["merchant_id"]
Braintree::Configuration.public_key = secrets["braintree"]["public_key"]
Braintree::Configuration.private_key = secrets["braintree"]["private_key"]



  puts Braintree::ClientToken.generate



# result = Braintree::Transaction.sale(
#   :amount => "1000.00",
#   :payment_method_nonce => nonce_from_the_client,
#   :options => {
#     :submit_for_settlement => true
#   }
# )

# if result.success?
#   puts "success!: #{result.transaction.id}"
# elsif result.transaction
#   puts "Error processing transaction:"
#   puts "  code: #{result.transaction.processor_response_code}"
#   puts "  text: #{result.transaction.processor_response_text}"
# else
#   p result.errors
# end

