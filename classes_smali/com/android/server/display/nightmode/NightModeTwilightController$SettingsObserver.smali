.class final Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NightModeTwilightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nightmode/NightModeTwilightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nightmode/NightModeTwilightController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/nightmode/NightModeTwilightController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;->this$0:Lcom/android/server/display/nightmode/NightModeTwilightController;

    .line 44
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 49
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;->this$0:Lcom/android/server/display/nightmode/NightModeTwilightController;

    invoke-static {v0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->access$000(Lcom/android/server/display/nightmode/NightModeTwilightController;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;->this$0:Lcom/android/server/display/nightmode/NightModeTwilightController;

    invoke-static {v0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->access$100(Lcom/android/server/display/nightmode/NightModeTwilightController;)V

    .line 52
    :cond_11
    return-void
.end method
