.class Lcom/android/server/UiModeManagerService$7;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 253
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 257
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 258
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->access$902(Lcom/android/server/UiModeManagerService;Z)Z

    .line 259
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 262
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 262
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 264
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 266
    :cond_3a
    return-void
.end method
