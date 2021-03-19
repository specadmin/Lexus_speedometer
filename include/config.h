#ifndef CONFIG_H
#define CONFIG_H
//----------------------------------------------------------------------------
#define REVISION            2

#if(REVISION == 1)
    #define SIN_TCCR        TCCR0A
    #define SIN_P_OCR       OCR0A
    #define SIN_P_COM       COM0A1
    #define SIN_N_OCR       OCR0B
    #define SIN_N_COM       COM0B1
    #define COS_TCCR        TCCR2A
    #define COS_P_OCR       OCR2A
    #define COS_P_COM       COM2A1
    #define COS_N_OCR       OCR2B
    #define COS_N_COM       COM2B1
#elif(REVISION == 2)
    #define SIN_TCCR        TCCR2A
    #define SIN_P_OCR       OCR2A
    #define SIN_P_COM       COM2A1
    #define SIN_N_OCR       OCR2B
    #define SIN_N_COM       COM2B1

    #define COS_TCCR        TCCR0A
    #define COS_P_OCR       OCR0B
    #define COS_P_COM       COM0B1
    #define COS_N_OCR       OCR0A
    #define COS_N_COM       COM0A1
#endif


#define DEBUG_PORT          PORTB
#define DEBUG_DDR           DDRB
#define DEBUG_BIT           4
#define DEBUG_BAUD_RATE     230400
//----------------------------------------------------------------------------
#endif

