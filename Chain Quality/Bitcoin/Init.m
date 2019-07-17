addpath('/users/cosic/rzhang/Desktop/matlab/MDPtoolbox/fsroot/MDPtoolbox');

clear

% alphaPower is the mining power share of the attacker
% gammaRatio is the proportion of honest miners that would mine on the
%     attacker's chain during a tie
% maxForkLen is the maximum length of a block fork
global alphaPower gammaRatio maxForkLen lowerBoundReward upperBoundReward;

alphaGroup = [0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45];

gammaGroup = [0.0 0.5];


gammaRatio = 0;
lowerBoundRewardZero = [];
upperBoundRewardZero = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 80;
    else
        maxForkLen = 160;
    end
    InitStates;
    SolveMDP;
    lowerBoundRewardZero = [lowerBoundRewardZero lowerBoundReward];
    upperBoundRewardZero = [upperBoundRewardZero upperBoundReward];
end

gammaRatio = 0.5;
lowerBoundRewardHalf = [];
upperBoundRewardHalf = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 80;
    else
        maxForkLen = 160;
    end
    InitStates;
    SolveMDP;
    lowerBoundRewardHalf = [lowerBoundRewardHalf lowerBoundReward];
    upperBoundRewardHalf = [upperBoundRewardHalf upperBoundReward];
end

gammaRatio = 1;
lowerBoundRewardOne = [];
upperBoundRewardOne = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 80;
    else
        maxForkLen = 160;
    end
    InitStates;
    SolveMDP;
    lowerBoundRewardOne = [lowerBoundRewardOne lowerBoundReward];
    upperBoundRewardOne = [upperBoundRewardOne upperBoundReward];
end


% Please note that for larger alpha, the gap between uppper and lower bound
%     would be larger. It takes a larger maxForkLen for these two bounds to
%     converge. Even 160 is not always enough.



for gammaRatio = gammaGroup
    lowerBoundReward140= [];
    upperBoundReward140 = [];
    for alphaPower = alphaGroup
        if alphaPower <= 0.4
            maxForkLen = 70;
        else
            maxForkLen = 140;
        end
        InitStates;
        SolveMDP;
        lowerBoundReward140 = [lowerBoundReward140 lowerBoundReward];
        upperBoundReward140 = [upperBoundReward140 upperBoundReward];
    end
end

gammaRatio = 0;
lowerBoundReward120= [];
upperBoundReward120 = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 60;
    else
        maxForkLen = 120;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward120 = [lowerBoundReward120 lowerBoundReward];
    upperBoundReward120 = [upperBoundReward120 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward100= [];
upperBoundReward100 = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 50;
    else
        maxForkLen = 100;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward100 = [lowerBoundReward100 lowerBoundReward];
    upperBoundReward100 = [upperBoundReward100 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward80= [];
upperBoundReward80 = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 40;
    else
        maxForkLen = 80;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward80 = [lowerBoundReward80 lowerBoundReward];
    upperBoundReward80 = [upperBoundReward80 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward60= [];
upperBoundReward60= [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 30;
    else
        maxForkLen = 60;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward60 = [lowerBoundReward60 lowerBoundReward];
    upperBoundReward60 = [upperBoundReward60 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward40= [];
upperBoundReward40= [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 20;
    else
        maxForkLen = 40;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward40 = [lowerBoundReward40 lowerBoundReward];
    upperBoundReward40 = [upperBoundReward40 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward20= [];
upperBoundReward20 = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 10;
    else
        maxForkLen = 20;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward20 = [lowerBoundReward20 lowerBoundReward];
    upperBoundReward20 = [upperBoundReward20 upperBoundReward];
end


gammaRatio = 0;
lowerBoundReward10= [];
upperBoundReward10 = [];
for alphaPower = alphaGroup
    if alphaPower <= 0.4
        maxForkLen = 5;
    else
        maxForkLen = 10;
    end
    InitStates;
    SolveMDP;
    lowerBoundReward10 = [lowerBoundReward10 lowerBoundReward];
    upperBoundReward10 = [upperBoundReward10 upperBoundReward];
end