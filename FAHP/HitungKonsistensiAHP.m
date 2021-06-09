function [RasioKonsistensi] = HitungKonsistensiAHP(relasiKriteria)
    indeksAcak = [0 0.12 0.4 0.53 0.66 0.82 1.03 1.23 1.3 1.46];
    
    [op, jumlahKriteria] = size(relasiKriteria);
    
    [opp, lambda] = eig(relasiKriteria);
    
    maksLambda = max(max(lambda));
 
    IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria-1);
 
    RasioKonsistensi = IndeksKonsistensi/indeksAcak(1,jumlahKriteria);
 
    if RasioKonsistensi > 0.10
    str = 'Rasio Konsistensi adalah %% %1.2f. Matriks yang dievaluasi tidak konsisten!';
    str = sprintf(str,RasioKonsistensi);
    disp(str);
    end

end