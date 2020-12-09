.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final hwRandomDevice:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    const-string v2, "/dev/hw_random"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    if-eqz p3, :cond_5e

    .line 107
    if-eqz p4, :cond_56

    .line 108
    if-eqz p2, :cond_4e

    .line 110
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    .line 118
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    const-string p3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string p3, "android.intent.action.REBOOT"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object p3, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p4, 0x0

    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    return-void

    .line 108
    :cond_4e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "entropyFile"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_56
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "hwRandomDevice"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_5e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "randomDevice"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/EntropyMixer;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyMixer;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/EntropyMixer;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .registers 6

    .line 168
    nop

    .line 170
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_94
    .catchall {:try_start_2 .. :try_end_e} :catchall_8f

    .line 171
    :try_start_e
    const-string v0, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string v0, "All Your Randomness Are Belong To Us"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    sget-wide v2, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 174
    sget-wide v2, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 175
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "ro.bootmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 185
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8c} :catch_8d
    .catchall {:try_start_e .. :try_end_8c} :catchall_a5

    .line 189
    goto :goto_a1

    .line 186
    :catch_8d
    move-exception v0

    goto :goto_98

    .line 189
    :catchall_8f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_a6

    .line 186
    :catch_94
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 187
    :goto_98
    :try_start_98
    const-string v2, "EntropyMixer"

    const-string v3, "Unable to add device specific data to the entropy pool"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_a5

    .line 189
    if-eqz v1, :cond_a4

    .line 190
    :goto_a1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 193
    :cond_a4
    return-void

    .line 189
    :catchall_a5
    move-exception v0

    :goto_a6
    if-eqz v1, :cond_ab

    .line 190
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_ab
    throw v0
.end method

.method private addHwRandomEntropy()V
    .registers 5

    .line 199
    const-string v0, "EntropyMixer"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 201
    return-void

    .line 205
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V

    .line 206
    const-string v1, "Added HW RNG output to entropy pool"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_22

    .line 209
    goto :goto_28

    .line 207
    :catch_22
    move-exception v1

    .line 208
    const-string v2, "Failed to add HW RNG output to entropy pool"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_28
    return-void
.end method

.method private static getSystemDir()Ljava/lang/String;
    .registers 3

    .line 213
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadInitialEntropy()V
    .registers 5

    .line 136
    const-string v0, "EntropyMixer"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_1c

    .line 139
    :catch_f
    move-exception v1

    .line 140
    const-string v2, "Failure loading existing entropy file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 137
    :catch_16
    move-exception v1

    .line 138
    const-string v1, "No existing entropy file -- first boot?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1c
    nop

    .line 142
    :goto_1d
    return-void
.end method

.method private scheduleEntropyWriter()V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    return-void
.end method

.method private writeEntropy()V
    .registers 5

    .line 146
    const-string v0, "EntropyMixer"

    :try_start_2
    const-string v1, "Writing entropy..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_14

    .line 150
    goto :goto_1a

    .line 148
    :catch_14
    move-exception v1

    .line 149
    const-string v2, "Unable to write entropy"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :goto_1a
    return-void
.end method
