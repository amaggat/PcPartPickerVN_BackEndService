package com.PcPartPicker.BackEnd.Drives.SolidStateDrive;

import com.PcPartPicker.BackEnd.Drives.SolidStateDrive.SolidStateDrive;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;

public interface SsdRepository {
    List<SolidStateDrive> findSSD();

    @Query("SELECT DISTINCT ssd FROM SolidStateDrive ssd WHERE ssd.id = :id")
    @Transactional(readOnly = true)
    SolidStateDrive findByID(@Param("id") int id);

    @Query("SELECT DISTINCT ssd FROM SolidStateDrive ssd WHERE ssd.manufacturer = :manufacturer")
    @Transactional(readOnly = true)
    Collection<SolidStateDrive> findByManufacturer(@Param("manufacturer") String manufacturer);

    @Query("SELECT DISTINCT ssd FROM SolidStateDrive ssd WHERE ssd.fullname LIKE %:fullName%")
    @Transactional(readOnly = true)
    Collection<SolidStateDrive> findByName(@Param("fullName") String name);

    @Query("SELECT DISTINCT ssd FROM SolidStateDrive ssd WHERE ssd.size = :size")
    @Transactional(readOnly = true)
    Collection<SolidStateDrive> findBySize(@Param("size") int size);

    @Query("SELECT DISTINCT ssd FROM SolidStateDrive ssd WHERE ssd.chipset = :chipset")
    @Transactional(readOnly = true)
    Collection<SolidStateDrive> findByChipset(@Param("chipset") String chipset);

    void save(SolidStateDrive ssd);
}
