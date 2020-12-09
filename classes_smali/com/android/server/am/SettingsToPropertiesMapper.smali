.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field private static final GLOBAL_SETTINGS_CATEGORY:Ljava/lang/String; = "global_settings"

.field private static final RESET_PERFORMED_PROPERTY:Ljava/lang/String; = "device_config.reset_performed"

.field private static final RESET_RECORD_FILE_PATH:Ljava/lang/String; = "/data/server_configurable_flags/reset_flags"

.field private static final SYSTEM_PROPERTY_INVALID_SUBSTRING:Ljava/lang/String; = ".."

.field private static final SYSTEM_PROPERTY_MAX_LENGTH:I = 0x5c

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "persist.device_config."

.field private static final SYSTEM_PROPERTY_VALID_CHARACTERS_REGEX:Ljava/lang/String; = "^[\\w\\.\\-@:]*$"

.field private static final TAG:Ljava/lang/String; = "SettingsToPropertiesMapper"

.field static final sDeviceConfigScopes:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final sGlobalSettings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceConfigScopes:[Ljava/lang/String;

.field private final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 71
    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 81
    const-string v1, "activity_manager_native_boot"

    const-string v2, "input_native_boot"

    const-string v3, "intelligence_content_suggestions"

    const-string v4, "media_native"

    const-string/jumbo v5, "netd_native"

    const-string/jumbo v6, "runtime_native"

    const-string/jumbo v7, "runtime_native_boot"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 104
    return-void
.end method

.method static getResetFlagsFileContent()Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    nop

    .line 263
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 270
    goto :goto_21

    .line 268
    :catch_1b
    move-exception v1

    .line 269
    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 271
    :goto_21
    return-object v0
.end method

.method public static getResetNativeCategories()[Ljava/lang/String;
    .registers 9

    .line 177
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 181
    :cond_a
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 183
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 186
    :cond_17
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 188
    array-length v3, v0

    move v4, v1

    :goto_24
    if-ge v4, v3, :cond_50

    aget-object v5, v0, v4

    .line 189
    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 190
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_47

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to extract category name from property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 192
    goto :goto_4d

    .line 194
    :cond_47
    const/4 v5, 0x2

    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 196
    :cond_50
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isNativeFlagsResetPerformed()Z
    .registers 2

    .line 167
    const-string v0, "device_config.reset_performed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3

    .line 252
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 253
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 255
    :cond_a
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_d
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 244
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 245
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 247
    :cond_a
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :goto_d
    return-void
.end method

.method static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    const-string p1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 212
    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    .line 216
    :cond_2b
    return-object p0

    .line 213
    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 221
    if-nez p2, :cond_10

    .line 224
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 225
    return-void

    .line 227
    :cond_d
    const-string p2, ""

    goto :goto_2d

    .line 228
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    if-le v0, v1, :cond_2d

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exceeds system property max length."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 230
    return-void

    .line 234
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 240
    goto :goto_53

    .line 235
    :catch_31
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 241
    :goto_53
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .registers 4

    .line 155
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    .line 158
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$updatePropertiesFromSettings$0$SettingsToPropertiesMapper(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 140
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    if-nez v3, :cond_3c

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to construct system property for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_3c
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    goto :goto_c

    .line 150
    :cond_45
    return-void
.end method

.method updatePropertiesFromSettings()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_59

    aget-object v4, v0, v3

    .line 109
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 110
    const-string v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    if-nez v5, :cond_2b

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting uri is null for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 113
    goto :goto_56

    .line 115
    :cond_2b
    if-nez v6, :cond_42

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid prop name for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 117
    goto :goto_56

    .line 120
    :cond_42
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_51

    .line 130
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_51
    iget-object v4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 135
    :cond_59
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_5c
    if-ge v2, v1, :cond_6d

    aget-object v3, v0, v2

    .line 136
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SettingsToPropertiesMapper$oP9A7vTPRZcZgLdy43KKEveF4zQ;

    invoke-direct {v5, p0}, Lcom/android/server/am/-$$Lambda$SettingsToPropertiesMapper$oP9A7vTPRZcZgLdy43KKEveF4zQ;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 152
    :cond_6d
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
