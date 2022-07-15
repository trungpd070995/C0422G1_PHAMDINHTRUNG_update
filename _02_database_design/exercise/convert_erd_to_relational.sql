DROP DATABASE IF EXISTS quan_ly_vat_tu;

CREATE DATABASE quan_ly_vat_tu;

USE quan_ly_vat_tu;

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATE
);
INSERT INTO phieu_xuat VALUES(1, '2022-07-14');

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(50)
);
INSERT INTO vat_tu VALUES(100, 'Xi mang');

CREATE TABLE chi_tiet_phieu_xuat (
    so_phieu_xuat INT,
    ma_vat_tu INT,
    don_gia_xuat INT,
    so_luong_xuat INT,
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
INSERT INTO chi_tiet_phieu_xuat VALUES(1, 100, 100000, 100);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE
);
INSERT INTO phieu_nhap VALUES(1, '2022-07-12');

CREATE TABLE chi_tiet_phieu_nhap (
    ma_vat_tu INT,
    don_gia_nhap INT,
    so_luong_nhap INT,
    so_phieu_nhap INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);
INSERT INTO chi_tiet_phieu_nhap VALUES(100, 70000, 200, 1);

CREATE TABLE don_dat_hang (
    so_don_hang INT PRIMARY KEY,
    ngay_dat_hang DATE
);
INSERT INTO don_dat_hang VALUES(50, '2022-07-14');

CREATE TABLE chi_tiet_don_dat_hang (
    ma_vat_tu INT,
    so_don_hang INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang)
);
INSERT INTO chi_tiet_don_dat_hang VALUES(100, 50);

CREATE TABLE don_hang_nha_cung_cap (
    ma_ncc INT PRIMARY KEY,
    ten_ncc VARCHAR(50),
    dia_chi VARCHAR(100)
);
INSERT INTO don_hang_nha_cung_cap (ma_ncc, ten_ncc, dia_chi) VALUES (1001, 'Ang Son', 'Van Ninh, Quang Binh');

CREATE TABLE cung_cap (
    so_don_hang INT,
    ma_ncc INT,
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang),
    FOREIGN KEY (ma_ncc)
        REFERENCES don_hang_nha_cung_cap (ma_ncc)
);
INSERT INTO cung_cap VALUES(50, 1001);

CREATE TABLE so_dien_thoai (
    ma_ncc INT,
    sdt VARCHAR(20),
    FOREIGN KEY (ma_ncc)
        REFERENCES don_hang_nha_cung_cap (ma_ncc),
    PRIMARY KEY (ma_ncc , sdt)
);
INSERT INTO so_dien_thoai VALUES (1001, '0373111456')