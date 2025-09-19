#!/usr/bin/env python3
import sys
import os
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import seaborn as sns

print('Python executable:', sys.executable)
print('Matplotlib backend:', matplotlib.get_backend())

x = np.random.randn(100)

plt.figure(figsize=(6,4))
plt.hist(x, bins=20)
plt.title('Test histogram (diagnostic)')
plt.savefig('diagnostic_plot.png')
plt.close()

plt.figure(figsize=(6,4))
sns.kdeplot(x, fill=True)
plt.title('Test seaborn KDE (diagnostic)')
plt.savefig('diagnostic_seaborn.png')
plt.close()

print('Files created:', os.path.exists('diagnostic_plot.png'), os.path.exists('diagnostic_seaborn.png'))
