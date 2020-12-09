.class final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .registers 3

    .line 1956
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 1957
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1958
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 1962
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 1963
    return-void
.end method
