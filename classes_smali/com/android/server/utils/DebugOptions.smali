.class public Lcom/android/server/utils/DebugOptions;
.super Ljava/lang/Object;
.source "DebugOptions.java"


# static fields
.field private static final mMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/DebugOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClassList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceName:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 78
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/utils/DebugOptions;->mMaps:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"  # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private configFile()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/debug-option-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"  # Ljava/lang/String;
    .param p1, "def"  # Ljava/lang/String;

    .line 61
    if-eqz p0, :cond_36

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_36

    .line 64
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "p":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2a

    :cond_28
    move-object v1, v0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move-object v1, p1

    :goto_2b
    move-object v0, v1

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move-object v1, v0

    goto :goto_35

    :cond_34
    move-object v1, p0

    :goto_35
    return-object v1

    .line 62
    .end local v0  # "p":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/server/utils/DebugOptions;
    .registers 4
    .param p0, "serviceName"  # Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/server/utils/DebugOptions;->mMaps:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/android/server/utils/DebugOptions;->mMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 28
    sget-object v1, Lcom/android/server/utils/DebugOptions;->mMaps:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/utils/DebugOptions;

    invoke-direct {v2, p0}, Lcom/android/server/utils/DebugOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_15
    sget-object v1, Lcom/android/server/utils/DebugOptions;->mMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/DebugOptions;

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private printDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "pattern"  # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 159
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/server/utils/DebugOptions;->formatPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->printDebugOptions(Ljava/io/PrintWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 160
    .end local v1  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_a

    .line 161
    :cond_26
    return-void
.end method

.method private readConfig()V
    .registers 5

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/utils/DebugOptions;->configFile()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_30

    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 73
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 75
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    goto :goto_10

    .line 78
    .end local v3  # "line":Ljava/lang/String;
    :cond_23
    :try_start_23
    invoke-static {v1, v0}, Lcom/android/server/utils/DebugOptions;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_30

    .line 80
    .end local v0  # "reader":Ljava/io/BufferedReader;
    goto :goto_34

    .line 71
    .restart local v0  # "reader":Ljava/io/BufferedReader;
    :catchall_27
    move-exception v1

    .end local v0  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 78
    .restart local v0  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :catchall_29
    move-exception v2

    if-eqz v0, :cond_2f

    :try_start_2c
    invoke-static {v1, v0}, Lcom/android/server/utils/DebugOptions;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :cond_2f
    throw v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    .end local v0  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :catch_30
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v0  # "e":Ljava/io/IOException;
    :goto_34
    return-void
.end method

.method private saveConfig()V
    .registers 7

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/utils/DebugOptions;->configFile()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_49

    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 90
    :try_start_12
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "field":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    .end local v3  # "field":Ljava/lang/String;
    goto :goto_18

    .line 93
    :cond_39
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_40

    .line 94
    :try_start_3c
    invoke-static {v1, v0}, Lcom/android/server/utils/DebugOptions;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    .line 96
    .end local v0  # "writer":Ljava/io/BufferedWriter;
    goto :goto_4d

    .line 89
    .restart local v0  # "writer":Ljava/io/BufferedWriter;
    :catchall_40
    move-exception v1

    .end local v0  # "writer":Ljava/io/BufferedWriter;
    .end local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :try_start_41
    throw v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 94
    .restart local v0  # "writer":Ljava/io/BufferedWriter;
    .restart local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :catchall_42
    move-exception v2

    if-eqz v0, :cond_48

    :try_start_45
    invoke-static {v1, v0}, Lcom/android/server/utils/DebugOptions;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :cond_48
    throw v2
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .end local v0  # "writer":Ljava/io/BufferedWriter;
    .restart local p0  # "this":Lcom/android/server/utils/DebugOptions;
    :catch_49
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v0  # "e":Ljava/io/IOException;
    :goto_4d
    return-void
.end method

.method private setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "pattern"  # Ljava/lang/String;
    .param p3, "on"  # Z
    .param p4, "save"  # Z

    .line 164
    iget-object v0, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 165
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/server/utils/DebugOptions;->formatPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5e

    .line 167
    invoke-static {p1, v1, v2, p3}, Landroid/util/Log;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_5e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5e

    .line 169
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, "field":Ljava/lang/String;
    if-eqz p3, :cond_56

    iget-object v6, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 171
    iget-object v6, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 173
    :cond_56
    if-nez p3, :cond_5d

    .line 174
    iget-object v6, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v5  # "field":Ljava/lang/String;
    :cond_5d
    :goto_5d
    goto :goto_3a

    .line 180
    .end local v1  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2  # "p":Ljava/lang/String;
    .end local v3  # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    goto :goto_a

    .line 181
    :cond_5f
    if-eqz p4, :cond_64

    .line 182
    invoke-direct {p0}, Lcom/android/server/utils/DebugOptions;->saveConfig()V

    .line 184
    :cond_64
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "(DEBUG_).*"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/DebugOptions;->addClass(Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public addClass(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "pattern"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public addClass(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"  # Ljava/lang/String;

    .line 48
    const-string v0, "(DEBUG_).*"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/DebugOptions;->addClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public addClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "className"  # Ljava/lang/String;
    .param p2, "pattern"  # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    .line 57
    nop

    .end local v0  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_f

    .line 55
    :catch_b
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 58
    .end local v0  # "e":Ljava/lang/ClassNotFoundException;
    :goto_f
    return-void
.end method

.method public dumpOptions(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 100
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_182

    aget-object v0, p2, v1

    if-eqz v0, :cond_182

    .line 101
    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "cmd":Ljava/lang/String;
    const-string v2, "-d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "-debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 103
    :cond_1e
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_17e

    aget-object v2, p2, v4

    if-eqz v2, :cond_17e

    .line 104
    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_184

    :cond_36
    goto/16 :goto_c7

    :sswitch_38
    const-string v6, "disable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v7

    goto/16 :goto_c8

    :sswitch_43
    const-string v6, "--enable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x4

    goto/16 :goto_c8

    :sswitch_4e
    const-string/jumbo v6, "print"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x8

    goto/16 :goto_c8

    :sswitch_5b
    const-string v6, "clear"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0xc

    goto/16 :goto_c8

    :sswitch_67
    const-string v6, "--off"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x7

    goto :goto_c8

    :sswitch_71
    const-string/jumbo v6, "read"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0xa

    goto :goto_c8

    :sswitch_7d
    const-string v6, "help"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0xb

    goto :goto_c8

    :sswitch_88
    const-string v6, "--on"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x5

    goto :goto_c8

    :sswitch_92
    const-string/jumbo v6, "off"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x3

    goto :goto_c8

    :sswitch_9d
    const-string v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x9

    goto :goto_c8

    :sswitch_a8
    const-string/jumbo v6, "on"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v4

    goto :goto_c8

    :sswitch_b3
    const-string v6, "--disable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x6

    goto :goto_c8

    :sswitch_bd
    const-string v6, "enable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    goto :goto_c8

    :goto_c7
    move v2, v5

    :goto_c8
    packed-switch v2, :pswitch_data_1ba

    goto/16 :goto_17d

    .line 140
    :pswitch_cd  #0xc
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 141
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/utils/DebugOptions;->configFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 142
    invoke-direct {p0, p1, v3, v1, v1}, Lcom/android/server/utils/DebugOptions;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 144
    goto/16 :goto_17d

    .line 132
    :pswitch_e3  #0xb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb shell dumpsys "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [-d|-debug] [print|get|read]                 [a|all|*|属性匹配正则表达式]  打印当前DEBUG相关属性值"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [-d|-debug] [enable|disable|on|off]          [a|all|*|属性匹配正则表达式]  临时关闭或者打开相关属性值"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [-d|-debug] [--enable|--disable|--on|--off]  [a|all|*|属性匹配正则表达式]  永久关闭或者打开相关属性值"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [-d|-debug] clear                                                        清除永久保存的属性值"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "注：a,all,* 最后会转成正则表达式  \"(DEBUG_).*\" ，表示全部开关"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    goto :goto_17d

    .line 128
    :pswitch_150  #0x8, 0x9, 0xa
    array-length v1, p2

    if-le v1, v7, :cond_155

    aget-object v3, p2, v7

    :cond_155
    invoke-direct {p0, p1, v3}, Lcom/android/server/utils/DebugOptions;->printDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 130
    goto :goto_17d

    .line 122
    :pswitch_159  #0x6, 0x7
    array-length v2, p2

    if-le v2, v7, :cond_15e

    aget-object v3, p2, v7

    :cond_15e
    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/server/utils/DebugOptions;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 124
    goto :goto_17d

    .line 117
    :pswitch_162  #0x4, 0x5
    array-length v1, p2

    if-le v1, v7, :cond_167

    aget-object v3, p2, v7

    :cond_167
    invoke-direct {p0, p1, v3, v4, v4}, Lcom/android/server/utils/DebugOptions;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 119
    goto :goto_17d

    .line 112
    :pswitch_16b  #0x2, 0x3
    array-length v2, p2

    if-le v2, v7, :cond_170

    aget-object v3, p2, v7

    :cond_170
    invoke-direct {p0, p1, v3, v1, v1}, Lcom/android/server/utils/DebugOptions;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 114
    goto :goto_17d

    .line 107
    :pswitch_174  #0x0, 0x1
    array-length v2, p2

    if-le v2, v7, :cond_179

    aget-object v3, p2, v7

    :cond_179
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/utils/DebugOptions;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 109
    nop

    .line 146
    :goto_17d
    goto :goto_181

    .line 149
    :cond_17e
    invoke-direct {p0, p1, v3}, Lcom/android/server/utils/DebugOptions;->printDebugOptions(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 151
    :goto_181
    return v4

    .line 154
    .end local v0  # "cmd":Ljava/lang/String;
    :cond_182
    return v1

    nop

    :sswitch_data_184
    .sparse-switch
        -0x4d6ada7d -> :sswitch_bd
        -0x49c576b8 -> :sswitch_b3
        0xddf -> :sswitch_a8
        0x18f56 -> :sswitch_9d
        0x1ad6f -> :sswitch_92
        0x152b7f -> :sswitch_88
        0x30cf41 -> :sswitch_7d
        0x355996 -> :sswitch_71
        0x29043cf -> :sswitch_67
        0x5a5b64d -> :sswitch_5b
        0x65fb2ad -> :sswitch_4e
        0x41a27323 -> :sswitch_43
        0x639e22e8 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_174  #00000000
        :pswitch_174  #00000001
        :pswitch_16b  #00000002
        :pswitch_16b  #00000003
        :pswitch_162  #00000004
        :pswitch_162  #00000005
        :pswitch_159  #00000006
        :pswitch_159  #00000007
        :pswitch_150  #00000008
        :pswitch_150  #00000009
        :pswitch_150  #0000000a
        :pswitch_e3  #0000000b
        :pswitch_cd  #0000000c
    .end packed-switch
.end method

.method public init()V
    .registers 7

    .line 187
    invoke-direct {p0}, Lcom/android/server/utils/DebugOptions;->readConfig()V

    .line 188
    iget-object v0, p0, Lcom/android/server/utils/DebugOptions;->mFieldNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "field":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/utils/DebugOptions;->mClassList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 190
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v3, v1, v5}, Landroid/util/Log;->setDebugOptions(Ljava/io/PrintWriter;Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/List;

    .line 191
    .end local v3  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1f

    .line 192
    .end local v1  # "field":Ljava/lang/String;
    :cond_31
    goto :goto_9

    .line 193
    :cond_32
    return-void
.end method
