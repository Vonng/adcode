-------------------------------------------
-- adcode schema definition (PostgreSQL)
-- author: Vonng(fengruohang@outlook.com)
-------------------------------------------

-------------------------------------------
-- 行政区划表: adcode
-------------------------------------------
DROP TABLE IF EXISTS fences;
CREATE TABLE fences (
  code   BIGINT PRIMARY KEY,
  adcode INTEGER,
  fence  GEOMETRY
);

-- comment
COMMENT ON TABLE fences IS '行政区划地理围栏';
COMMENT ON COLUMN fences.code IS '国家统计局12位行政区划代码';
COMMENT ON COLUMN fences.adcode IS '6位县级行政区划代码';
COMMENT ON COLUMN fences.fence IS '地理围栏,GCJ-02,MultiPolygon';

-- index
-- CREATE INDEX ON fences USING BTREE ((code :: TEXT));
-- CREATE INDEX ON fences USING BTREE (adcode);
-- CREATE INDEX ON fences USING GIST (fence);
-------------------------------------------


