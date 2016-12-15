if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_NpIU5cYDvAoV27cwKFWlmvt6',
    :secret_key => 'sk_test_v7ZS353RvmUHkGwnB34QwU3q'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
