- English:     

rezultati } The results - images and graphics     
obrada_slike } Tumor detection using image processing          
masinsko_ucenje } Tumor detection using CNN     

      Abstract
   
            Detecting a brain tumor is a very important and difficult task, and the main problem is detection time. This paper presents an approach to automating this process.
      Magnetic resonance and computed tomography of the brain (MR and CT scans) were used for processing, and this work aims to detect the tumor (to detect its size and 
      position). The problem of detection is approached in two ways: by image processing and using supervised neural network (CNN). 
            All images go through different types of processing. The algorithms results are the position and size of the tumor. The results are compared to labels, and code 
      is described by its accuracy, precision, and response.
            Key words - algorithm, MRI and CT scan, filters, accuracy, precision, response.
  
      Results
  
            Tumor detection using image processing give the following results: accuracy t = 98.3%, accuracy p = 73.3%, and o = 58.6%.
            Tumor detection using image processing give the following results: accuracy t = 91.8%, accuracy p = 90.1% and o = 92.6%.

            Detection of convolutional neural networks gives much better results.
            The accuracy has been reduced by 6.5%. The reason for this reduction is the fact that during the first method of detection, there were cases where the whole brain
      was detected as a tumor. In that case, 100% of tumor fields were registered (although some were not), which only increased the percentage of accuracy. Accuracy increased
      by 16.8% while response increased by 34%. These ratios of results tell us that detection without neural networks gives solid results, but that they are not accurate
      enough, and that there is a large number of recognition of healthy fields as a tumor. On the other hand, this does not happen too much when using CNN.

------------------------------------------------------------------------------------------------------------------------- 

- Srpski:     

rezultati } slike i grafici     
obrada_slike } detekcija tumora na MR i CT snimcima mozga obradom slike           
masinsko_ucenje } detekcija tumora na MR i CT snimcima mozga CNNom     

      Apstrakt

            Otkrivanje tumora na mozgu vrlo je važan i težak zadatak, a glavni problem pojavljuje se kada govorimo o vremenu njegove detekcije. U ovom radu prikazan je pristup
      automatizacije ovog procesa, odnosno - osnovne tehnike za identifikaciju tumora na mozgu koje su zasnovane na karakteristikama istog. Korišćena je baza podataka
      sastavljena od slika različitih MR i CT snimaka mozga, iz različitih uglova i položaja. Problemu detekcije pristupano je na dva načina: detekcijom isključivo preko
      filtriranja fotografije i uz pomoć nadgledanog treniranja neuronske mreže.
            Sve slike prolaze kroz različite tipove obrade, a algoritami rezultiraju pozicijom i veličinom tumora, gde se u poređenju sa labelama utvrđuje njihova tačnost,
      preciznost i odziv.
            Ključne reči - algoritam, slike magnetne rezonance i kompjuterske tomografije, filter, tačnost, preciznost, odziv. 
  
      Rezultati
  
            Detektovanjem tumora pomoću same obrade slike, dolazimo do sledećih rezultata: tačnosti t=98.3%, preciznosti p=73.3% i o=58.6%.
            Detektovanjem tumora pomoću MLa, dolazimo do sledećih rezultata: tačnosti t=91.8%, preciznosti p=90.1% i o=92.6%.

            Vidno bolje rezultate daje detekcija koncolucionim neuronskim mrežama.
            Što se tačnosti tiče, ona je smanjena za 6.5%. Razlog za ovo redukovanje jeste činjenica da je pri normalnoj detekciji (prvi način detekcije), bilo slučajeva gde je
      ceo mozak detektovan kao tumor. U tom slučaju je zapravo registrovano 100% tumorskih polja (iako je bilo i onih koja to zapravo nisu), što je samo povećavalo procenat
      tačnosti. Preciznost je povećana za 16.8% dok je odziv povećan za 34%. Ovi odnosi rezultata nam govore da detekcija bez neuronskih mreža daje solidne rezultate, ali da
      oni nisu dovoljno precizni, kao i da dolazi do velikog broja prepoznavanja zdravih polja kao tumorskih. S druge strane, ovo se ne dešava u tolikoj meri pri detekcijom koja
      koristi CNN. 

![alt text](https://github.com/nedeljkovicmajaa/tumor_detection/blob/main/rezultati/primer_obrada_slike.png)
