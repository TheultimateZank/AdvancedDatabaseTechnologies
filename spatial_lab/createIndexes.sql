CREATE INDEX BUILDINGS_GEOM_IDX ON BUILDINGS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX ROADS_GEOM_IDX ON ROADS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX PONDS_GEOM_IDX ON PONDS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX SHOPS_GEOM_IDX ON SHOPS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX TREES_GEOM_IDX ON TREES(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX POOLS_GEOM_IDX ON POOLS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX FIELDS_GEOM_IDX ON FIELDS(GEOMETRY) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

