/*
 * flash.c
 *
 *  Created on: 2023. 10. 3.
 *      Author: loveh
 */


#include "flash.h"


#define FLASH_SECTOR_MAX            8



#define ADDR_FLASH_SECTOR_0     ((uint32_t)0x08000000) /* Base address of Sector 0, 32 Kbytes */
#define ADDR_FLASH_SECTOR_1     ((uint32_t)0x08008000) /* Base address of Sector 1, 32 Kbytes */
#define ADDR_FLASH_SECTOR_2     ((uint32_t)0x08010000) /* Base address of Sector 2, 32 Kbytes */
#define ADDR_FLASH_SECTOR_3     ((uint32_t)0x08018000) /* Base address of Sector 3, 32 Kbytes */
#define ADDR_FLASH_SECTOR_4     ((uint32_t)0x08020000) /* Base address of Sector 4, 128 Kbytes */
#define ADDR_FLASH_SECTOR_5     ((uint32_t)0x08040000) /* Base address of Sector 5, 256 Kbytes */
#define ADDR_FLASH_SECTOR_6     ((uint32_t)0x08080000) /* Base address of Sector 6, 256 Kbytes */
#define ADDR_FLASH_SECTOR_7     ((uint32_t)0x080C0000) /* Base address of Sector 7, 256 Kbytes */




typedef struct
{
  uint32_t addr;
  uint32_t length;
} flash_tbl_t;


static uint32_t flashGetSector(uint32_t Address);


bool flashInit(void)
{
  return true;
}

bool flashErase(uint32_t addr, uint32_t length)
{
  bool ret = false;
  FLASH_EraseInitTypeDef init;
  uint32_t firstSector = 0, nbOfSectors = 0;
  uint32_t sectorError = 0;

  HAL_FLASH_Unlock();

  firstSector = flashGetSector(addr);
  nbOfSectors = flashGetSector(addr + length - 1) - firstSector + 1;

  init.TypeErase     = FLASH_TYPEERASE_SECTORS;
  init.VoltageRange  = FLASH_VOLTAGE_RANGE_3;
  init.Sector        = firstSector;
  init.NbSectors     = nbOfSectors;

  if (HAL_FLASHEx_Erase(&init, &sectorError) == HAL_OK)
  {
    ret = true;
  }

  HAL_FLASH_Lock();

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


uint32_t flashGetSector(uint32_t Address)
{
  uint32_t sector = 0;

  if((Address < ADDR_FLASH_SECTOR_1) && (Address >= ADDR_FLASH_SECTOR_0))
  {
    sector = FLASH_SECTOR_0;
  }
  else if((Address < ADDR_FLASH_SECTOR_2) && (Address >= ADDR_FLASH_SECTOR_1))
  {
    sector = FLASH_SECTOR_1;
  }
  else if((Address < ADDR_FLASH_SECTOR_3) && (Address >= ADDR_FLASH_SECTOR_2))
  {
    sector = FLASH_SECTOR_2;
  }
  else if((Address < ADDR_FLASH_SECTOR_4) && (Address >= ADDR_FLASH_SECTOR_3))
  {
    sector = FLASH_SECTOR_3;
  }
  else if((Address < ADDR_FLASH_SECTOR_5) && (Address >= ADDR_FLASH_SECTOR_4))
  {
    sector = FLASH_SECTOR_4;
  }
  else if((Address < ADDR_FLASH_SECTOR_6) && (Address >= ADDR_FLASH_SECTOR_5))
  {
    sector = FLASH_SECTOR_5;
  }
  else if((Address < ADDR_FLASH_SECTOR_7) && (Address >= ADDR_FLASH_SECTOR_6))
  {
    sector = FLASH_SECTOR_6;
  }
  else /* (Address < FLASH_END_ADDR) && (Address >= ADDR_FLASH_SECTOR_7) */
  {
    sector = FLASH_SECTOR_7;
  }
  return sector;
}
