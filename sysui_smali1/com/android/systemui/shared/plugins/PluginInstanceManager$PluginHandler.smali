.class Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/shared/plugins/VersionInfo;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            ")",
            "Lcom/android/systemui/shared/plugins/VersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 410
    new-instance p0, Lcom/android/systemui/shared/plugins/VersionInfo;

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/VersionInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/VersionInfo;

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/VersionInfo;->hasVersionInfo()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 412
    invoke-virtual {p3, p0}, Lcom/android/systemui/shared/plugins/VersionInfo;->checkVersion(Lcom/android/systemui/shared/plugins/VersionInfo;)V

    return-object p0

    .line 414
    :cond_12
    invoke-interface {p2}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result p0

    .line 415
    invoke-virtual {p3}, Lcom/android/systemui/shared/plugins/VersionInfo;->getDefaultVersion()I

    move-result p1

    if-ne p0, p1, :cond_1e

    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_1e
    new-instance p0, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;

    const/4 p1, 0x0

    const-string p2, "Invalid legacy version"

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p0
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .registers 6

    .line 297
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$900(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 299
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$800(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple plugins found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$900(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginInstanceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 316
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v0

    if-nez v0, :cond_6b

    goto :goto_4b

    .line 322
    :cond_6b
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    iget-object v2, v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4b

    :cond_7c
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1100(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Z

    move-result v0

    const-string v1, "PluginInstanceManager"

    const/4 v2, 0x0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1200(Lcom/android/systemui/shared/plugins/PluginInstanceManager;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin cannot be loaded on production build: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 335
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$600(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_39

    return-object v2

    .line 339
    :cond_39
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 342
    :try_start_41
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.systemui.permission.PLUGIN"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6f

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Plugin doesn\'t have permission: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 350
    :cond_6f
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$600(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 351
    new-instance v7, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginContextWrapper;

    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 352
    invoke-static {v5}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3, v10}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3, v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v11, 0x1

    .line 353
    invoke-static {v9, v11, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/systemui/plugins/Plugin;
    :try_end_94
    .catchall {:try_start_41 .. :try_end_94} :catchall_209

    .line 358
    :try_start_94
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1300(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object v4

    invoke-direct {p0, v3, v12, v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/shared/plugins/VersionInfo;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object v8

    .line 360
    new-instance v13, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    move-object v3, v13

    move-object v4, v0

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/shared/plugins/VersionInfo;)V
    :try_end_a7
    .catch Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException; {:try_start_94 .. :try_end_a7} :catch_a8
    .catchall {:try_start_94 .. :try_end_a7} :catchall_209

    return-object v13

    :catch_a8
    move-exception v3

    .line 362
    :try_start_a9
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tuner"

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 363
    invoke-static {v7}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 364
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "system_notification_accent_color"

    const-string v7, "color"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 366
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v7}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "ALR"

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 368
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 369
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 370
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 371
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 372
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 373
    invoke-static {v6}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4
    :try_end_10b
    .catchall {:try_start_a9 .. :try_end_10b} :catchall_209

    .line 376
    :try_start_10b
    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v5}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_123
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_123} :catch_124
    .catchall {:try_start_10b .. :try_end_123} :catchall_209

    goto :goto_125

    :catch_124
    move-object v5, v9

    .line 379
    :goto_125
    :try_start_125
    invoke-virtual {v3}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    move-result v6
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_209

    const-string v7, "Plugin \""

    if-nez v6, :cond_15e

    .line 381
    :try_start_12d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" is too old"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact plugin developer to get an updated version.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_18e

    .line 386
    :cond_15e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" is too new"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check to see if an OTA is available.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 390
    :goto_18e
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 390
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 392
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10, p1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 393
    new-instance v3, Landroid/app/Notification$Action$Builder;

    const-string v5, "Disable plugin"

    invoke-direct {v3, v2, v5, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 394
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object p1

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v3, 0x6

    .line 395
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v9, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin has invalid interface version "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 399
    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$1300(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 398
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catchall {:try_start_12d .. :try_end_208} :catchall_209

    return-object v2

    :catchall_209
    move-exception p0

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load plugin: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_42

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_8f

    .line 270
    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1b
    if-ltz v0, :cond_8f

    .line 272
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 273
    iget-object v3, v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 274
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    iget-object v3, v3, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/shared/plugins/PluginInstanceManager$MainHandler;

    iget-object v1, v1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 281
    :cond_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$800(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8f

    .line 284
    :cond_56
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_8f

    .line 257
    :cond_5a
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_61
    if-ltz p1, :cond_86

    .line 258
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;

    .line 259
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->access$700(Lcom/android/systemui/shared/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    .line 260
    iget-object v0, v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_83

    .line 263
    check-cast v0, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    :cond_83
    add-int/lit8 p1, p1, -0x1

    goto :goto_61

    .line 266
    :cond_86
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return-void
.end method
