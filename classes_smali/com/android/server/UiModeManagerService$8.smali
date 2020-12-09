.class Lcom/android/server/UiModeManagerService$8;
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

    .line 269
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 272
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$1200(Lcom/android/server/UiModeManagerService;)V

    .line 273
    return-void
.end method
