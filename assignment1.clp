;menu

(defrule klasifikasi
    =>
    (printout t crlf "gejala yang anda alami ada di mana? ketik angka yang sesuai" crlf 
    "1. telinga" crlf
    "2. hidung" crlf
    "3. tenggorokan" crlf crlf
    )
    (bind ?x (read))
        (if (= ?x 1)
           then (printout t crlf "sebutkan gejala anda" crlf)
        )
        (if (= ?x 2)
           then (printout t crlf "sebutkan gejala anda" crlf)
        )
        (if (= ?x 3)
           then (printout t crlf "sebutkan gejala anda" crlf)
        )
)

;list knowledge

(defrule sinus
    (mata bengkak)
    (nyeri wajah)
    (ingus kehijauan)
    =>
    (assert(diagnosis sinus))
    (printout t "diagnosis: sinus" crlf)
)

(defrule alergi_pada_hidung
    (bersin)
    (hidung tersumbat)
    (hitung gatal)
    (hidung berair)
    =>
    (assert(diagnosis alergi))
    (printout t "diagnosis: alergi pada hidung" crlf)
)

(defrule radang_tenggorokan
    (nyeri tenggorokan)
    (amandel bengkak)
    (sulit menelan)
    (bengkak_pada leher)
    (demam)
    (amandel berwarna_putih)
    =>
    (assert(diagnosis radang_tenggorokan))
    (printout t "diagnosis: radang tenggorokan" crlf)
)

(defrule laringitis
    (suara serak)
    (sakit_pada bagian_depan_leher)
    =>
    (assert(diagnosis laringitis))
    (printout t "diagnosis: laringitis" crlf)
)

(defrule kanker_nasofaring
    (sakit tenggorokan)
    (benjol di_leher)
    (sulit menelan)
    (sering mimisan)
    =>
    (assert(diagnosis kanker_nasofaring))
    (printout t "diagnosis: kanker nasofaring" crlf)
)

(defrule otitis_eksterna
    (sakit telinga)
    (telinga gatal)
    (keluar_cairan dari_telinga)
    (telinga terasa_penuh)
    =>
    (assert(diagnosis otitis_eksterna))
    (printout t "diagnosis: otitis eksterna" crlf)
)

(defrule otitis_media
    (sakit telinga)
    (sulit tidur)
    (demam)
    (keluar_cairan dari_telinga)
    (turunnya kemampuan_mendengar)
    =>
    (assert(diagnosis otitis_media))
    (printout t "diagnosis: otitis media" crlf)
)

(defrule tinnitus
    (telinga berdengung)
    =>
    (assert(diagnosis tinnitus))
    (printout t "diagnosis: tinnitus" crlf)
)