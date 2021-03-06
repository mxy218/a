.class final Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FontScaleSettingObserver"
.end annotation


# instance fields
.field private final mFontScaleUri:Landroid/net/Uri;

.field private final mHideErrorDialogsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 678
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 679
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 675
    const-string v0, "font_scale"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    .line 676
    const-string v0, "hide_error_dialogs"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    .line 680
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 681
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 682
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 684
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;
    .param p3, "userId"  # I

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_34

    .line 690
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 692
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V

    .line 693
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_34

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 695
    :cond_34
    :goto_34
    return-void
.end method
