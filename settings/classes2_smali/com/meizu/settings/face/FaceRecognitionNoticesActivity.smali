.class public Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "FaceRecognitionNoticesActivity.java"


# static fields
.field private static TAG:Ljava/lang/String; = "FaceRecognitionNoticesActivity"


# instance fields
.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity$1;-><init>(Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerScreenOffReceiver()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 30
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f0d01eb

    .line 34
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->registerScreenOffReceiver()V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "entering_cautious"

    const/4 v1, 0x0

    .line 42
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    sget-object v1, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;->unregisterScreenOffReceiver()V

    .line 67
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 48
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method
