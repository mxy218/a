.class public Lcom/android/server/os/StrategyConfigFactory;
.super Ljava/lang/Object;
.source "StrategyConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/StrategyConfigFactory$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StrategyConfigFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;
    .registers 2
    .param p0, "opts"  # Lcom/android/server/os/StrategyConfigFactory$Options;

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromProperty(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;
    .registers 2
    .param p0, "opts"  # Lcom/android/server/os/StrategyConfigFactory$Options;

    .line 95
    invoke-static {p0}, Lcom/android/server/os/StrategyConfigFactory;->parsePropertyFile(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;
    .registers 2
    .param p0, "opts"  # Lcom/android/server/os/StrategyConfigFactory$Options;

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public static loadConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/os/StrategyConfig;
    .registers 10
    .param p0, "configName"  # Ljava/lang/String;
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "defaultPath"  # Ljava/lang/String;
    .param p3, "propertyLen"  # I

    .line 59
    new-instance v0, Lcom/android/server/os/StrategyConfigFactory$Options;

    invoke-direct {v0}, Lcom/android/server/os/StrategyConfigFactory$Options;-><init>()V

    .line 60
    .local v0, "opts":Lcom/android/server/os/StrategyConfigFactory$Options;
    iput-object p0, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "defaultFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 64
    const/4 v3, 0x0

    return-object v3

    .line 66
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string/jumbo v4, "load config from "

    const-string v5, "StrategyConfigFactory"

    if-eqz v3, :cond_3f

    .line 67
    iput-object p1, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->filePath:Ljava/lang/String;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 70
    :cond_3f
    iput-object p2, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->filePath:Ljava/lang/String;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_53
    if-nez p1, :cond_57

    .line 74
    iput-object p2, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->filePath:Ljava/lang/String;

    .line 76
    :cond_57
    if-nez p2, :cond_5b

    .line 77
    iput-object p1, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->filePath:Ljava/lang/String;

    .line 79
    :cond_5b
    if-lez p3, :cond_60

    .line 80
    iput p3, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I

    goto :goto_63

    .line 82
    :cond_60
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I

    .line 84
    :goto_63
    invoke-static {v0}, Lcom/android/server/os/StrategyConfigFactory;->createFromProperty(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;

    move-result-object v3

    return-object v3
.end method

.method private static parsePropertyFile(Lcom/android/server/os/StrategyConfigFactory$Options;)Lcom/android/server/os/StrategyConfig;
    .registers 14
    .param p0, "opts"  # Lcom/android/server/os/StrategyConfigFactory$Options;

    .line 99
    const-string v0, "StrategyConfigFactory"

    const-string v1, "Load config data from file"

    invoke-static {v0, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 101
    .local v1, "properties":Ljava/util/Properties;
    new-instance v2, Lcom/android/server/os/StrategyConfig;

    iget-object v3, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/os/StrategyConfig;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "strategyConfig":Lcom/android/server/os/StrategyConfig;
    const/4 v3, 0x0

    :try_start_14
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_38

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " strategy config not exist!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_11c

    .line 106
    return-object v3

    .line 109
    :cond_38
    :try_start_38
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_ff

    .line 111
    .local v5, "configFile":Ljava/io/InputStream;
    :try_start_49
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 112
    invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    .line 114
    .local v6, "keys":Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ea

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 115
    .local v8, "key":Ljava/lang/Object;
    iget v9, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_f1

    const/4 v10, -0x1

    const-string v11, " "

    if-ne v9, v10, :cond_88

    .line 116
    :try_start_70
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_87

    .line 118
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "config":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v11

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v9  # "value":Ljava/lang/String;
    .end local v10  # "config":[Ljava/lang/String;
    :cond_87
    goto :goto_e8

    :cond_88
    iget v9, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I

    if-nez v9, :cond_97

    .line 122
    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v9

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    .line 124
    :cond_97
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .restart local v9  # "value":Ljava/lang/String;
    if-eqz v9, :cond_e8

    .line 126
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 127
    .restart local v10  # "config":[Ljava/lang/String;
    array-length v11, v10

    iget v12, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I

    if-eq v11, v12, :cond_de

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " config error! key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " config.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " opts.propertyLen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->propertyLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    goto :goto_5f

    .line 133
    :cond_de
    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v11

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catchall {:try_start_70 .. :try_end_e8} :catchall_f1

    .line 136
    .end local v8  # "key":Ljava/lang/Object;
    .end local v9  # "value":Ljava/lang/String;
    .end local v10  # "config":[Ljava/lang/String;
    :cond_e8
    :goto_e8
    goto/16 :goto_5f

    .line 137
    :cond_ea
    nop

    .line 138
    if-eqz v5, :cond_f0

    :try_start_ed
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_ff

    .line 137
    :cond_f0
    return-object v2

    .line 109
    .end local v6  # "keys":Ljava/util/ArrayList;
    :catchall_f1
    move-exception v6

    .end local v1  # "properties":Ljava/util/Properties;
    .end local v2  # "strategyConfig":Lcom/android/server/os/StrategyConfig;
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "configFile":Ljava/io/InputStream;
    .end local p0  # "opts":Lcom/android/server/os/StrategyConfigFactory$Options;
    :try_start_f2
    throw v6
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    .line 138
    .restart local v1  # "properties":Ljava/util/Properties;
    .restart local v2  # "strategyConfig":Lcom/android/server/os/StrategyConfig;
    .restart local v4  # "file":Ljava/io/File;
    .restart local v5  # "configFile":Ljava/io/InputStream;
    .restart local p0  # "opts":Lcom/android/server/os/StrategyConfigFactory$Options;
    :catchall_f3
    move-exception v7

    if-eqz v5, :cond_fe

    :try_start_f6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fa

    goto :goto_fe

    :catchall_fa
    move-exception v8

    :try_start_fb
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1  # "properties":Ljava/util/Properties;
    .end local v2  # "strategyConfig":Lcom/android/server/os/StrategyConfig;
    .end local v4  # "file":Ljava/io/File;
    .end local p0  # "opts":Lcom/android/server/os/StrategyConfigFactory$Options;
    :cond_fe
    :goto_fe
    throw v7
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_ff} :catch_ff

    .end local v5  # "configFile":Ljava/io/InputStream;
    .restart local v1  # "properties":Ljava/util/Properties;
    .restart local v2  # "strategyConfig":Lcom/android/server/os/StrategyConfig;
    .restart local v4  # "file":Ljava/io/File;
    .restart local p0  # "opts":Lcom/android/server/os/StrategyConfigFactory$Options;
    :catch_ff
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/Exception;
    :try_start_100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " config file failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_11b} :catch_11c

    .line 143
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "e":Ljava/lang/Exception;
    goto :goto_133

    .line 141
    :catch_11c
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/os/StrategyConfigFactory$Options;->configName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " strategy config load filed!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_133
    return-object v3
.end method
