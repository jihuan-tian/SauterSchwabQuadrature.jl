function k3p_cf(f, η1, η2, η3, ξ)

	# η1 = cartesian(η1)[1]
	# η2 = cartesian(η2)[1]
	# η3 = cartesian(η3)[1]
	# ξ =  cartesian(ξ)[1]

	(ξ^3)*((η1)^2)*(η2)*(

	f((1-ξ, ξ-ξ*η1+ξ*η1*η2), (1-(ξ-ξ*η1*η2*η3), ξ-ξ*η1)) +

	f((1-(ξ-ξ*η1*η2*η3), ξ-ξ*η1), (1-ξ, ξ-ξ*η1+ξ*η1*η2)) +

	f((1-ξ, ξ*η1*(1-η2+η2*η3)), (1-(ξ-ξ*η1*η2), ξ*η1*(1-η2))) +

	f((1-(ξ-ξ*η1*η2), ξ*η1*(1-η2)), (1-ξ, ξ*η1*(1-η2+η2*η3))) +

	f((1-(ξ-ξ*η1*η2*η3), ξ*η1*(1-η2*η3)), (1-ξ, ξ*η1*(1-η2))) +

	f((1-ξ, ξ*η1*(1-η2)), (1-(ξ-ξ*η1*η2*η3), ξ*η1*(1-η2*η3)))

	)
end


function k3p_ce(f, η1, η2, η3, ξ)

	# η1 = cartesian(η1)[1]
	# η2 = cartesian(η2)[1]
	# η3 = cartesian(η3)[1]
	# ξ =  cartesian(ξ)[1]

	(ξ^3)*((η1)^2) * f((1-ξ, ξ*η1*η3), (1-ξ*(1-η1*η2), ξ*η1*(1-η2))) +

	(ξ^3)*((η1)^2)*(η2)*(

	f((1-ξ, ξ*η1), (1-ξ*(1-η1*η2*η3), ξ*η1*η2*(1-η3))) +

	f((1-ξ*(1-η1*η2), ξ*η1*(1-η2)), (1-ξ, ξ*η1*η2*η3)) +

	f((1-ξ*(1-η1*η2*η3), ξ*η1*η2*(1-η3)), (1-ξ, ξ*η1)) +

	f((1-ξ*(1-η1*η2*η3), ξ*η1*(1-η2*η3)), (1-ξ, ξ*η1*η2))

	)
end


function k3p_cv(f,η1, η2, η3, ξ)

	# η1 = cartesian(η1)[1]
	# η2 = cartesian(η2)[1]
	# η3 = cartesian(η3)[1]
	# ξ =  cartesian(ξ)[1]

	(ξ^3)*η2*(

	f((1-ξ, ξ*η1), (1-ξ*η2, ξ*η2*η3)) +  f((1-ξ*η2, ξ*η2*η3), (1-ξ, ξ*η1))

	)
end


function k3p_pd(f, η1, η2, η3, ξ)

	# η1 = cartesian(η1)[1]
	# η2 = cartesian(η2)[1]
	# η3 = cartesian(η3)[1]
	# ξ = cartesian(ξ)[1]

	u = [η1*(1-η2), η2]		#jacobian of this transformation is (1-η2)
	v = [η3*(1-ξ), ξ]		#jacobian of this transformation is (1-ξ)

	return(f(u,v)*(1-η2)*(1-ξ))
end


# function k3_cf(η1, η2, η3, ξ)
#
# 	η1 = cartesian(η1)[1]
# 	η2 = cartesian(η2)[1]
# 	η3 = cartesian(η3)[1]
# 	ξ =  cartesian(ξ)[1]
#
# 	(ξ^3)*((η1)^2)*(η2)*(
#
# 	k2((ξ, ξ-ξ*η1+ξ*η1*η2), (ξ-ξ*η1*η2*η3, ξ-ξ*η1)) +
#
# 	k2((ξ-ξ*η1*η2*η3, ξ-ξ*η1), (ξ, ξ-ξ*η1+ξ*η1*η2)) +
#
# 	k2((ξ, ξ*η1*(1-η2+η2*η3)), (ξ-ξ*η1*η2, ξ*η1*(1-η2))) +
#
# 	k2((ξ-ξ*η1*η2, ξ*η1*(1-η2)), (ξ, ξ*η1*(1-η2+η2*η3))) +
#
# 	k2((ξ-ξ*η1*η2*η3, ξ*η1*(1-η2*η3)), (ξ, ξ*η1*(1-η2))) +
#
# 	k2((ξ, ξ*η1*(1-η2)), (ξ-ξ*η1*η2*η3, ξ*η1*(1-η2*η3)))
#
# 	)
# end
#
#
#
#
#
# function k3_ce(η1, η2, η3, ξ)
#
# 	η1 = cartesian(η1)[1]
# 	η2 = cartesian(η2)[1]
# 	η3 = cartesian(η3)[1]
# 	ξ =  cartesian(ξ)[1]
#
# 	(ξ^3)*((η1)^2) * k2((ξ, ξ*η1*η3), (ξ*(1-η1*η2), ξ*η1*(1-η2))) +
#
#
# 	(ξ^3)*((η1)^2)*(η2)*(
#
# 	k2((ξ, ξ*η1), (ξ*(1-η1*η2*η3), ξ*η1*η2*(1-η3))) +
#
# 	k2((ξ*(1-η1*η2), ξ*η1*(1-η2)), (ξ, ξ*η1*η2*η3)) +
#
# 	k2((ξ*(1-η1*η2*η3), ξ*η1*η2*(1-η3)), (ξ, ξ*η1)) +
#
# 	k2((ξ*(1-η1*η2*η3), ξ*η1*(1-η2*η3)), (ξ, ξ*η1*η2))
#
# 	)
# end
#
#
#
#
#
# function k3_cv(η1, η2, η3, ξ)
#
# 	η1 = cartesian(η1)[1]
# 	η2 = cartesian(η2)[1]
# 	η3 = cartesian(η3)[1]
# 	ξ =  cartesian(ξ)[1]
#
# 	(ξ^3)*η2*(
#
# 	k2((ξ, ξ*η1), (ξ*η2, ξ*η2*η3)) +  k2((ξ*η2, ξ*η2*η3), (ξ, ξ*η1))
#
# 	)
# end
