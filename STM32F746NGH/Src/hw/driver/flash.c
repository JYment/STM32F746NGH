/*
 * flash.c
 *
 *  Created on: 2023. 10. 3.
 *      Author: loveh
 */


#include "flash.h"


#define FLASH_SECTOR_MAX            8



typedef struct
{
  uint32_t addr;
  uint32_t length;
} flash_tbl_t;


flash_tbl_t flash_tbl[FLASH_SECTOR_MAX] =
    {
        {0x8000000, 32 * 1024},
        {0x8008000, 32 * 1024},
        {0x8010000, 32 * 1024},
        {0x8018000, 32 * 1024},
        {0x8020000, 128 * 1024},
        {0x8040000, 256 * 1024},
        {0x8080000, 256 * 1024},
        {0x80C0000, 256 * 1024},
    };


static bool     flashInSector(uint8_t sector_num, uint32_t addr, uint32_t length);
static uint32_t flashGetSector(uint32_t addr);

bool flashInit(void)
{
  return true;
}

bool flashErase(uint32_t addr, uint32_t length)
{
  bool ret = false;
  HAL_StatusTypeDef status;
  FLASH_EraseInitTypeDef init;
  uint32_t page_error;

  int16_t start_sector_num = -1;
  uint32_t end_sector_num = 0;
  uint32_t sector_count = 0;


  for(int i=0; i<FLASH_SECTOR_MAX; i++)
  {
    if(flashInSector(i, addr, length) == true)
    {
      if(start_sector_num < 0)
      {
        start_sector_num = i;
      }
      sector_count++;
    }
  }

  start_sector_num = flashGetSector(flash_tbl[start_sector_num].addr);
  end_sector_num = flashGetSector(flash_tbl[sector_count].addr + length - 1);

  if(sector_count > 0)
  {
    HAL_FLASH_Unlock();

    init.TypeErase     = FLASH_TYPEERASE_SECTORS;
    init.Sector        = start_sector_num;
    init.NbSectors     = end_sector_num;
    init.VoltageRange  = FLASH_VOLTAGE_RANGE_3;

    status = HAL_FLASHEx_Erase(&init, &page_error);

    if(status == HAL_OK)
    {
      ret = true;
    }

    HAL_FLASH_Lock();
  }

  return ret;
}

bool flashWrite(uint32_t addr, uint8_t *p_data, uint32_t length)
{
  bool ret = true;
  HAL_StatusTypeDef status;

  HAL_FLASH_Unlock();

  for(int i=0; i<length; i++)
  {
    status = HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE, addr + i, (uint64_t)p_data[i]);

    if(status != HAL_OK)
    {
      ret = false;
      break;
    }
  }

  HAL_FLASH_Lock();

  return ret;
}

bool flashRead(uint32_t addr, uint8_t *p_data, uint32_t length)
{
  bool ret = true;
  uint8_t *p_byte = (uint8_t *)addr;

  for(int i=0; i<length; i++)
  {
    p_data[i] = p_byte[i];
  }

  return ret;
}

bool flashInSector(uint8_t sector_num, uint32_t addr, uint32_t length)
{
  bool ret = false;
  uint32_t sector_start;
  uint32_t sector_end;
  uint32_t flash_start;
  uint32_t flash_end;

  sector_start = flash_tbl[sector_num].addr;
  sector_end   = flash_tbl[sector_num].addr + flash_tbl[sector_num].length - 1;
  flash_start  = addr;
  flash_end    = addr + length - 1;


  if(sector_start >= flash_start && sector_start <= flash_end)
  {
    ret = true;
  }

  if(sector_end >= flash_start && sector_end <= flash_end)
  {
    ret = true;
  }

  if(flash_start >= sector_start && flash_start <= sector_end)
  {
    ret = true;
  }

  if(flash_end >= sector_start && flash_end <= sector_end)
  {
    ret = true;
  }

  return ret;
}


uint32_t flashGetSector(uint32_t addr)
{
  uint32_t sector = 0;

  if((addr < flash_tbl[1].addr) && (addr >= flash_tbl[0].addr))
  {
    sector = FLASH_SECTOR_0;
  }
  else if((addr < flash_tbl[2].addr) && (addr >= flash_tbl[1].addr))
  {
    sector = FLASH_SECTOR_1;
  }
  else if((addr < flash_tbl[3].addr) && (addr >= flash_tbl[2].addr))
  {
    sector = FLASH_SECTOR_2;
  }
  else if((addr < flash_tbl[4].addr) && (addr >= flash_tbl[3].addr))
  {
    sector = FLASH_SECTOR_3;
  }
  else if((addr < flash_tbl[5].addr) && (addr >= flash_tbl[4].addr))
  {
    sector = FLASH_SECTOR_4;
  }
  else if((addr < flash_tbl[6].addr) && (addr >= flash_tbl[5].addr))
  {
    sector = FLASH_SECTOR_5;
  }
  else if((addr < flash_tbl[7].addr) && (addr >= flash_tbl[6].addr))
  {
    sector = FLASH_SECTOR_6;
  }
  else /* (Address < FLASH_END_ADDR) && (Address >= ADDR_FLASH_SECTOR_7) */
  {
    sector = FLASH_SECTOR_7;
  }
  return sector;
}
