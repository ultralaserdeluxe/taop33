% läs in indatafil
load(input('Ange datafil: ','s'));

tic % ta tid

x = zeros(size(c));  % x-matris med flöden mellan fabrik och kund.
y = zeros(size(f));  % y-vektor med ettor för fabriker som ska byggas

disp(sprintf('Antal fabriker: %d, antal kunder: %d',m,n));
disp(sprintf('Total kapacitet: %d, total efterfrågan: %d',sum(s),sum(d)));

% Sätt e
e = 100;

% initiera totalkostnad
totalkostnad = 0;

ss=s;      % återstående fabrikskapacitet, minska då transporter sker
dd=d;      % återstående efterfrågan, minska då transporter sker
ff=f * e;  % Fabrikskostnader
           % ss,dd,cc,ff kan ändras, s,d,f,c bör ej ändras

cc = c + repmat(transpose(ff), 1, n); % Bågkostnader

while sum(dd)>0    %loopa till alla kunders efterfrågan är uppfylld

    % Hitta minsta element
    [row, col] = find(cc == min(cc(:)));
    
    row = row(1);
    col = col(1);
    
    % Hitta begränsning
    maxflow = min(ss(row), dd(col));
    
    % Giltigt flöde?
    if maxflow > 0
        % Ta bort fabrikskostnad från bågkostnad
        cc(row,:) = cc(row,:) - ff(row);
        
        % Lägg flödeskostnad i totalkostnad
        totalkostnad = totalkostnad + maxflow * c(row,col);
        x(row,col) = maxflow;
        
        % Dra bort flöde från fabrikskapacitet och kundefterfrågan
        ss(row) = ss(row) - maxflow;
        dd(col) = dd(col) - maxflow;
        
        % Lägg till fabrikskostnad på totalkostnad
        totalkostnad = totalkostnad + ff(row);
        
        % Sätt frabrikskostnad till 0 och sätt fabrik i y
        ff(row) = 0;
        y(row) = 1;
        
        % Sätt bågkostnad till inf, för att inte loopa
        cc(row,col) = inf;
    else
        % Om fabrikskapacitet eller kundefterfrågan är 0, sätt rad/kolumn
        % till inf, för att spara iterationer.
        
        if ss(row) == 0
            cc(row,:) = inf;
        end
        
        if dd(col) == 0
            cc(:,col) = inf;
        end
        
    end

end

disp(sprintf('Antal fabriker byggda: %d',sum(y)));
cost=sum(sum(c.*x)) + e*sum(f.*y);
fprintf('Totalkostnad: %.2f\n', cost);
str0=sprintf('%d ',y);
disp(sprintf('Byggda fabriker: %s',str0));

toc % ta tid