.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "WifiSignalCallback"
.end annotation


# instance fields
.field final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string p2, "dual_wifi"

    .line 381
    invoke-virtual {p2, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 383
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "onWifiSignalChanged enabled="

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p9, "WifiTile"

    invoke-static {p9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 385
    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 386
    iget p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 387
    iput-object p6, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 388
    iput-boolean p4, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 389
    iput-boolean p5, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 390
    iget-object p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 391
    iput-boolean p7, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 392
    iput-object p8, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    .line 393
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$000(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 394
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$200(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 396
    :cond_4a
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
