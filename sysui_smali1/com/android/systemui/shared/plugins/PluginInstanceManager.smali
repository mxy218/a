.class public Lcom/android/systemui/shared/plugins/PluginInstanceManager;
.super Ljava/lang/Object;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;,
        Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginContextWrapper;,
        Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;,
        Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mAllowMultiple:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/systemui/plugins/PluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager<",
            "TT;>.MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

.field final mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager<",
            "TT;>.PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;

.field private final mWhitelistedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/shared/plugins/VersionInfo;Lcom/android/systemui/shared/plugins/PluginManagerImpl;Z[Ljava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            "Lcom/android/systemui/shared/plugins/PluginManagerImpl;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mWhitelistedPlugins:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;

    .line 84
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    .line 85
    iput-object p8, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mManager:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    .line 88
    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mAction:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    .line 90
    iput-boolean p5, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mAllowMultiple:Z

    .line 91
    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;

    .line 92
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-static {p10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 93
    iput-boolean p9, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->isDebuggable:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/shared/plugins/VersionInfo;Lcom/android/systemui/shared/plugins/PluginManagerImpl;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            "Lcom/android/systemui/shared/plugins/PluginManagerImpl;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-boolean v9, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 76
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getWhitelistedPlugins()[Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 75
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/shared/plugins/VersionInfo;Lcom/android/systemui/shared/plugins/PluginManagerImpl;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->isDebuggable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/content/ComponentName;)Z
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->isPluginWhitelisted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/PluginManagerImpl;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mManager:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mAllowMultiple:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method private disable(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;I)V
    .registers 5
    .param p2  # I
        .annotation build Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
        .end annotation
    .end param

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->access$300(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->isPluginWhitelisted(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 182
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling plugin "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginInstanceManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mManager:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p0

    invoke-interface {p0, v0, p2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    return-void
.end method

.method private isPluginWhitelisted(Landroid/content/ComponentName;)Z
    .registers 5

    .line 155
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 158
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 162
    :cond_24
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;)Z
    .registers 6

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 138
    iget-object v3, v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x2

    .line 139
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;I)V

    const/4 v1, 0x1

    goto :goto_10

    :cond_2a
    return v1
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 189
    iget-object v2, v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 190
    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->access$400(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->access$400(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/plugins/VersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_45

    const/4 v1, 0x1

    :cond_45
    return v1
.end method

.method public destroy()V
    .registers 5

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 120
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;

    const/4 v3, 0x2

    iget-object v1, v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f

    :cond_28
    return-void
.end method

.method public disableAll()Z
    .registers 6

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->access$100(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 148
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 151
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public loadAll()V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 199
    const-class v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mAction:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s@%s (action=%s)"

    .line 198
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
