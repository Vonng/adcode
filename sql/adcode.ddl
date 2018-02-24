-------------------------------------------
-- adcode schema definition (PostgreSQL)
-- author: Vonng(fengruohang@outlook.com)
-------------------------------------------

-------------------------------------------
-- 行政区划表: adcode
-------------------------------------------
DROP TABLE IF EXISTS adcode;
CREATE TABLE adcode (
  code         BIGINT PRIMARY KEY,
  parent       BIGINT REFERENCES adcode (code),
  name         VARCHAR(64),
  level        VARCHAR(16),
  rank         INTEGER,
  adcode       INTEGER,
  post_code    VARCHAR(8),
  area_code    VARCHAR(4),
  ur_code      VARCHAR(4),
  municipality BOOLEAN,
  virtual      BOOLEAN,
  dummy        BOOLEAN,
  longitude    FLOAT,
  latitude     FLOAT,
  center       GEOMETRY,
  province     VARCHAR(64),
  city         VARCHAR(64),
  county       VARCHAR(64),
  town         VARCHAR(64),
  village      VARCHAR(64)
);

-- comment
COMMENT ON TABLE adcode IS '中国行政区划表';
COMMENT ON COLUMN adcode.code IS '国家统计局12位行政区划代码';
COMMENT ON COLUMN adcode.parent IS '12位父级行政区划代码';
COMMENT ON COLUMN adcode.city IS '6位县级行政区划代码';
COMMENT ON COLUMN adcode.level IS '行政单位级别:国/省/市/县/乡/村';
COMMENT ON COLUMN adcode.name IS '行政单位名称';
COMMENT ON COLUMN adcode.rank IS '行政单位级别{0:国,1:省,2:市,3:区/县,4:乡/镇，5:街道/村}';
COMMENT ON COLUMN adcode.adcode IS '6位县级行政区划代码';
COMMENT ON COLUMN adcode.post_code IS '邮政编码';
COMMENT ON COLUMN adcode.area_code IS '长途区号';
COMMENT ON COLUMN adcode.ur_code IS '3位城乡属性划分代码';
COMMENT ON COLUMN adcode.municipality IS '是否为直辖行政单位';
COMMENT ON COLUMN adcode.virtual IS '虚拟行政单位标记，如市辖区、省直辖县';
COMMENT ON COLUMN adcode.dummy IS '虚拟行政单位标记，例如虚拟村、虚拟社区';
COMMENT ON COLUMN adcode.longitude IS '地理中心经度';
COMMENT ON COLUMN adcode.latitude IS '地理中心纬度';
COMMENT ON COLUMN adcode.center IS '地理中心, ST_Point';
COMMENT ON COLUMN adcode.province IS '省';
COMMENT ON COLUMN adcode.city IS '市';
COMMENT ON COLUMN adcode.county IS '区/县';
COMMENT ON COLUMN adcode.town IS '乡/镇';
COMMENT ON COLUMN adcode.village IS '街道/村';

-- index
-- CREATE INDEX ON adcode USING BTREE ((code :: TEXT));
-- CREATE INDEX ON adcode USING BTREE (adcode);
-- CREATE INDEX ON adcode USING BTREE (parent);
-- CREATE INDEX ON adcode USING BTREE (name);
-- CREATE INDEX ON adcode USING BTREE (rank);
-- CREATE INDEX ON adcode USING GIST  (center);
-------------------------------------------
