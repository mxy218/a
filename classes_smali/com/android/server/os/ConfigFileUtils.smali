.class Lcom/android/server/os/ConfigFileUtils;
.super Ljava/lang/Object;
.source "ConfigFileUtils.java"


# static fields
.field static final CURRENT_HASHCODE_MAX:I = 0x8

.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_app_config.conf"

.field private static final ENABLED_PERF_NODE_NUMBER:Ljava/lang/String; = "EnabledPerfNodeNumber"

.field private static final PROP_KEY_DEVICE_IDENTIFY_COMMON:Ljava/lang/String; = "ro.product.model"

.field private static final PROP_KEY_DEVICE_IDENTIFY_FLYME:Ljava/lang/String; = "ro.product.flyme.model"

.field private static final TAG:Ljava/lang/String; = "ConfigFileUtils"

.field static final TIME_OUT_ENABLE:Ljava/lang/String; = "-1"

.field static final TIME_OUT_REMOVE:Ljava/lang/String; = "0"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_app_config.conf"

.field private static gedNode:Ljava/lang/String;

.field static gedStreamNode:Ljava/io/OutputStream;

.field private static sBoostNameList:Ljava/util/ArrayList;

.field static sCurrentPerfNodeMax:I

.field private static sPerfNodes:[Ljava/lang/String;

.field static sPerfNodesStream:[Ljava/io/OutputStream;

.field private static sWhiteListProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 33
    const/4 v0, 0x2

    sput v0, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    .line 38
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    .line 43
    const-string v0, "/sys/srs/srs_cpulevel"

    const-string v1, "/sys/srs/srs_gpulevel"

    const-string v2, "/sys/srs/srs_buslevel"

    const-string v3, "/sys/srs/srs_iolevel"

    const-string v4, "/sys/srs/srs_memlevel"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    .line 50
    const-string v0, "/d/ged/hal/event_notify"

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->gedNode:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "keyword"  # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 137
    const-string/jumbo v0, "properties is empty"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    .line 138
    return-object v1

    .line 141
    :cond_10
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 142
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "config":Ljava/lang/String;
    return-object v0

    .line 145
    .end local v0  # "config":Ljava/lang/String;
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cann\'t find the "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    .line 148
    return-object v1
.end method

.method static getFlymeModelString()Ljava/lang/String;
    .registers 3

    .line 186
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.product.flyme.model"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "devicesModel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 188
    return-object v1

    .line 192
    :cond_11
    const-string/jumbo v2, "ro.product.model"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 194
    return-object v1

    .line 196
    :cond_1f
    return-object v0
.end method

.method static initGedNodeStream()V
    .registers 3

    .line 78
    const-string v0, "Init Ged Node Stream"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 81
    :try_start_5
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->gedNode:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->gedStreamNode:Ljava/io/OutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    .line 84
    goto :goto_1b

    .line 82
    :catch_17
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .end local v0  # "e":Ljava/io/IOException;
    :goto_1b
    return-void
.end method

.method static initPerfNodeStream()V
    .registers 5

    .line 62
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodesStream:[Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 63
    return-void

    .line 65
    :cond_5
    const-string v0, "Init Perf Node Stream"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 67
    :try_start_a
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/OutputStream;

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodesStream:[Ljava/io/OutputStream;

    .line 68
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_13
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 70
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sPerfNodesStream:[Ljava/io/OutputStream;

    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_30

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 74
    .end local v1  # "i":I
    :cond_2f
    goto :goto_34

    .line 72
    :catch_30
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    .end local v0  # "e":Ljava/io/IOException;
    :goto_34
    return-void
.end method

.method static isAppNeedBoost(Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;

    .line 163
    if-eqz p0, :cond_38

    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v0, :cond_38

    .line 164
    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 165
    return v1

    .line 169
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 170
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "tempPackageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 173
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 174
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v3, p0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    :cond_34
    return v1

    .line 169
    .end local v2  # "tempPackageName":Ljava/lang/String;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 180
    .end local v0  # "i":I
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method static loadDataFromFile()V
    .registers 5

    .line 91
    const-string v0, "Load config data from file"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 94
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/perf_intelligent_app_config.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "boostConfigFile":Ljava/io/File;
    sget-boolean v1, Landroid/perf/LogUtils;->ROMOTE_CONFIG_DISABLE:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1d

    .line 99
    :cond_17
    const-string v1, "Load config data from cloud"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    goto :goto_2a

    .line 96
    :cond_1d
    :goto_1d
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/perf_intelligent_app_config.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 97
    const-string v1, "Load config data from local"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 102
    :goto_2a
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_60

    .line 103
    .local v1, "mConfigFile":Ljava/io/InputStream;
    :try_start_3b
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 104
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_52

    .line 105
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_60

    .line 108
    .end local v0  # "boostConfigFile":Ljava/io/File;
    .end local v1  # "mConfigFile":Ljava/io/InputStream;
    :cond_51
    goto :goto_66

    .line 102
    .restart local v0  # "boostConfigFile":Ljava/io/File;
    .restart local v1  # "mConfigFile":Ljava/io/InputStream;
    :catchall_52
    move-exception v2

    .end local v0  # "boostConfigFile":Ljava/io/File;
    .end local v1  # "mConfigFile":Ljava/io/InputStream;
    :try_start_53
    throw v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 105
    .restart local v0  # "boostConfigFile":Ljava/io/File;
    .restart local v1  # "mConfigFile":Ljava/io/InputStream;
    :catchall_54
    move-exception v3

    if-eqz v1, :cond_5f

    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v4

    :try_start_5c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    throw v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_60

    .line 106
    .end local v0  # "boostConfigFile":Ljava/io/File;
    .end local v1  # "mConfigFile":Ljava/io/InputStream;
    :catch_60
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Load config file failed"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostFatal(Ljava/lang/String;)V

    .line 118
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_66
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 121
    const-string v0, "EnabledPerfNodeNumber"

    invoke-static {v0}, Lcom/android/server/os/ConfigFileUtils;->getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "enabledPerfNodeNumber":Ljava/lang/String;
    if-eqz v0, :cond_97

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current perf node number is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 126
    :cond_97
    return-void
.end method

.method static reloadAppBoostConfig()V
    .registers 1

    .line 152
    const-string v0, "ReLoad config data"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v0, :cond_12

    .line 154
    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 155
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_19

    .line 157
    :cond_12
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 159
    :goto_19
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->loadDataFromFile()V

    .line 160
    return-void
.end method
