@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{GaussianWeightedMeanPrecision},
                      :inbound_types => (Nothing, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution),
                      :name          => VariationalARCOutNPPPPP)


@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{GaussianWeightedMeanPrecision},
                      :inbound_types => (ProbabilityDistribution, Nothing, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution),
                      :name          => VariationalARCIn1PNPPPP)

@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{GaussianWeightedMeanPrecision},
                      :inbound_types => (ProbabilityDistribution, ProbabilityDistribution, Nothing, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution),
                      :name          => VariationalARCIn2PPNPPP)

@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{GaussianWeightedMeanPrecision},
                      :inbound_types => (ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, Nothing, ProbabilityDistribution, ProbabilityDistribution),
                      :name          => VariationalARCIn3PPPNPP)

@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{GaussianWeightedMeanPrecision},
                      :inbound_types => (ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, Nothing, ProbabilityDistribution),
                      :name          => VariationalARCIn4PPPPNP)

@naiveVariationalRule(:node_type     => AutoregressiveControl,
                      :outbound_type => Message{Gamma},
                      :inbound_types => (ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, ProbabilityDistribution, Nothing),
                      :name          => VariationalARCIn5PPPPPN)

# # Structured updates
#
# @structuredVariationalRule(:node_type     => Autoregressive,
#                            :outbound_type => Message{GaussianMeanVariance},
#                            :inbound_types => (Nothing, Message{Gaussian}, ProbabilityDistribution, ProbabilityDistribution),
#                            :name          => SVariationalAROutNPPP)
#
# @structuredVariationalRule(:node_type     => Autoregressive,
#                            :outbound_type => Message{GaussianMeanVariance},
#                            :inbound_types => (Message{Gaussian}, Nothing, ProbabilityDistribution, ProbabilityDistribution),
#                            :name          => SVariationalARIn1PNPP)
#
# @structuredVariationalRule(:node_type     => Autoregressive,
#                            :outbound_type => Message{GaussianMeanVariance},
#                            :inbound_types => (ProbabilityDistribution, Nothing, ProbabilityDistribution),
#                            :name          => SVariationalARIn2PPNP)
#
# @structuredVariationalRule(:node_type     => Autoregressive,
#                            :outbound_type => Message{Gamma},
#                            :inbound_types => (ProbabilityDistribution, ProbabilityDistribution, Nothing),
#                            :name          => SVariationalARIn3PPPN)
#
# @marginalRule(:node_type => Autoregressive,
#               :inbound_types => (Message{Gaussian}, Message{Gaussian}, ProbabilityDistribution, ProbabilityDistribution),
#               :name => MGaussianMeanVarianceGGGD)