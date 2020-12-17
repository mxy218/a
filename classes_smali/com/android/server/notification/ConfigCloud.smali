.class public Lcom/android/server/notification/ConfigCloud;
.super Ljava/lang/Object;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConfigCloud$Record;
    }
.end annotation


# static fields
.field private static final ATT_COVERED:Ljava/lang/String; = "covered"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static HEADS_UP_WHITE:[Ljava/lang/String; = null

.field private static final NOTIFICATION_POLICY_CLOUD_CHANGE:Ljava/lang/String; = "flyme.intent.action.notification_cloud_file_change"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mConfigFile:Ljava/io/File;

.field private mValueMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 34
    const-string v0, "ConfigCloud"

    sput-object v0, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    .line 39
    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.qqlite"

    const-string v4, "com.tencent.mobileqqi"

    const-string v5, "com.whatsapp"

    const-string/jumbo v6, "jp.naver.line.android"

    const-string v7, "com.facebook.orca"

    const-string v8, "com.android.mms"

    const-string v9, "com.android.email"

    const-string v10, "com.meizu.picker"

    const-string v11, "com.tencent.tim"

    const-string v12, "com.alibaba.android.rimet"

    const-string v13, "com.meizu.netcontactservice"

    const-string v14, "com.meizu.assistant"

    const-string v15, "com.meizu.sceneinfo"

    const-string v16, "com.tencent.wework"

    const-string v17, "com.meizu.mstore"

    const-string v18, "com.meizu.flyme.alphatravel"

    const-string v19, "com.meizu.testdev.smarttraveler"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ConfigCloud;->HEADS_UP_WHITE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "notification_policy_cloud.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "flyme.intent.action.notification_cloud_file_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/android/server/notification/ConfigCloud$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/ConfigCloud$1;-><init>(Lcom/android/server/notification/ConfigCloud;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFileSafe()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ConfigCloud;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/ConfigCloud;

    .line 33
    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFileSafe()V

    return-void
.end method

.method private addPackageConfig(Landroid/util/ArrayMap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "covered"  # Z
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "value"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    .line 79
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    if-nez v0, :cond_1c

    .line 80
    new-instance v1, Lcom/android/server/notification/ConfigCloud$Record;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$1;)V

    move-object v0, v1

    .line 81
    iput-object p2, v0, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    .line 82
    iput-boolean p3, v0, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    .line 83
    iget-object v1, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 86
    :cond_1c
    iget-object v1, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_21
    return-void
.end method

.method public static isUidSystem(I)Z
    .registers 3
    .param p0, "uid"  # I

    .line 104
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 105
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private loadInitialConfig(Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    sget-object v0, Lcom/android/server/notification/ConfigCloud;->HEADS_UP_WHITE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_25

    aget-object v9, v0, v2

    .line 72
    .local v9, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v7, "headsup"

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ConfigCloud;->addPackageConfig(Landroid/util/ArrayMap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "show_badge"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ConfigCloud;->addPackageConfig(Landroid/util/ArrayMap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v9  # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    :cond_25
    return-void
.end method

.method private loadPolicyFile()V
    .registers 14

    .line 129
    const-string v0, "covered"

    const-string/jumbo v1, "name"

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 130
    .local v2, "tempMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    invoke-direct {p0, v2}, Lcom/android/server/notification/ConfigCloud;->loadInitialConfig(Landroid/util/ArrayMap;)V

    .line 132
    :try_start_d
    iget-object v3, p0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 134
    iget-object v3, p0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    .line 135
    .local v3, "stream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_2c} :catch_b9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2c} :catch_ac

    .line 137
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2c
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    :cond_35
    :goto_35
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a3

    .line 141
    const/4 v5, 0x2

    if-ne v6, v5, :cond_35

    .line 142
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 144
    new-instance v7, Lcom/android/server/notification/ConfigCloud$Record;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$1;)V

    .line 145
    .local v7, "record":Lcom/android/server/notification/ConfigCloud$Record;
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v7, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    .line 146
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .line 147
    .local v9, "count":I
    invoke-interface {v4, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    .line 148
    const-string v10, "1"

    invoke-interface {v4, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    .line 149
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_71
    if-ge v8, v9, :cond_91

    .line 150
    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "attrName":Ljava/lang/String;
    if-eqz v10, :cond_8e

    .line 152
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    .line 153
    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "attrValue":Ljava/lang/String;
    iget-object v12, v7, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v10  # "attrName":Ljava/lang/String;
    .end local v11  # "attrValue":Ljava/lang/String;
    :cond_8e
    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 158
    .end local v8  # "i":I
    :cond_91
    iget-object v8, v7, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_a2

    iget-object v8, v7, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a2

    .line 159
    iget-object v8, v7, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_a2} :catch_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_a2} :catch_b9
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_a2} :catch_ac

    .line 161
    .end local v7  # "record":Lcom/android/server/notification/ConfigCloud$Record;
    .end local v9  # "count":I
    :cond_a2
    goto :goto_35

    .line 167
    .end local v5  # "tag":Ljava/lang/String;
    .end local v6  # "type":I
    :cond_a3
    goto :goto_a8

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 168
    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_ab} :catch_b9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_ac

    goto :goto_c5

    .line 173
    .end local v3  # "stream":Ljava/io/InputStream;
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_ac
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "notification_policy_cloud read err"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    .line 170
    .end local v0  # "e":Ljava/io/IOException;
    :catch_b9
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "notification_policy_cloud is not exits"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 176
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :cond_c5
    :goto_c5
    nop

    .line 177
    :goto_c6
    iput-object v2, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    .line 178
    return-void
.end method

.method private loadPolicyFileSafe()V
    .registers 4

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFile()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 125
    goto :goto_d

    .line 123
    :catchall_4
    move-exception v0

    .line 124
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadPolicyFile err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_d
    return-void
.end method


# virtual methods
.method public getPackageBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "def"  # Z

    .line 109
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    .line 111
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    iget-object v1, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 113
    .end local v0  # "record":Lcom/android/server/notification/ConfigCloud$Record;
    :cond_1d
    return p3
.end method

.method public getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "def"  # I

    .line 91
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    .line 93
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    iget-object v1, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "value":Ljava/lang/String;
    :try_start_18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1e

    move p3, v2

    .line 98
    goto :goto_22

    .line 96
    :catchall_1e
    move-exception v2

    .line 97
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .end local v0  # "record":Lcom/android/server/notification/ConfigCloud$Record;
    .end local v1  # "value":Ljava/lang/String;
    .end local v2  # "throwable":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    return p3
.end method

.method public isPackageCovered(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    iget-boolean v0, v0, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method
