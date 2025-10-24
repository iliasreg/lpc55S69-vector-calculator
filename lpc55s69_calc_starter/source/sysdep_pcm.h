#ifndef _PCM_H_
#define _PCM_H_

#include <stdint.h>

#include "sysdep.h"
#include "calc.h"
#include "stack.h"

/* set/get sampling frequency */
#define	PCM_SMPLFREQ_8000HZ			8000U
#define	PCM_SMPLFREQ_11025HZ		11025U
#define	PCM_SMPLFREQ_12000HZ		12000U
#define	PCM_SMPLFREQ_16000HZ		16000U
#define	PCM_SMPLFREQ_22050HZ		22050U
#define	PCM_SMPLFREQ_24000HZ		24000U
#define	PCM_SMPLFREQ_32000HZ		32000U
#define	PCM_SMPLFREQ_44100HZ		44100U
#define	PCM_SMPLFREQ_48000HZ		48000U

unsigned int pcm_get_smpl_freq(void);
unsigned int pcm_set_smpl_freq(unsigned int fs);

/* Initialization */
int pcm_init(void);

/* pcm_vol
 *   set WM8904 CODEC left and right output volume levels --> [0,100]
 *   0   --> 0  =  mute
 *   1   --> 1  = -57dB
 *   100 --> 57 =   0dB
 *****/
int pcm_volume(real left, real right);


#define SAMPLE_NB					64		/* nb samples per channel */

/* data playback
 * - ch==1: data is a 1xn array containing samples that will be sent on the
 *          left and right channels
 * - ch==2: data is a 2xn array containing the left and right samples on each
 *          line
 * - |data[i]|<1
 */
int pcm_play(real *data, int ch, int n);

/* data recording: 2xn samples (left and right) */
int pcm_rec(real *data, int n);

typedef void (*fn_cb)(int16_t *in, int16_t *out, int n);

int pcm_loop(fn_cb fn);

void pcm_biquad(real *b, real *a, int r, int c, real *n);

#endif
