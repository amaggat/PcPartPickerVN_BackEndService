package com.PcPartPicker.BackEnd.Drives.HardDriveDisk;

import com.PcPartPicker.BackEnd.Drives.HardDriveDisk.HardDiskDrive;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;

public interface HddRepository extends Repository<HardDiskDrive, Integer> {

    List<HardDiskDrive> findHDD();

    @Query("SELECT DISTINCT hdd FROM HardDiskDrive hdd WHERE hdd.id= :id")
    @Transactional(readOnly = true)
    HardDiskDrive findByID(@Param("id") int id);

    @Query("SELECT DISTINCT hdd FROM HardDiskDrive hdd WHERE hdd.manufacturer= :manufacurer")
    @Transactional(readOnly = true)
    Collection<HardDiskDrive> findByManufacturer(@Param("manufacturer") String manufacturer);

    @Query("SELECT DISTINCT hdd FROM HardDiskDrive hdd WHERE hdd.size= :size")
    @Transactional(readOnly = true)
    Collection<HardDiskDrive> findBySize(@Param("size") int size);

    @Query("SELECT DISTINCT hdd FROM HardDiskDrive hdd WHERE hdd.fullname LIKE %:fullName%")
    @Transactional(readOnly = true)
    Collection<HardDiskDrive> findByName(@Param("fullName") String fullName);

    void save(HardDiskDrive hdd);
}
