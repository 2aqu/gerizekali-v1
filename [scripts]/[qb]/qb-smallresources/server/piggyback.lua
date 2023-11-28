RegisterServerEvent('cmg2_animations:sync')
AddEventHandler('cmg2_animations:sync', function(target, animationLib, animation, animation2, distans, distans2, height, targetSrc, length, spin, controlFlagSrc, controlFlagTarget, animFlagTarget)
	TriggerClientEvent('cmg2_animations:syncTarget', targetSrc, source, animationLib, animation2, distans, distans2, height, length, spin, controlFlagTarget, animFlagTarget)
	TriggerClientEvent('cmg2_animations:syncMe', source, animationLib, animation,length, controlFlagSrc, animFlagTarget)
end)

RegisterServerEvent('cmg2_animations:stop')
AddEventHandler('cmg2_animations:stop', function(targetSrc)
	TriggerClientEvent('cmg2_animations:cl_stop', targetSrc)
end)




RegisterServerEvent('cmg2_animationsCarry:sync')
AddEventHandler('cmg2_animationsCarry:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height, targetSrc, length, spin, controlFlagSrc, controlFlagTarget, animFlagTarget)
	TriggerClientEvent('cmg2_animationsCarry:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length, spin, controlFlagTarget, animFlagTarget)
	TriggerClientEvent('cmg2_animationsCarry:syncMe', source, animationLib, animation, length, controlFlagSrc, animFlagTarget)
end)

RegisterServerEvent('cmg2_animationsCarry:stop')
AddEventHandler('cmg2_animationsCarry:stop', function(targetSrc)
	TriggerClientEvent('cmg2_animationsCarry:cl_stop', targetSrc)
end)