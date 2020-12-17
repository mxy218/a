.class Lcom/android/server/pm/UserManagerService$5;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/pm/UserManagerService;

    .line 3049
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$5;->val$userHandle:I

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 3062
    return-void
.end method

.method public userStopped(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 3052
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    .line 3054
    iget v0, p0, Lcom/android/server/pm/UserManagerService$5;->val$userHandle:I

    invoke-static {v0}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3056
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    .line 3059
    :cond_10
    return-void
.end method
