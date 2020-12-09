.class Lcom/android/server/am/UserController$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$3(Landroid/content/Intent;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;I)V
    .registers 3

    .line 600
    iput-object p1, p0, Lcom/android/server/am/UserController$2;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$2;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finished processing BOOT_COMPLETED for u"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/UserController$2;->val$userId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object p1, p0, Lcom/android/server/am/UserController$2;->this$0:Lcom/android/server/am/UserController;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/am/UserController;->mBootCompleted:Z

    .line 608
    return-void
.end method
