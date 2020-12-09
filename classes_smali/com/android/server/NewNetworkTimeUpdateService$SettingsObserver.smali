.class Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NewNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NewNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .registers 3

    .line 299
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 300
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 301
    iput p2, p0, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->mMsg:I

    .line 302
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .registers 4

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 306
    const-string v0, "auto_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    return-void
.end method

.method public onChange(Z)V
    .registers 3

    .line 312
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->mMsg:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method
