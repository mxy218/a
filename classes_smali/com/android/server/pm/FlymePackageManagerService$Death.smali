.class Lcom/android/server/pm/FlymePackageManagerService$Death;
.super Ljava/lang/Object;
.source "FlymePackageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FlymePackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Death"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FlymePackageManagerService;

.field token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FlymePackageManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"  # Landroid/os/IBinder;

    .line 215
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->this$0:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->token:Landroid/os/IBinder;

    .line 217
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->this$0:Lcom/android/server/pm/FlymePackageManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 222
    iget-object v0, v0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    const-string v0, "FlymePackageManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method
