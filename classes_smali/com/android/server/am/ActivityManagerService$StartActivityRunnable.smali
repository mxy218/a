.class final Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartActivityRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 7154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7155
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mContext:Landroid/content/Context;

    .line 7156
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    .line 7157
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    .line 7158
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 7162
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7163
    return-void
.end method