
#define VFD_BUFFER_SIZE 255

// Command specific defines
#define STATUS_BUSY    0x80

#define CONFIG_ALL_PEC_ENABLE    0x80

// User registers
volatile uint8_t  I2C_PAGE[1];
volatile uint8_t  I2C_STATUS_CML[1];
volatile uint8_t  I2C_STATUS[1];
volatile uint8_t  I2C_CONFIG_ALL[1];
volatile uint16_t I2C_REV_ID[1];
volatile uint8_t  I2C_VFD_DATA[VFD_BUFFER_SIZE+1];  // 1 extra byte to store length

i2cCommand i2c_registerMap[] = {
//	cmdCode, attributes,R, W, ramAddr
	{0x00, 0,           1, 1, (uint8_t *)I2C_PAGE},  // Not paged, but define anyway to prevent NACK
	{0x03, 0,           0, 0, 0}, // CLEAR_FAULTS
	{0x7E, 0,           1, 0, (uint8_t *)I2C_STATUS_CML},
	{0x80, 0,           1, 0, (uint8_t *)I2C_STATUS},
	{0xD1, 0,           1, 1, (uint8_t *)I2C_CONFIG_ALL},
	{0xDF, 0,           0, 0, 0}, // WRITE_VFD
	{0xE7, 0,           2, 0, (uint8_t *)I2C_REV_ID},
	{0xF0, I2C_BLOCK|I2C_LEN, VFD_BUFFER_SIZE, VFD_BUFFER_SIZE, (uint8_t *)I2C_VFD_DATA},
};

uint8_t i2c_registerIndex[256];

