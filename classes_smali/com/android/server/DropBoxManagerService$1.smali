.class Lcom/android/server/DropBoxManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 124
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/DropBoxManagerService;->access$002(Lcom/android/server/DropBoxManagerService;J)J

    .line 129
    new-instance p1, Lcom/android/server/DropBoxManagerService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$1$1;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 138
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$1$1;->start()V

    .line 139
    return-void
.end method
