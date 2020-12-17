.class public Lcom/android/server/am/AmsUtils;
.super Ljava/lang/Object;
.source "AmsUtils.java"


# static fields
.field public static final BACKUP_APP_ADJ:I = 0x12c

.field public static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field private static final PROC_STATS_FORMAT:[I

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field public static final UNKNOWN_ADJ:I = 0x3e9

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field private static sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

.field private static sHasCloneFeature:Z

.field private static sProcessRecord_mCloneId:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-string/jumbo v0, "mCloneID"

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/AmsUtils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    .line 45
    sput-object v1, Lcom/android/server/am/AmsUtils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    .line 46
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/AmsUtils;->sHasCloneFeature:Z

    .line 48
    const/16 v1, 0x18

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    sput-object v1, Lcom/android/server/am/AmsUtils;->PROC_STATS_FORMAT:[I

    .line 77
    :try_start_14
    const-string v1, "android.content.pm.ApplicationInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/AmsUtils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    .line 78
    const-string v1, "com.android.server.am.ProcessRecord"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AmsUtils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/AmsUtils;->sHasCloneFeature:Z
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_2f} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_2f} :catch_30

    goto :goto_39

    .line 82
    :catch_30
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3a

    .line 80
    .end local v0  # "e":Ljava/lang/ClassNotFoundException;
    :catch_35
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 84
    .end local v0  # "e":Ljava/lang/NoSuchFieldException;
    :goto_39
    nop

    .line 85
    :goto_3a
    return-void

    nop

    :array_3c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloneId(Ljava/lang/Object;)I
    .registers 2
    .param p0, "info"  # Ljava/lang/Object;

    .line 92
    sget-boolean v0, Lcom/android/server/am/AmsUtils;->sHasCloneFeature:Z

    if-eqz v0, :cond_1f

    .line 94
    :try_start_4
    instance-of v0, p0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_f

    .line 95
    sget-object v0, Lcom/android/server/am/AmsUtils;->sApplicationInfo_mCloneId:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 97
    :cond_f
    sget-object v0, Lcom/android/server/am/AmsUtils;->sProcessRecord_mCloneId:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_15} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 101
    :catch_16
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1f

    .line 99
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 105
    .end local v0  # "e":Ljava/lang/IllegalAccessException;
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static getRss(I)J
    .registers 7
    .param p0, "pid"  # I

    .line 109
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 110
    .local v1, "out":[J
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "/proc/%d/stat"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/AmsUtils;->PROC_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 112
    aget-wide v2, v1, v3

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    return-wide v2

    .line 114
    :cond_21
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static hasAppCloneFeature()Z
    .registers 1

    .line 88
    sget-boolean v0, Lcom/android/server/am/AmsUtils;->sHasCloneFeature:Z

    return v0
.end method
