module CurrencyFormatter

  # Brazillian currency
  def formatted_value
    "R$ #{@value}"
  end

  def format_currency(*variables_and_methods)
    variables_and_methods.each do |name|
      define_method("formatted_#{name}") do
        value = respond_to?(name)? send(name) : instance_variable_get("@#{name}")
        "R$ #{value}"
      end
    end
  end

end
