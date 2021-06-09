function [bobotAntarKriteria, relasiKriteria] = FuzzyAHP(relasiKriteria, TFN)
fuzzyRelasi={};
[jumlahData, jumlahKriteria] = size(relasiKriteria);
 
    for i=1:jumlahData
        for j=i+1:jumlahData
           relasiKriteria(j,i) = 1 / relasiKriteria(i,j); 
        end
    end

    for i=1:jumlahData
        for j=1:jumlahKriteria
            kriteria = relasiKriteria(i,j);
            if kriteria >= 1
               fuzzyRelasi{i,j} = TFN{kriteria ,1 };
            else
               fuzzyRelasi{i,j} = TFN{round(kriteria^-1) ,2 };
            end
        end
    end

    for i=1:jumlahData
        barisRelasi = [fuzzyRelasi{i,:}];
        jumlahRelasiPerBaris{1,i} = sum(reshape(barisRelasi,3,[])');
    end

    RelasiPerData = [jumlahRelasiPerBaris{1,:}];
    jumlahRelasiPerKolom = sum(reshape(RelasiPerData,3,[])');
    for i=1:jumlahData
        RelasiPerData = [jumlahRelasiPerBaris{1,i}];
        for j=1:3
            nilaiRelasiPerKolom = jumlahRelasiPerKolom(1,j);
            jumlahPerKolom(1,j) = (RelasiPerData(1,j))*(1/nilaiRelasiPerKolom);
        end
        jumlahRelasiPerBaris{1,i} = jumlahPerKolom;
    end

    derajatKemungkinan = zeros(jumlahData*(jumlahData-1),3);
    idxBaris = 1;

    for i=1:jumlahData
        for j=1:jumlahData
            if i~=j
                derajatKemungkinan(idxBaris,[1 2]) = [i j];
                M1 = jumlahRelasiPerBaris{1,i};
                M2 = jumlahRelasiPerBaris{1,j};

                if M1(1,2) >= M2(1,2)
                    derajatKemungkinan(idxBaris,3) = 1;
                elseif M2(1,1) >= M1(1,3)
                    derajatKemungkinan(idxBaris,3) = 0;
                else
                    derajatKemungkinan(idxBaris,3) = (M2(1,1)-M1(1,3))/((M1(1,2)-M1(1,3))-(M2(1,2)-M2(1,1)));
                end

                idxBaris = idxBaris + 1;
            end
        end
    end

    bobotAntarKriteria = zeros(1,jumlahData);
    for i=1:jumlahData
        bobotAntarKriteria(1,i) = min(derajatKemungkinan([find(derajatKemungkinan(:,1) == i)], [3]));
    end

    bobotAntarKriteria = bobotAntarKriteria/sum(bobotAntarKriteria);
    
end


