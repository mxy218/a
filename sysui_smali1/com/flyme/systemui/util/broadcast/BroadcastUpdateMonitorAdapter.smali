.class public Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorAdapter;
.super Ljava/lang/Object;
.source "BroadcastUpdateMonitorAdapter.java"

# interfaces
.implements Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorCallback;
.implements Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlymeLockscreenWallpaperChanged()V
    .registers 1

    return-void
.end method

.method public onWallpaperMaskChanged(Z)V
    .registers 2

    return-void
.end method
