% l�s in indatafil
load(input('Ange datafil: ','s'));

tic % ta tid

x = zeros(size(c));  % x-matris med fl�den mellan fabrik och kund.
y = zeros(size(f));  % y-vektor med ettor f�r fabriker som ska byggas

disp(sprintf('Antal fabriker: %d, antal kunder: %d',m,n));
disp(sprintf('Total kapacitet: %d, total efterfr�gan: %d',sum(s),sum(d)));

ss=s;      % �terst�ende fabrikskapacitet, minska d� transporter sker
dd=d;      % �terst�ende efterfr�gan, minska d� transporter sker
cc=c;      % temp c, kan �ndras
ff=f;      % temp f, kan �ndras
           % ss,dd,cc,ff kan �ndras, s,d,f,c b�r ej �ndras

% s�tt v�rdet p� e
e=1;

while sum(dd)>0    %loopa till alla kunders efterfr�gan �r uppfylld

    % v�lj fabrik, v�lj kund, skicka, p� billigaste s�tt
    % uppdatera x, y, ss och dd, samt ev ff och cc

end

disp(sprintf('Antal fabriker byggda: %d',sum(y)));
cost=sum(sum(c.*x)) + e*sum(f.*y);
fprintf('Totalkostnad: %.2f\n', cost);
str0=sprintf('%d ',y);
disp(sprintf('Byggda fabriker: %s',str0));

toc % ta tid