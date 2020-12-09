.class final Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .registers 3

    .line 1278
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1279
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1276
    const-string/jumbo p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 1280
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .line 1283
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1286
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 1290
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1291
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 3

    .line 1294
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1295
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p1, p1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq p1, v0, :cond_26

    .line 1296
    sget-boolean p1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p1, :cond_1f

    const-string p1, "ZenModeHelper"

    const-string v0, "Fixing zen mode setting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_1f
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, p1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 1300
    :cond_26
    return-void
.end method
