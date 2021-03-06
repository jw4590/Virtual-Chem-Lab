%% makeCalib.m
% @DB Collins, March 2019

% make calibration chromatograms for each compound in makeChrom.m

%% caffeine
rt = 0.99;
wid = 0.13;
quant = [3684 12718 46383 118860];
filenames = ["Calibrations/Caffeine_1.csv", "Calibrations/Caffeine_2.csv",    "Calibrations/Caffeine_3.csv", "Calibrations/Caffeine_4.csv"];
mPhaseFac = 55;

h = figure(1);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 7000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Caffeine.png')

%% acetaminophen
rt = 1.3;
wid = 0.13;
quant = [7370 23804 86891 150534];
filenames = ["Calibrations/Acetaminophen_1.csv", "Calibrations/Acetaminophen_2.csv",    "Calibrations/Acetaminophen_3.csv", "Calibrations/Acetaminophen_4.csv"];
mPhaseFac = 95;

h = figure(2);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 5000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Acetaminophen.png')

%% pseudoephedrine
rt = 1.4;
wid = 0.13;
quant = [9597 23319 91002 227054];
filenames = ["Calibrations/Pseudoephedrine_1.csv", "Calibrations/Pseudoephedrine_2.csv",    "Calibrations/Pseudoephedrine_3.csv", "Calibrations/Pseudoephedrine_4.csv"];
mPhaseFac = 120;

h = figure(3);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 6000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Pseudoephedrine.png')

%% ephedrine
rt = 1.4;
wid = 0.25;
quant = [6574 23554 89508 233279];
filenames = ["Calibrations/Ephedrine_1.csv", "Calibrations/Ephedrine_2.csv",    "Calibrations/Ephedrine_3.csv", "Calibrations/Ephedrine_4.csv"];
mPhaseFac = 110;

h = figure(4);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 4000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Ephedrine.png')

%% amphetamine (Adderall)
%Cases 2 and 3
rt = 1.502;
wid = 0.25;
quant = [1072 18291 39363 55005];
filenames = ["Calibrations/Amphetamine_Case123_1.csv", "Calibrations/Amphetamine_Case123_2.csv",    "Calibrations/Amphetamine_Case123_3.csv", "Calibrations/Amphetamine_Case123_4.csv"];
mPhaseFac = 175;

h = figure(5);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 1000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Amphetamine_Case123.png')

%Case 4
filenames = ["Calibrations/Amphetamine_Case4_1.csv", "Calibrations/Amphetamine_Case4_2.csv",    "Calibrations/Amphetamine_Case4_3.csv", "Calibrations/Amphetamine_Case4_4.csv"];
mPhaseFac = 55;

h = figure(6);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 2000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Amphetamine_Case4.png')

%% methamphetamine
rt = 1.6;
wid = 0.23;
quant = [2090 17676 41710 57836];
filenames = ["Calibrations/Methamphetamine_1.csv", "Calibrations/Methamphetamine_2.csv",    "Calibrations/Methamphetamine_3.csv", "Calibrations/Methamphetamine_4.csv"];
mPhaseFac = 80;

h = figure(7);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 1500])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Methamphetamine.png')

%% ethacrynic acid methyl ester (Edecrin)
rt = 1.82;
wid = 0.23;
quant = [13598 69753 127019 452253];
filenames = ["Calibrations/EthacrynicAcidMethylEster_1.csv", "Calibrations/EthacrynicAcidMethylEster_2.csv",    "Calibrations/EthacrynicAcidMethylEster_3.csv", "Calibrations/EthacrynicAcidMethylEster_4.csv"];
mPhaseFac = 175;

h = figure(8);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 5000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/EthacrynicAcidMethylEster.png')

%% DUMMY COMPOUNDS

%% methylphenidate

rt = 1.72;
wid = 0.23;
quant = [13598 69753 127019 452253];
filenames = ["Calibrations/Methylphenidate_1.csv", "Calibrations/Methylphenidate_2.csv",    "Calibrations/Methylphenidate_3.csv", "Calibrations/Methylphenidate_4.csv"];
mPhaseFac = 150;

h = figure(9);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 6000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Methylphenidate.png')

%% THC

rt = 2.0;
wid = 0.23;
quant = [13598 69753 127019 452253];
filenames = ["Calibrations/THC_1.csv", "Calibrations/THC_2.csv",    "Calibrations/THC_3.csv", "Calibrations/THC_4.csv"];
mPhaseFac = 170;

h = figure(10);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 6000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/THC.png')

%% chlorothiazide

rt = 1;
wid = 0.23;
quant = [3684 12718 46383 118860];
filenames = ["Calibrations/Chlorothiazide_1.csv", "Calibrations/Chlorothiazide_2.csv",    "Calibrations/Chlorothiazide_3.csv", "Calibrations/Chlorothiazide_4.csv"];
mPhaseFac = 60;

h = figure(11);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 4000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Chlorothiazide.png')

%% phenylephrine

rt = 1.05;
wid = 0.13;
quant = [9597 23319 91002 227054];
filenames = ["Calibrations/Phenylephrine_1.csv", "Calibrations/Phenylephrine_2.csv",    "Calibrations/Phenylephrine_3.csv", "Calibrations/Phenylephrine_4.csv"];
mPhaseFac = 70;

h = figure(12);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 10000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Phenylephrine.png')

%% ibuprofen

rt = 1.7;
wid = 0.13;
quant = [9597 23319 91002 227054];
filenames = ["Calibrations/Ibuprofen_1.csv", "Calibrations/Ibuprofen_2.csv",    "Calibrations/Ibuprofen_3.csv", "Calibrations/Ibuprofen_4.csv"];
mPhaseFac = 180;

h = figure(13);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 4000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/Ibuprofen.png')

%% acetylsalicylic acid

rt = 1.27;
wid = 0.13;
quant = [9597 23319 91002 227054];
filenames = ["Calibrations/AcetylsalicylicAcid_1.csv", "Calibrations/AcetylsalicylicAcid_2.csv",    "Calibrations/AcetylsalicylicAcid_3.csv", "Calibrations/AcetylsalicylicAcid_4.csv"];
mPhaseFac = 70;

h = figure(14);
h.Position = [200,200,550,750];
for j = 1:length(quant)
    subplot(4,1,j)
    plotChrom(rt,wid,quant(j),mPhaseFac,1,filenames(j))
    ylim([0 10000])
    xticks(0:0.5:10)
    tx = sprintf('Peak Area = %d',quant(j));
    title(tx)
    ax = gca;
    ax.XMinorTick = 'on';
    grid on
end
saveas(h,'Calibrations/AcetylsalicylicAcid.png')

