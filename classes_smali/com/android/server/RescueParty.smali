.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$AppThreshold;,
        Lcom/android/server/RescueParty$BootThreshold;,
        Lcom/android/server/RescueParty$Threshold;
    }
.end annotation


# static fields
.field static final BOOT_TRIGGER_WINDOW_MILLIS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_FACTORY_RESET:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_NONE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PERSISTENT_APP_CRASH_TRIGGER_WINDOW_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TRIGGER_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/RescueParty$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBoot:Lcom/android/server/RescueParty$Threshold;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Lcom/android/server/RescueParty$BootThreshold;

    invoke-direct {v0}, Lcom/android/server/RescueParty$BootThreshold;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;

    .line 209
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "level":I
    if-nez v0, :cond_b

    return-void

    .line 212
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RescueParty"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_25
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;I)V

    .line 215
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 216
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_45

    .line 223
    goto :goto_6e

    .line 218
    :catchall_45
    move-exception v1

    .line 219
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "msg":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 221
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed rescue level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 224
    .end local v1  # "t":Ljava/lang/Throwable;
    .end local v2  # "msg":Ljava/lang/String;
    :goto_6e
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "level"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    const/16 v0, 0x7a

    invoke-static {v0, p1}, Landroid/util/StatsLog;->write(II)I

    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x4

    if-eq p1, v0, :cond_18

    if-eq p1, v1, :cond_12

    goto :goto_24

    .line 239
    :cond_12
    const-string v0, "RescueParty"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 236
    :cond_18
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 237
    goto :goto_24

    .line 233
    :cond_1c
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 234
    goto :goto_24

    .line 230
    :cond_20
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 231
    nop

    .line 242
    :goto_24
    const-string/jumbo v0, "no_package"

    invoke-static {v0}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private static getAllUserIds()[I
    .registers 7

    .line 374
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 376
    .local v0, "userIds":[I
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_28

    .line 378
    .local v4, "file":Ljava/io/File;
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 379
    .local v5, "userId":I
    if-eqz v5, :cond_22

    .line 380
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_23
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    move-object v0, v6

    .line 383
    .end local v5  # "userId":I
    :cond_22
    goto :goto_24

    .line 382
    :catch_23
    move-exception v5

    .line 376
    .end local v4  # "file":Ljava/io/File;
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 387
    :cond_27
    goto :goto_30

    .line 385
    :catchall_28
    move-exception v1

    .line 386
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v1  # "t":Ljava/lang/Throwable;
    :goto_30
    return-object v0
.end method

.method static getElapsedRealtime()J
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static handleNativeRescuePartyResets()V
    .registers 2

    .line 187
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 188
    const/4 v0, 0x4

    .line 189
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(ILjava/util/List;)V

    .line 191
    :cond_12
    return-void
.end method

.method private static incrementRescueLevel(I)V
    .registers 5
    .param p0, "triggerUid"  # I

    .line 198
    nop

    .line 199
    const/4 v0, 0x0

    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 198
    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 201
    .local v0, "level":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggered by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 206
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 3

    .line 159
    const/4 v0, 0x0

    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private static isDisabled()Z
    .registers 4

    .line 97
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.enable_rescue"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    return v0

    .line 102
    :cond_b
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v1, :cond_18

    .line 103
    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v2

    .line 110
    :cond_18
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 111
    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 116
    :cond_28
    const-string/jumbo v1, "persist.sys.disable_rescue"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 117
    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v2

    .line 121
    :cond_37
    return v0
.end method

.method private static isUsbActive()Z
    .registers 5

    .line 396
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.hardware.virtual_device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "RescueParty"

    if-eqz v1, :cond_13

    .line 397
    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_13
    :try_start_13
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 402
    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "state":Ljava/lang/String;
    const-string v3, "CONFIGURED"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    return v0

    .line 404
    .end local v1  # "state":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    .line 405
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"  # I

    .line 411
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    .line 417
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :cond_13
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 415
    :cond_16
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 414
    :cond_19
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 413
    :cond_1c
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 412
    :cond_1f
    const-string v0, "NONE"

    return-object v0
.end method

.method public static noteAppCrash(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "uid"  # I

    .line 142
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 143
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescueParty$Threshold;

    .line 144
    .local v0, "t":Lcom/android/server/RescueParty$Threshold;
    if-nez v0, :cond_1c

    .line 145
    new-instance v1, Lcom/android/server/RescueParty$AppThreshold;

    invoke-direct {v1, p1}, Lcom/android/server/RescueParty$AppThreshold;-><init>(I)V

    move-object v0, v1

    .line 146
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 149
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 150
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 151
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 153
    :cond_2f
    return-void
.end method

.method public static noteBoot(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 130
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 131
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 132
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 133
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 135
    :cond_20
    return-void
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"  # Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 168
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;I)V
    .registers 13
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "mode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_5
    invoke-static {p1}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 255
    goto :goto_12

    .line 253
    :catch_9
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to reset config settings"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 257
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_14
    invoke-static {v1, v3, p1, v2}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 260
    goto :goto_21

    .line 258
    :catch_18
    move-exception v4

    .line 259
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 261
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_21
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_26
    if-ge v2, v5, :cond_49

    aget v6, v4, v2

    .line 263
    .local v6, "userId":I
    :try_start_2a
    invoke-static {v1, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 266
    goto :goto_46

    .line 264
    :catch_2e
    move-exception v7

    .line 265
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 261
    .end local v6  # "userId":I
    .end local v7  # "e":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 268
    :cond_49
    if-nez v0, :cond_4c

    .line 271
    return-void

    .line 269
    :cond_4c
    throw v0
.end method

.method static resetAllThresholds()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 176
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/RescueParty$Threshold;

    .line 177
    .local v1, "appThreshold":Lcom/android/server/RescueParty$Threshold;
    invoke-virtual {v1}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 175
    .end local v1  # "appThreshold":Lcom/android/server/RescueParty$Threshold;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 179
    .end local v0  # "i":I
    :cond_20
    return-void
.end method
