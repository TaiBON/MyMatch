/* 蛾有效名 */
select original_id, original_id, concat(genus, ' ', species, ' ', infraspecies), cne.name, nk.hash, nk.hash, s.family, s.order, s.class, s.phylum, s.kingdom from taxon t join _search_scientific s on t.id=s.id join _natural_keys nk on nk.id=t.id left join common_name cn on cn.taxon_id=t.id left join common_name_element cne on cne.id=cn.common_name_element_id where s.order='Lepidoptera' and cn.language_iso in ('cmn', '') and nk.name_code is not null INTO OUTFILE '/tmp/col_names_lep.csv'  FIELDS TERMINATED BY '\t'  LINES TERMINATED BY '\n';