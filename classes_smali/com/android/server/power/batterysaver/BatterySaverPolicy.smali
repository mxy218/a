.class public Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;,
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;,
        Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyLevel;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field private static final DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

.field private static final KEY_ACTIVATE_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_ACTIVATE_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ADVERTISE_IS_ENABLED:Ljava/lang/String; = "advertise_is_enabled"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_AOD_DISABLED:Ljava/lang/String; = "aod_disabled"

.field private static final KEY_CPU_FREQ_INTERACTIVE:Ljava/lang/String; = "cpufreq-i"

.field private static final KEY_CPU_FREQ_NONINTERACTIVE:Ljava/lang/String; = "cpufreq-n"

.field private static final KEY_ENABLE_NIGHT_MODE:Ljava/lang/String; = "enable_night_mode"

.field private static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field private static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_LAUNCH_BOOST_DISABLED:Ljava/lang/String; = "launch_boost_disabled"

.field private static final KEY_OPTIONAL_SENSORS_DISABLED:Ljava/lang/String; = "optional_sensors_disabled"

.field private static final KEY_QUICK_DOZE_ENABLED:Ljava/lang/String; = "quick_doze_enabled"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field static final OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POLICY_LEVEL_ADAPTIVE:I = 0x1

.field static final POLICY_LEVEL_FULL:I = 0x2

.field static final POLICY_LEVEL_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAccessibilityEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptiveDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptiveSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceSpecificSettingsSource:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDisableVibrationEffective:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mEventLogKeys:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPolicyLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 113
    new-instance v21, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v0, v21

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v16, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v17, v1

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    sput-object v21, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 136
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    sput-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 138
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object v1, v0

    new-instance v2, Landroid/util/ArrayMap;

    move-object/from16 v17, v2

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    move-object/from16 v18, v2

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/high16 v2, 0x3f000000  # 0.5f

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x2

    invoke-direct/range {v1 .. v21}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    sput-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 5
    .param p1, "lock"  # Ljava/lang/Object;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "batterySavingStats"  # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 237
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 199
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 203
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 207
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 238
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 240
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 242
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 243
    return-void
.end method

.method private dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1050
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 1051
    return-void

    .line 1053
    :cond_3
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1054
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_2c

    .line 1055
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    const-string v2, ": \'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1061
    .end local v1  # "i":I
    :cond_2c
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "indent"  # Ljava/lang/String;
    .param p3, "label"  # Ljava/lang/String;
    .param p4, "p"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 997
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 998
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  advertise_is_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  vibration_disabled:config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  vibration_disabled:effective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez v1, :cond_69

    move v1, v2

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animation_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  fullbackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  keyvaluebackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  firewall_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  datasaver_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  launch_boost_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    adjust_brightness_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  adjust_brightness_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  gps_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  force_all_apps_standby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  force_background_check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    optional_sensors_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  aod_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  soundtrigger_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  quick_doze_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  enable_night_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    const-string v0, "    Interactive File values:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    const-string v1, "      "

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 1043
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1045
    const-string v0, "    Noninteractive File values:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p4, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 1047
    return-void
.end method

.method private getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .registers 3

    .line 927
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 934
    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    .line 929
    :cond_b
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    .line 931
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0
.end method

.method private refreshSettings()V
    .registers 8

    .line 300
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    const-string v1, "battery_saver_constants"

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "setting":Ljava/lang/String;
    const-string v2, "battery_saver_device_specific_constants"

    invoke-virtual {p0, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "deviceSpecificSetting":Ljava/lang/String;
    const-string v3, "battery_saver_device_specific_constants"

    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 313
    :cond_22
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 315
    const-string v3, "(overlay)"

    iput-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 318
    :cond_31
    const-string v3, "battery_saver_adaptive_constants"

    .line 319
    invoke-virtual {p0, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "adaptiveSetting":Ljava/lang/String;
    const-string v4, "battery_saver_adaptive_device_specific_constants"

    invoke-virtual {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "adaptiveDeviceSpecificSetting":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 326
    monitor-exit v0

    return-void

    .line 329
    :cond_45
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    move-object v1, v5

    .line 330
    .end local v2  # "deviceSpecificSetting":Ljava/lang/String;
    .end local v3  # "adaptiveSetting":Ljava/lang/String;
    .end local v4  # "adaptiveDeviceSpecificSetting":Ljava/lang/String;
    .local v1, "listeners":[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_5d

    .line 333
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$7a-wfvqpjaa389r6FVZsJX98cd8;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$7a-wfvqpjaa389r6FVZsJX98cd8;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void

    .line 330
    .end local v1  # "listeners":[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "setting"  # Ljava/lang/String;
    .param p2, "deviceSpecificSetting"  # Ljava/lang/String;
    .param p3, "adaptiveSetting"  # Ljava/lang/String;
    .param p4, "adaptiveDeviceSpecificSetting"  # Ljava/lang/String;

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 352
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 354
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 355
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    .line 356
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    .line 357
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 358
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_32
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "changed":Z
    sget-object v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_FULL_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p1, p2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    .line 376
    .local v1, "newFullPolicy":Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 377
    const/4 v0, 0x1

    .line 379
    :cond_4f
    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 381
    sget-object v2, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEFAULT_ADAPTIVE_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p3, p4, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 383
    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 384
    invoke-virtual {v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 385
    const/4 v0, 0x1

    .line 389
    :cond_69
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 391
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 393
    return v0
.end method

.method private updatePolicyDependenciesLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    .line 400
    .local v0, "currPolicy":Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    iget-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-eqz v2, :cond_1f

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_1f
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-eqz v2, :cond_28

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_28
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    if-eqz v2, :cond_32

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_32
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-eqz v2, :cond_3b

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_3b
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    if-eqz v2, :cond_45

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_45
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-eqz v2, :cond_4e

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_4e
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-eqz v2, :cond_57

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_57
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-eqz v2, :cond_60

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_60
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-eqz v2, :cond_69

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_69
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-eqz v2, :cond_72

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_72
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_7c
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-eqz v2, :cond_85

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_85
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-eqz v2, :cond_8f

    const-string/jumbo v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_8f
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-eqz v2, :cond_99

    const-string/jumbo v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_99
    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    .line 425
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 970
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 972
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 975
    const-string v1, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    const-string v1, "  Settings: battery_saver_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    const-string v1, "  Adaptive Settings: battery_saver_adaptive_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v1, "  Adaptive Device Specific Settings: battery_saver_adaptive_device_specific_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptiveDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPolicyLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    const-string v1, "  "

    const-string v2, "full"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 991
    const-string v1, "  "

    const-string v2, "default adaptive"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 992
    const-string v1, "  "

    const-string v2, "current adaptive"

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dumpPolicyLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)V

    .line 993
    monitor-exit v0

    .line 994
    return-void

    .line 993
    :catchall_db
    move-exception v1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_3 .. :try_end_dd} :catchall_db

    throw v1
.end method

.method public getBatterySaverPolicy(I)Landroid/os/PowerSaveState;
    .registers 8
    .param p1, "type"  # I

    .line 817
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    .line 819
    .local v1, "currPolicy":Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    new-instance v2, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v2}, Landroid/os/PowerSaveState$Builder;-><init>()V

    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    .line 820
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 821
    .local v2, "builder":Landroid/os/PowerSaveState$Builder;
    packed-switch p1, :pswitch_data_f0

    .line 872
    :pswitch_15  #0x9
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    goto/16 :goto_e3

    .line 860
    :pswitch_19  #0x10
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 861
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 860
    return-object v3

    .line 869
    :pswitch_25  #0xf
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 870
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 869
    return-object v3

    .line 866
    :pswitch_31  #0xe
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 867
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 866
    return-object v3

    .line 863
    :pswitch_3d  #0xd
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 864
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 863
    return-object v3

    .line 857
    :pswitch_49  #0xc
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 858
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 857
    return-object v3

    .line 854
    :pswitch_55  #0xb
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 854
    return-object v3

    .line 845
    :pswitch_61  #0xa
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 846
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 845
    return-object v3

    .line 848
    :pswitch_6d  #0x8
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 849
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 848
    return-object v3

    .line 841
    :pswitch_79  #0x7
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    .line 842
    invoke-virtual {v3, v4}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 843
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 841
    return-object v3

    .line 838
    :pswitch_8b  #0x6
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 839
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 838
    return-object v3

    .line 835
    :pswitch_97  #0x5
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 836
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 835
    return-object v3

    .line 832
    :pswitch_a3  #0x4
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 833
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 832
    return-object v3

    .line 829
    :pswitch_af  #0x3
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 830
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 829
    return-object v3

    .line 851
    :pswitch_bb  #0x2
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDisableVibrationEffective:Z

    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 852
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 851
    return-object v3

    .line 823
    :pswitch_c7  #0x1
    iget-boolean v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-nez v3, :cond_d2

    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-eqz v3, :cond_d0

    goto :goto_d2

    :cond_d0
    const/4 v3, 0x0

    goto :goto_d3

    :cond_d2
    :goto_d2
    const/4 v3, 0x1

    .line 825
    .local v3, "isEnabled":Z
    :goto_d3
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    .line 826
    invoke-virtual {v4, v5}, Landroid/os/PowerSaveState$Builder;->setLocationMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object v4

    .line 827
    invoke-virtual {v4}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v4

    monitor-exit v0

    .line 825
    return-object v4

    .line 872
    .end local v3  # "isEnabled":Z
    :goto_e3
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v3

    .line 873
    invoke-virtual {v3}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v3

    monitor-exit v0

    .line 872
    return-object v3

    .line 875
    .end local v1  # "currPolicy":Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .end local v2  # "builder":Landroid/os/PowerSaveState$Builder;
    :catchall_ed
    move-exception v1

    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_3 .. :try_end_ef} :catchall_ed

    throw v1

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_c7  #00000001
        :pswitch_bb  #00000002
        :pswitch_af  #00000003
        :pswitch_a3  #00000004
        :pswitch_97  #00000005
        :pswitch_8b  #00000006
        :pswitch_79  #00000007
        :pswitch_6d  #00000008
        :pswitch_15  #00000009
        :pswitch_61  #0000000a
        :pswitch_55  #0000000b
        :pswitch_49  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_31  #0000000e
        :pswitch_25  #0000000f
        :pswitch_19  #00000010
    .end packed-switch
.end method

.method getDeviceSpecificConfigResId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 290
    const v0, 0x1040139

    return v0
.end method

.method public getFileValues(Z)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "interactive"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    if-eqz p1, :cond_c

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    goto :goto_12

    .line 947
    :cond_c
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    :goto_12
    monitor-exit v0

    .line 946
    return-object v1

    .line 948
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsMode()I
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    monitor-exit v0

    return v1

    .line 941
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .registers 3

    .line 952
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    monitor-exit v0

    return v1

    .line 954
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$refreshSettings$1$BatterySaverPolicy([Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .registers 5
    .param p1, "listeners"  # [Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 334
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 335
    .local v2, "listener":Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;
    invoke-interface {v2, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;->onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 334
    .end local v2  # "listener":Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 337
    :cond_c
    return-void
.end method

.method public synthetic lambda$systemReady$0$BatterySaverPolicy(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 263
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 265
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 266
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->refreshSettings()V

    .line 267
    return-void

    .line 265
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 295
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->refreshSettings()V

    .line 296
    return-void
.end method

.method resetAdaptivePolicyLocked()Z
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mDefaultAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityEnabledForTest(Z)V
    .registers 4
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 1067
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 1068
    monitor-exit v0

    .line 1069
    return-void

    .line 1068
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z
    .registers 5
    .param p1, "p"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 905
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 906
    const-string v1, "BatterySaverPolicy"

    const-string/jumbo v2, "setAdaptivePolicy given null policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v0

    .line 909
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 910
    return v0

    .line 913
    :cond_15
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    .line 914
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 915
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 916
    return v2

    .line 918
    :cond_20
    return v0
.end method

.method setPolicyLevel(I)Z
    .registers 7
    .param p1, "level"  # I

    .line 884
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_a

    .line 886
    monitor-exit v0

    return v2

    .line 888
    :cond_a
    const/4 v1, 0x1

    if-eqz p1, :cond_2b

    if-eq p1, v1, :cond_2b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2b

    .line 895
    const-string v1, "BatterySaverPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPolicyLevel invalid level given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    monitor-exit v0

    return v2

    .line 892
    :cond_2b
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    .line 893
    nop

    .line 898
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 899
    monitor-exit v0

    return v1

    .line 900
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method shouldAdvertiseIsEnabled()Z
    .registers 3

    .line 958
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getCurrentPolicyLocked()Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    monitor-exit v0

    return v1

    .line 960
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public systemReady()V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    const-string v1, "BatterySaverPolicy"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_adaptive_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_adaptive_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 262
    .local v0, "acm":Landroid/view/accessibility/AccessibilityManager;
    new-instance v1, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;

    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverPolicy$rfw31Sb8JX1OVD2rGHGtCXyfop8;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 268
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 269
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_4d
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 271
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    .line 272
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    .line 273
    return-void

    .line 271
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v3
.end method

.method public toEventLogString()Ljava/lang/String;
    .registers 3

    .line 964
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 966
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "setting"  # Ljava/lang/String;
    .param p2, "deviceSpecificSetting"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 343
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    return-void
.end method
