namaPembaca = {'Sleepie', 'John', 'June', 'Janet', 'Danny'};
data = [ 35 15 85
         40 17 75
         37 17 85
         80 25 90
         67 20 80 ];
     
%Batas - batas kriteria
maksWaktuMembaca = 168;
maksBukuDibaca = 30;
maksPemahamanBuku = 100;

data(:,1) = data(:,1) / maksWaktuMembaca;
data(:,2) = data(:,2) / maksBukuDibaca;
data(:,3) = data(:,3) / maksPemahamanBuku;

relasiKriteria = [ 1 2 4
                   0 1 2
                   0 0 1];

TFN = {[-100/3 0     100/3]     [3/100  0     -3/100]
       [0      100/3 200/3]     [3/200  3/100 0     ]
       [100/3  200/3 300/3]     [3/300  3/200 3/100 ]
       [200/3  300/3 400/3]     [3/400  3/300 3/200 ]};

[RasioKonsistensi] = HitungKonsistensiAHP(relasiKriteria)        

if RasioKonsistensi < 0.10
    [bobotAntarKriteria, relasiKriteria] = FuzzyAHP(relasiKriteria, TFN);    

    ahp = data * bobotAntarKriteria';
    
    disp('Hasil Perhitungan dengan metode Fuzzy AHP')
    disp('Nama Pembaca, Skor Akhir, Kesimpulan')
end

for i = 1:size(ahp, 1)
    if ahp(i) < 0.2
        status = 'Kurang';
    elseif ahp(i) < 0.4
        status = 'Cukup';
    elseif ahp(i) < 0.6
        status = 'Baik';
    else
        status = 'Sangat Baik';
    end
        
    disp([char(namaPembaca(i)), blanks(13 - cellfun('length',namaPembaca(i))), ', ', ... 
        num2str(ahp(i)), blanks(10 - length(num2str(ahp(i)))), ', ', ...
        char(status)])
end
