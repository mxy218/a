.class Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field private static final ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field private static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field private static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field private static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field private final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageList:Landroid/content/pm/PackageList;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 4

    .line 94
    sget-object v0, Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OuObUsm0bB9g5X0kIXYkBYHvodY;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;Ljava/util/function/IntFunction;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityStackSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    .line 100
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 101
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 102
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 103
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getLaunchParamFolder(I)Ljava/io/File;
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 304
    new-instance v0, Ljava/io/File;

    const-string v1, "launch_params"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 5

    .line 297
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    .line 298
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 299
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xml"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$removeRecordForPackage$0(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 2

    .line 289
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->access$600(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadLaunchParams(I)V
    .registers 18

    .line 119
    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "LaunchParamsPersister"

    if-nez v4, :cond_2a

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t find launch param folder for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_2a
    new-instance v4, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Landroid/content/pm/PackageList;

    invoke-virtual {v6}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 129
    new-instance v6, Landroid/util/ArrayMap;

    array-length v7, v3

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 131
    iget-object v7, v1, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    array-length v7, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_47
    const/4 v0, 0x1

    const/4 v10, 0x0

    if-ge v9, v7, :cond_160

    aget-object v11, v3, v9

    .line 134
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_6d

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not a file."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto/16 :goto_157

    .line 138
    :cond_6d
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_96

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected params file name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    goto/16 :goto_157

    .line 143
    :cond_96
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 144
    nop

    .line 146
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v14, v13

    .line 144
    invoke-virtual {v12, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5f

    const/16 v15, 0x2f

    .line 147
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 148
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 150
    if-nez v13, :cond_cf

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected file name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    goto/16 :goto_157

    .line 156
    :cond_cf
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_de

    .line 159
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    goto/16 :goto_157

    .line 163
    :cond_de
    nop

    .line 165
    :try_start_df
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e9} :catch_13b
    .catchall {:try_start_df .. :try_end_e9} :catchall_138

    .line 166
    :try_start_e9
    new-instance v14, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {v14, v1, v10}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    .line 167
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 168
    invoke-interface {v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 170
    :goto_f5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v0, :cond_12c

    const/4 v8, 0x3

    if-eq v15, v8, :cond_12c

    .line 172
    const/4 v8, 0x2

    if-eq v15, v8, :cond_103

    .line 173
    const/4 v8, 0x0

    goto :goto_f5

    .line 176
    :cond_103
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string v15, "launch_params"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_126

    .line 178
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected tag name: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    const/4 v8, 0x0

    goto :goto_f5

    .line 182
    :cond_126
    invoke-virtual {v14, v10}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 183
    const/4 v0, 0x1

    const/4 v8, 0x0

    goto :goto_f5

    .line 185
    :cond_12c
    invoke-virtual {v6, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_12f} :catch_135
    .catchall {:try_start_e9 .. :try_end_12f} :catchall_133

    .line 190
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_156

    :catchall_133
    move-exception v0

    goto :goto_15c

    .line 186
    :catch_135
    move-exception v0

    move-object v10, v12

    goto :goto_13c

    .line 190
    :catchall_138
    move-exception v0

    move-object v12, v10

    goto :goto_15c

    .line 186
    :catch_13b
    move-exception v0

    .line 187
    :goto_13c
    :try_start_13c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to restore launch params for "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catchall {:try_start_13c .. :try_end_153} :catchall_138

    .line 190
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 191
    :goto_156
    nop

    .line 133
    :goto_157
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto/16 :goto_47

    .line 190
    :goto_15c
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 194
    :cond_160
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_171

    .line 195
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    invoke-direct {v3, v1, v2, v10}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 197
    :cond_171
    return-void
.end method

.method private saveTaskToLaunchParam(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 8

    .line 224
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 225
    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 226
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 227
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 228
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 229
    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 231
    iget-object v1, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v3, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 232
    const/4 v3, 0x1

    xor-int/2addr v1, v3

    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 234
    iget v2, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v2, v4, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    or-int/2addr v1, v2

    .line 235
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    iput v0, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 237
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4e

    .line 238
    iget-object v0, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 239
    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5c

    .line 241
    :cond_4e
    iget-object p1, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    or-int v0, v1, p1

    .line 242
    iget-object p1, p2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 245
    :goto_5c
    return v0
.end method


# virtual methods
.method getLaunchParams(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 5

    .line 249
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_7

    :cond_5
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 250
    :goto_7
    if-eqz p1, :cond_c

    iget p1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    goto :goto_e

    :cond_c
    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 252
    :goto_e
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 253
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 254
    if-nez p1, :cond_1c

    .line 255
    return-void

    .line 257
    :cond_1c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 259
    if-nez p1, :cond_25

    .line 260
    return-void

    .line 263
    :cond_25
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(Ljava/lang/String;)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    .line 265
    if-eqz p2, :cond_35

    .line 266
    iget p2, p2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput p2, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 268
    :cond_35
    iget p2, p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput p2, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 269
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 270
    return-void
.end method

.method onCleanupUser(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    return-void
.end method

.method onSystemReady()V
    .registers 4

    .line 106
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 107
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Landroid/content/pm/PackageList;

    .line 108
    return-void
.end method

.method onUnlockUser(I)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    .line 112
    return-void
.end method

.method removeRecordForPackage(Ljava/lang/String;)V
    .registers 9

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_48

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 276
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v2

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 278
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_26
    if-ltz v5, :cond_45

    .line 279
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 280
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 281
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 282
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_42
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 274
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 287
    :cond_48
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 288
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Rc1cXPLhXa2WPSr18Q9-Xc7SdV8;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$Rc1cXPLhXa2WPSr18Q9-Xc7SdV8;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 292
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_64
    move-exception p1

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_64

    throw p1
.end method

.method saveTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 9

    .line 200
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 201
    iget v2, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 204
    if-nez v0, :cond_18

    .line 205
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    :cond_18
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 210
    if-nez v1, :cond_2b

    .line 211
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    .line 212
    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    goto :goto_2c

    .line 210
    :cond_2b
    move-object v4, v1

    .line 214
    :goto_2c
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result p1

    .line 216
    if-eqz p1, :cond_40

    .line 217
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v6, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$1;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 221
    :cond_40
    return-void
.end method
