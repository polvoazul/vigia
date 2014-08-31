shared_examples "redsnow doubles" do

  let(:resource) do
    instance_double(
      RedSnow::Resource,
      parameters: resource_parameters,
      uri_template: resource_uri_template,
      model: resource_model
    )
  end

  let(:resource_uri_template) do
    '/scenarios/example'
  end

  let(:resource_model) do
    instance_double(
      RedSnow::Payload,
      headers: resource_model_headers
    )
  end
  
  let(:resource_model_headers) do
    instance_double(
      RedSnow::Headers,
      collection: resource_model_headers_collection
    )
  end
  
  
  let(:resource_model_headers_collection) do
    [ {name: 'Resource-Model-Header', value: 'A Resource Model Header' } ]
  end

  let(:resource_parameters) do
    instance_double(
      RedSnow::Parameters,
      collection: [resource_parameter_one]
    )
  end
  
  let(:resource_parameter_one) do
    instance_double(
      RedSnow::Parameter,
      name: "scenario_slug",
      example_value: 'scenario_one'
    )
  end

  let(:response) do
    instance_double(
      RedSnow::Payload,
      name: expected_response_name,
      body: expected_response_body,
      headers: response_headers
    )
  end

  let(:expected_response_name) do
    'The example response name'
  end

  let(:expected_response_body) do
    'The example response body'
  end

  let(:response_headers) do
    instance_double(
      RedSnow::Headers,
      collection: response_headers_collection
    )
  end

  let(:response_headers_collection) do
    [ {name: 'Response-Header', value: 'A Response Header' } ]
  end

  let(:payload) do
    instance_double(
      RedSnow::Payload,
      name: payload_name,
      body: payload_body,
      headers: payload_headers
    )
  end

  let(:payload_name) do
    '100'
  end
  
  let(:payload_body) do 
    'Payload body'
  end
  
  let(:payload_headers) do
    instance_double(
      RedSnow::Headers,
      collection: payload_headers_collection
    )
  end

  let(:payload_headers_collection) do
    [ {name: 'Payload-Header', value: 'A Payload Header' } ]
  end

  let(:action) do
    instance_double(
      RedSnow::Action,
      parameters: action_parameters)
  end

  let(:action_parameters) do
    instance_double(
      RedSnow::Parameters,
      collection: [action_parameter_one]
    )
  end

  let(:action_parameter_one) do
    instance_double(
      RedSnow::Parameter,
      name: 'page',
      example_value: '3'
    )
  end

  let(:apib_example) do
    instance_double(RedSnow::TransactionExample)
  end
end