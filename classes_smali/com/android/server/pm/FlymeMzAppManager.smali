.class public Lcom/android/server/pm/FlymeMzAppManager;
.super Ljava/lang/Object;
.source "FlymeMzAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    }
.end annotation


# static fields
.field private static final ATTR_FACTORY_PATH:Ljava/lang/String; = "codepath"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "installed"

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "name"

.field private static final CONFIG_NAME:Ljava/lang/String; = "flyme_mz_app.xml"

.field private static final TAG:Ljava/lang/String; = "FlymeMzAppManager"

.field private static final TAG_MZ_APP:Ljava/lang/String; = "mzapp"


# instance fields
.field private mConfigFile:Ljava/io/File;

.field private mMzAppInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mSystemDir:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/FlymeMzAppManager;->mSystemDir:Ljava/io/File;

    const-string v2, "flyme_mz_app.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mConfigFile:Ljava/io/File;

    .line 45
    return-void
.end method


# virtual methods
.method getMzAppCodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 172
    .local v0, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    if-eqz v0, :cond_d

    .line 173
    iget-object v1, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->factoryCodePath:Ljava/lang/String;

    return-object v1

    .line 175
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isMzAppInstalled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 151
    .local v0, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    if-nez v0, :cond_23

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMzAppInstalled no pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeMzAppManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_23
    iget-boolean v1, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->installed:Z

    return v1
.end method

.method readConfig()V
    .registers 12

    .line 48
    const-string v0, "Error reading config file"

    iget-object v1, p0, Lcom/android/server/pm/FlymeMzAppManager;->mConfigFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "FlymeMzAppManager"

    if-nez v1, :cond_13

    .line 49
    const-string/jumbo v0, "readConfig config not exist"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 52
    :cond_13
    const-string/jumbo v1, "readConfig start"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 55
    :try_start_1e
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/FlymeMzAppManager;->mConfigFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v1, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 57
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    :goto_32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3e

    if-eq v5, v6, :cond_3e

    goto :goto_32

    .line 65
    :cond_3e
    if-eq v5, v7, :cond_46

    .line 66
    const-string v4, "No start tag found in config file"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_46
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 71
    .local v4, "outerDepth":I
    :cond_4a
    :goto_4a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_9d

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5a

    .line 72
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_9d

    .line 73
    :cond_5a
    if-eq v5, v7, :cond_4a

    const/4 v7, 0x4

    if-ne v5, v7, :cond_60

    .line 74
    goto :goto_4a

    .line 77
    :cond_60
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "mzapp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 79
    const-string/jumbo v8, "name"

    invoke-static {v3, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 82
    .local v9, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    if-nez v9, :cond_8b

    .line 83
    new-instance v10, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    invoke-direct {v10}, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;-><init>()V

    move-object v9, v10

    .line 84
    iput-object v8, v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->pkg:Ljava/lang/String;

    .line 85
    iget-object v10, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_8b
    const-string v10, "codepath"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->factoryCodePath:Ljava/lang/String;

    .line 88
    const-string/jumbo v10, "installed"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->installed:Z

    .line 90
    .end local v7  # "tagName":Ljava/lang/String;
    .end local v8  # "pkg":Ljava/lang/String;
    .end local v9  # "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    :cond_9c
    goto :goto_4a

    .line 91
    :cond_9d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_a0} :catch_a6
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_a0} :catch_a1

    .end local v1  # "str":Ljava/io/FileInputStream;
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "outerDepth":I
    .end local v5  # "type":I
    goto :goto_aa

    .line 94
    :catch_a1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    .line 92
    .end local v1  # "e":Ljava/io/IOException;
    :catch_a6
    move-exception v1

    .line 93
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_aa
    nop

    .line 98
    :goto_ab
    return-void
.end method

.method public setMzAppInstalled(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "installed"  # Z

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 142
    .local v0, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    if-nez v0, :cond_22

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMzAppInstalled no pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeMzAppManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_22
    iput-boolean p2, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->installed:Z

    .line 147
    return-void
.end method

.method updateMzAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "codePath"  # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 160
    .local v0, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    if-nez v0, :cond_31

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMzAppInfo no pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeMzAppManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    invoke-direct {v1}, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;-><init>()V

    move-object v0, v1

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->installed:Z

    .line 164
    iput-object p1, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->pkg:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_31
    iput-object p2, v0, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->factoryCodePath:Ljava/lang/String;

    .line 168
    return-void
.end method

.method writeConfig()V
    .registers 13

    .line 101
    const-string/jumbo v0, "mzapp"

    const-string/jumbo v1, "packages"

    const-string v2, "FlymeMzAppManager"

    const-string/jumbo v3, "writeConfig start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/pm/FlymeMzAppManager;->mConfigFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v3, "fstr":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v4, "str":Ljava/io/BufferedOutputStream;
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/16 v6, 0x1a4

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 107
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 108
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 109
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 112
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_44
    iget-object v7, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_7b

    .line 114
    iget-object v7, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    .local v7, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/FlymeMzAppManager;->mMzAppInfos:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;

    .line 117
    .local v9, "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string/jumbo v10, "name"

    invoke-static {v5, v10, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 119
    const-string v10, "codepath"

    iget-object v11, v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->factoryCodePath:Ljava/lang/String;

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 120
    const-string/jumbo v10, "installed"

    iget-boolean v11, v9, Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;->installed:Z

    invoke-static {v5, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 121
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    nop

    .end local v7  # "pkg":Ljava/lang/String;
    .end local v9  # "info":Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 123
    .end local v6  # "i":I
    :cond_7b
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 127
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 128
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 129
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8a} :catch_8b

    .line 132
    .end local v3  # "fstr":Ljava/io/FileOutputStream;
    .end local v4  # "str":Ljava/io/BufferedOutputStream;
    .end local v5  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_91

    .line 130
    :catch_8b
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unable to write flyme_mz_app"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0  # "e":Ljava/io/IOException;
    :goto_91
    return-void
.end method
