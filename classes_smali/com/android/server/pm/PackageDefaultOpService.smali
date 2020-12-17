.class public Lcom/android/server/pm/PackageDefaultOpService;
.super Ljava/lang/Object;
.source "PackageDefaultOpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDefaultOpService$Op;
    }
.end annotation


# static fields
.field public static final MAX_VERSION:I = 0x7fffffff

.field public static final TAG:Ljava/lang/String; = "PackageDefaultOp"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field public mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageDefaultOpService$Op;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackageList:Ljava/util/ArrayList;

    .line 57
    const-string v0, "PackageDefaultOp"

    const-string v1, "PackageDefaultOpService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/PackageDefaultOpService;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "packageops.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    .line 65
    invoke-direct {p0}, Lcom/android/server/pm/PackageDefaultOpService;->readList()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/PackageDefaultOpService;->readState()V

    .line 67
    return-void
.end method

.method private readList()V
    .registers 12

    .line 193
    const-string v0, "PackageDefaultOp"

    const-string/jumbo v1, "readList"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/activate_appslist"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 196
    const-string v2, "/data/system/testlist not exist"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_1b
    const/4 v2, 0x0

    .line 201
    .local v2, "pkgList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 205
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_8a
    .catchall {:try_start_1d .. :try_end_2c} :catchall_88

    move-object v2, v4

    .line 210
    nop

    .line 212
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 214
    :goto_31
    goto :goto_34

    .line 213
    :catch_32
    move-exception v4

    goto :goto_31

    .line 217
    :goto_34
    if-eqz v2, :cond_87

    :try_start_36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_87

    .line 220
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v4, "\\s+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "all":Ljava/lang/String;
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "list":[Ljava/lang/String;
    if-eqz v5, :cond_86

    .line 225
    array-length v6, v5

    const/4 v7, 0x0

    :goto_64
    if-ge v7, v6, :cond_86

    aget-object v8, v5, v7

    .line 226
    .local v8, "pkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v9, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_82} :catch_a1

    .line 225
    nop

    .end local v8  # "pkg":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 232
    .end local v2  # "pkgList":Ljava/lang/String;
    .end local v3  # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4  # "all":Ljava/lang/String;
    .end local v5  # "list":[Ljava/lang/String;
    :cond_86
    goto :goto_b7

    .line 218
    .restart local v2  # "pkgList":Ljava/lang/String;
    .restart local v3  # "bufferedReader":Ljava/io/BufferedReader;
    :cond_87
    :goto_87
    return-void

    .line 210
    :catchall_88
    move-exception v4

    goto :goto_98

    .line 206
    :catch_8a
    move-exception v4

    .line 207
    .local v4, "e":Ljava/io/IOException;
    :try_start_8b
    const-string v5, "Error reading data file"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_88

    .line 210
    if-eqz v3, :cond_97

    .line 212
    :try_start_92
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    .line 214
    goto :goto_97

    .line 213
    :catch_96
    move-exception v0

    .line 208
    :cond_97
    :goto_97
    return-void

    .line 210
    .end local v4  # "e":Ljava/io/IOException;
    :goto_98
    if-eqz v3, :cond_9f

    .line 212
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 214
    goto :goto_9f

    .line 213
    :catch_9e
    move-exception v5

    .line 214
    :cond_9f
    :goto_9f
    nop

    .end local v1  # "file":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :try_start_a0
    throw v4
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_a1

    .line 230
    .end local v2  # "pkgList":Ljava/lang/String;
    .end local v3  # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1  # "file":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :catch_a1
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePermissionsLPw ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_b7
    return-void
.end method


# virtual methods
.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 140
    return-void

    .line 142
    :cond_11
    const-string/jumbo v2, "uid"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, "uid":I
    const-string/jumbo v2, "oldVersion"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 144
    .local v9, "oldVersion":I
    const-string/jumbo v2, "newVersion"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 145
    .local v10, "newVersion":I
    const-string v2, "activate"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 146
    .local v0, "activate":Z
    new-instance v11, Lcom/android/server/pm/PackageDefaultOpService$Op;

    move-object v2, v11

    move v3, v8

    move-object v4, v1

    move v5, v9

    move v6, v10

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDefaultOpService$Op;-><init>(ILjava/lang/String;IIZ)V

    .line 147
    .local v2, "op":Lcom/android/server/pm/PackageDefaultOpService$Op;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readPackage add :  uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageDefaultOp"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method readState()V
    .registers 12

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 71
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_196

    .line 74
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_16f
    .catchall {:try_start_4 .. :try_end_a} :catchall_16d

    .line 78
    .local v1, "stream":Ljava/io/FileInputStream;
    nop

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "success":Z
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 82
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    :goto_14
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_20

    if-eq v5, v6, :cond_20

    goto :goto_14

    .line 89
    :cond_20
    if-ne v5, v7, :cond_7b

    .line 93
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 94
    .local v4, "outerDepth":I
    :cond_26
    :goto_26
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_6b

    const/4 v7, 0x3

    if-ne v5, v7, :cond_36

    .line 95
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_6b

    .line 96
    :cond_36
    if-eq v5, v7, :cond_26

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3c

    .line 97
    goto :goto_26

    .line 100
    :cond_3c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "pkg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageDefaultOpService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6a

    .line 104
    :cond_4d
    const-string v8, "PackageDefaultOp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_6a} :catch_138
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_6a} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_6a} :catch_f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_6a} :catch_cd
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6a} :catch_aa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_6a} :catch_87
    .catchall {:try_start_c .. :try_end_6a} :catchall_84

    .line 108
    .end local v7  # "tagName":Ljava/lang/String;
    :goto_6a
    goto :goto_26

    .line 109
    :cond_6b
    const/4 v2, 0x1

    .line 123
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "outerDepth":I
    .end local v5  # "type":I
    if-nez v2, :cond_73

    .line 124
    :try_start_6e
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_16d

    .line 127
    :cond_73
    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_78
    .catchall {:try_start_73 .. :try_end_76} :catchall_16d

    .line 129
    :goto_76
    goto/16 :goto_15c

    .line 128
    :catch_78
    move-exception v3

    .line 130
    goto/16 :goto_15c

    .line 90
    .restart local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5  # "type":I
    :cond_7b
    :try_start_7b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    .end local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    throw v4
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_84} :catch_138
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_84} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_84} :catch_f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_84} :catch_cd
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_84} :catch_aa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_84} :catch_87
    .catchall {:try_start_7b .. :try_end_84} :catchall_84

    .line 123
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "type":I
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    .restart local v2  # "success":Z
    .restart local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :catchall_84
    move-exception v3

    goto/16 :goto_15f

    .line 120
    :catch_87
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_88
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_88 .. :try_end_9e} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v2, :cond_a6

    .line 124
    :try_start_a1
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_16d

    .line 127
    :cond_a6
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_78
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_16d

    goto :goto_76

    .line 118
    :catch_aa
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    :try_start_ab
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Ljava/io/IOException;
    if-nez v2, :cond_c9

    .line 124
    :try_start_c4
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_c9
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_16d

    .line 127
    :cond_c9
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_78
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_16d

    goto :goto_76

    .line 116
    :catch_cd
    move-exception v3

    .line 117
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ce
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_ce .. :try_end_e4} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v2, :cond_ec

    .line 124
    :try_start_e7
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_16d

    .line 127
    :cond_ec
    :try_start_ec
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_78
    .catchall {:try_start_ec .. :try_end_ef} :catchall_16d

    goto :goto_76

    .line 114
    :catch_f0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_f1
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_f1 .. :try_end_107} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Ljava/lang/NumberFormatException;
    if-nez v2, :cond_10f

    .line 124
    :try_start_10a
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_16d

    .line 127
    :cond_10f
    :try_start_10f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_78
    .catchall {:try_start_10f .. :try_end_112} :catchall_16d

    goto/16 :goto_76

    .line 112
    :catch_114
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_115
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catchall {:try_start_115 .. :try_end_12b} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Ljava/lang/NullPointerException;
    if-nez v2, :cond_133

    .line 124
    :try_start_12e
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_133
    .catchall {:try_start_12e .. :try_end_133} :catchall_16d

    .line 127
    :cond_133
    :try_start_133
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_78
    .catchall {:try_start_133 .. :try_end_136} :catchall_16d

    goto/16 :goto_76

    .line 110
    :catch_138
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_139
    const-string v4, "PackageDefaultOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_139 .. :try_end_14f} :catchall_84

    .line 123
    nop

    .end local v3  # "e":Ljava/lang/IllegalStateException;
    if-nez v2, :cond_157

    .line 124
    :try_start_152
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_157
    .catchall {:try_start_152 .. :try_end_157} :catchall_16d

    .line 127
    :cond_157
    :try_start_157
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_78
    .catchall {:try_start_157 .. :try_end_15a} :catchall_16d

    goto/16 :goto_76

    .line 131
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    :goto_15c
    :try_start_15c
    monitor-exit p0
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_16d

    .line 132
    :try_start_15d
    monitor-exit v0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_196

    .line 133
    return-void

    .line 123
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    .restart local v2  # "success":Z
    :goto_15f
    if-nez v2, :cond_166

    .line 124
    :try_start_161
    iget-object v4, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_166
    .catchall {:try_start_161 .. :try_end_166} :catchall_16d

    .line 127
    :cond_166
    :try_start_166
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_16a
    .catchall {:try_start_166 .. :try_end_169} :catchall_16d

    .line 129
    goto :goto_16b

    .line 128
    :catch_16a
    move-exception v4

    .line 129
    :goto_16b
    nop

    .end local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :try_start_16c
    throw v3

    .line 131
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    .restart local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :catchall_16d
    move-exception v1

    goto :goto_194

    .line 75
    :catch_16f
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "PackageDefaultOp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing app ops "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit p0
    :try_end_192
    .catchall {:try_start_16c .. :try_end_192} :catchall_16d

    :try_start_192
    monitor-exit v0
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_196

    return-void

    .line 131
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    :goto_194
    :try_start_194
    monitor-exit p0
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_16d

    .end local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :try_start_195
    throw v1

    .line 132
    .restart local p0  # "this":Lcom/android/server/pm/PackageDefaultOpService;
    :catchall_196
    move-exception v1

    monitor-exit v0
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_196

    throw v1
.end method

.method writeState()V
    .registers 10

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_e1
    .catchall {:try_start_3 .. :try_end_9} :catchall_df

    .line 160
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 163
    :try_start_a
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 164
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 165
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 166
    const-string/jumbo v3, "pakcages-ops"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageDefaultOpService$Op;

    .line 169
    .local v5, "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    const-string/jumbo v6, "pkg"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string/jumbo v6, "name"

    iget-object v7, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const-string/jumbo v6, "uid"

    iget v7, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const-string/jumbo v6, "oldVersion"

    iget v7, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->oldVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string/jumbo v6, "newVersion"

    iget v7, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const-string v6, "activate"

    iget-boolean v7, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->activate:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    const-string/jumbo v6, "pkg"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v6, "PackageDefaultOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeState write : pkgname : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " oldVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->oldVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " newVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " activate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/pm/PackageDefaultOpService$Op;->activate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    nop

    .end local v5  # "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    goto/16 :goto_2e

    .line 182
    :cond_c1
    const-string/jumbo v3, "pakcages-ops"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 184
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_cf} :catch_d0
    .catchall {:try_start_a .. :try_end_cf} :catchall_df

    .line 188
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_dd

    .line 185
    :catch_d0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    :try_start_d1
    const-string v3, "PackageDefaultOp"

    const-string v4, "Failed to write state, restoring backup."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    iget-object v3, p0, Lcom/android/server/pm/PackageDefaultOpService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 189
    .end local v1  # "stream":Ljava/io/FileOutputStream;
    .end local v2  # "e":Ljava/io/IOException;
    :goto_dd
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_df
    move-exception v1

    goto :goto_fa

    .line 157
    :catch_e1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PackageDefaultOp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0

    return-void

    .line 189
    .end local v1  # "e":Ljava/io/IOException;
    :goto_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_d1 .. :try_end_fb} :catchall_df

    throw v1
.end method
