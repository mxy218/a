.class public Lcom/android/server/pm/ModuleInfoProvider;
.super Ljava/lang/Object;
.source "ModuleInfoProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final MODULE_METADATA_KEY:Ljava/lang/String; = "android.content.pm.MODULE_METADATA"

.field private static final TAG:Ljava/lang/String; = "PackageManager.ModuleInfoProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mMetadataLoaded:Z

.field private final mModuleInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private volatile mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 72
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    .line 81
    return-void
.end method

.method private loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .registers 9

    .line 125
    const-string v0, "PackageManager.ModuleInfoProvider"

    const/4 v1, 0x1

    :try_start_3
    const-string/jumbo v2, "module-metadata"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 127
    :goto_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_13

    .line 129
    goto :goto_3e

    .line 132
    :cond_13
    const-string/jumbo v2, "module"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected metadata element: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3d} :catch_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3d} :catch_7b
    .catchall {:try_start_3 .. :try_end_3d} :catchall_79

    .line 135
    nop

    .line 160
    :goto_3e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 162
    goto :goto_87

    .line 143
    :cond_44
    const/4 v2, 0x0

    :try_start_45
    const-string/jumbo v3, "name"

    .line 144
    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "packageName"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string v4, "isHidden"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 149
    new-instance v5, Landroid/content/pm/ModuleInfo;

    invoke-direct {v5}, Landroid/content/pm/ModuleInfo;-><init>()V

    .line 150
    invoke-virtual {v5, v4}, Landroid/content/pm/ModuleInfo;->setHidden(Z)Landroid/content/pm/ModuleInfo;

    .line 151
    invoke-virtual {v5, v3}, Landroid/content/pm/ModuleInfo;->setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;

    .line 152
    invoke-virtual {v5, v2}, Landroid/content/pm/ModuleInfo;->setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;

    .line 154
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_78} :catch_7b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_78} :catch_7b
    .catchall {:try_start_45 .. :try_end_78} :catchall_79

    .line 155
    goto :goto_9

    .line 160
    :catchall_79
    move-exception p2

    goto :goto_88

    .line 156
    :catch_7b
    move-exception p2

    .line 157
    :try_start_7c
    const-string v2, "Error parsing module metadata"

    invoke-static {v0, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_79

    goto :goto_3e

    .line 163
    :goto_87
    return-void

    .line 160
    :goto_88
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    iput-boolean v1, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    throw p2
.end method


# virtual methods
.method getInstalledModules(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_5b

    .line 175
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_15

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 181
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x40000000  # 2.0f

    or-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_4e

    .line 186
    nop

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 190
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ModuleInfo;

    .line 191
    if-eqz v1, :cond_4c

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4c
    goto :goto_31

    .line 195
    :cond_4d
    return-object v0

    .line 183
    :catch_4e
    move-exception p1

    .line 184
    const-string v0, "PackageManager.ModuleInfoProvider"

    const-string v1, "Unable to retrieve all package names"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 172
    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getInstalledModules before metadata loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 3

    .line 199
    iget-boolean p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz p2, :cond_d

    .line 203
    iget-object p2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ModuleInfo;

    return-object p1

    .line 200
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call to getModuleInfo before metadata loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getPackageName()Ljava/lang/String;
    .registers 3

    .line 207
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 208
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getVersion before metadata loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PackageManager.ModuleInfoProvider"

    if-eqz v0, :cond_1f

    .line 88
    const-string v0, "No configured module metadata provider."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 95
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_36} :catch_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_36} :catch_49

    .line 103
    nop

    .line 105
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    const-string v2, "android.content.pm.MODULE_METADATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    .line 108
    return-void

    .line 100
    :catch_49
    move-exception v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to discover metadata package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void
.end method
