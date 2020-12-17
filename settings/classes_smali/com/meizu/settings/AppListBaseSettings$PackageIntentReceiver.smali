.class public Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppListBaseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/AppListBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Landroid/content/AsyncTaskLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/AsyncTaskLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;->mLoader:Landroid/content/AsyncTaskLoader;

    .line 161
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;->registerReceiver()V

    return-void
.end method

.method private registerReceiver()V
    .registers 3

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;->mLoader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;->mLoader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 180
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;->mLoader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->onContentChanged()V

    return-void
.end method
