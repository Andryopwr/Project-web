create table dosen (
  nid varchar2(10),
  nama_dosen varchar2(20));
  
  select * from dosen;

insert into dosen (NID, NAMA_DOSEN)
values ('AD123', 'Paijo');


insert into dosen (NID, NAMA_DOSEN)
values ('AZ126', 'BONO');

create table mahasiswa (
  nama_mahasiswa varchar2(20),
  prodi varchar2(10),
  nim varchar2(10) primary key,
  ipk number(4,0));
  
insert into mahasiswa (nama_mahasiswa, prodi, nim, ipk)
values ('Anselmus Galih A', 'TI', '145314072', '3.5');


insert into mahasiswa (nama_mahasiswa, prodi, nim, ipk)
values ('Elias Roni', 'TI', '145314002', '3.5');


insert into mahasiswa (nama_mahasiswa, prodi, nim, ipk)
values ('Andryo Eka Pawara', 'TI', '145314087', '3.5');

select * from mahasiswa;
  
  create table kelas (
    nomor_kelas varchar2(5) primary key,
    kapasitas number(5,0));
   
insert into kelas (nomor_kelas, kapasitas)
values ('K 204', '100');


insert into kelas (nomor_kelas, kapasitas)
values ('K 205', '100');


insert into kelas (nomor_kelas, kapasitas)
values ('K 206', '90');


insert into kelas (nomor_kelas, kapasitas)
values ('K 207', '100');

create table mata_kuliah (
  no_id varchar2(10) primary key,
  sks number (10,0),
  nama_mata_kuliah varchar2(20));
  
  insert into mata_kuliah (no_id, sks, nama_mata_kuliah) 
  values ('F323', '3', 'Pemrograman WEB'); 
  
  insert into mata_kuliah (no_id, sks, nama_mata_kuliah) 
  values ('A423', '3', 'Kalkulus'); 
  
  
  insert into mata_kuliah (no_id, sks, nama_mata_kuliah) 
  values ('F353', '2', 'AI'); 
  
  
  insert into mata_kuliah (no_id, sks, nama_mata_kuliah) 
  values ('B673', '2', 'Pancasila'); 
  
  select * from kelas;
  select * from mata_kuliah;
  
  create table KRS_1 (
    Nama_Mahasiswa varchar2(20),
    nim varchar2(20),
    Mata_Kuliah varchar2(20),
    ID_mata_kuliah varchar2(10) ,
    SKS number(10,0),
    NID varchar2(20));
    
    insert into KRS_1 (nama_mahasiswa, nim, mata_kuliah, id_mata_kuliah, sks, NID)
    values ('Anselmus Galih A', '145314072', 'Pemrograman WEB', 'F323', '3', 'AD123');
    
    insert into KRS_1 (nama_mahasiswa, nim, mata_kuliah, id_mata_kuliah, sks, NID)
    values ('Anselmus Galih A', '145314072', 'Pancasila', 'B673', '2', 'AZ126');
    
    insert into KRS_1 (nama_mahasiswa, nim, mata_kuliah, id_mata_kuliah, sks, NID)
    values ('Elias Roni', '145314002', 'Pancasila', 'B673', '2', 'AZ126');
    
    insert into KRS_1 (nama_mahasiswa, nim, mata_kuliah, id_mata_kuliah, sks, NID)
    values ('Elias Roni', '145314002', 'AI', 'F353', '2', 'AZ126');
    
    insert into KRS_1 (nama_mahasiswa, nim, mata_kuliah, id_mata_kuliah, sks, NID)
    values ('Andryo Eka Pawara', '145314087', 'Kalkulus', 'A423', '3', 'AD123');
    
    select * from krs_1;
    
  create table KRS_2 (
    Nama_Mahasiswa varchar2(20),
    NIM number(10,0),
    Total_SKS number(10,0));
    
    insert into KRS_2 (Nama_Mahasiswa, NIM, total_sks) 
    values ('Anselmus Galih A', '145314072', '5');
    
    
    insert into KRS_2 (Nama_Mahasiswa, NIM, total_sks) 
    values ('Elias Roni', '145314002', '4');
    
    
    insert into KRS_2 (Nama_Mahasiswa, NIM, total_sks) 
    values ('Andryo Eka Pawara', '145314087', '2');
    
    select * from KRS_2;
    