.class final Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BlueLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/bluelight/BlueLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/bluelight/BlueLightController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/bluelight/BlueLightController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;->this$0:Lcom/android/server/display/bluelight/BlueLightController;

    .line 42
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 47
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;->this$0:Lcom/android/server/display/bluelight/BlueLightController;

    invoke-static {v0}, Lcom/android/server/display/bluelight/BlueLightController;->access$000(Lcom/android/server/display/bluelight/BlueLightController;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 48
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;->this$0:Lcom/android/server/display/bluelight/BlueLightController;

    invoke-static {v0}, Lcom/android/server/display/bluelight/BlueLightController;->access$100(Lcom/android/server/display/bluelight/BlueLightController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "time_config_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "bluelightTimeConfigMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 51
    iget-object v2, p0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;->this$0:Lcom/android/server/display/bluelight/BlueLightController;

    invoke-static {v2, v1}, Lcom/android/server/display/bluelight/BlueLightController;->access$202(Lcom/android/server/display/bluelight/BlueLightController;Z)Z

    .line 52
    iget-object v1, p0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;->this$0:Lcom/android/server/display/bluelight/BlueLightController;

    invoke-static {v1}, Lcom/android/server/display/bluelight/BlueLightController;->access$300(Lcom/android/server/display/bluelight/BlueLightController;)V

    .line 55
    .end local v0  # "bluelightTimeConfigMode":I
    :cond_2b
    return-void
.end method
